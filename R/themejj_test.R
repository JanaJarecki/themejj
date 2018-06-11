library(ggplot2)
library(themejj)
theme_set(themejj(base_size = 16))

# ----------------
# The following examples are adapted from
# http://r-statistics.co/Top50-Ggplot2-Visualizations-MasterList-R-Code.html
# ----------------

# Boxplot
# uncomment this to order the x-axis 
# library(data.table)
# mpg <- as.data.table(mpg)
# x.order <- mpg[, median(cty), by = manufacturer][order(V1)]$manufacturer

g <- ggplot(mpg, aes(factor(manufacturer, levels = x.order), cty))
g + geom_dotplot(binaxis='y', 
               stackdir='center', 
               dotsize = .5, 
               fill="#83AEB2",
               color="#AEAEB7",
               alpha = .6) +
  geom_boxplot(alpha = .1) + 
  theme(axis.text.x = element_text(angle=90, hjust = 1, vjust = .5)) + 
  labs(title="Box plot + Dot plot", 
       subtitle="City Mileage vs Class: Each dot represents 1 row in source data",
       caption="Source: mpg",
       x="Class of Vehicle",
       y="City Mileage")

  ggsave('../img/boxplot.png')



# ------------------------------
data("midwest", package = "ggplot2")
# midwest <- read.csv("http://goo.gl/G1K41K")  # bkup data source

# Scatterplot
gg <- ggplot(midwest, aes(x=area, y=poptotal)) + 
  geom_point(aes(col=state, size=popdensity), alpha = .3) + 
  geom_smooth(method="loess", se=F, color="#AEAEB7") + 
  xlim(c(0, 0.1)) + 
  ylim(c(0, 500000)) + 
  labs(subtitle="Area Vs Population", 
       y="Population", 
       x="Area", 
       title="Scatterplot", 
       caption = "Source: midwest") +
  facet_wrap(~state)

plot(gg)
ggsave('../img/scatterplot.png', width = 8)