# themejj
ggplot2 theme for publication-ready graphics

# Installation
```R
library(devtools) #maybe install.packages('devtools')
install_github("janajarecki/ggsavejj", force=TRUE)
# You need these two packages
# install.packages(extrafont)
# install.packages(ggplot)
```
# How plots look like
<img src="/img/boxplot.png" width="300px" alt="Boxplot">


# Usage
Plots the first plot shown above
```R
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
```


