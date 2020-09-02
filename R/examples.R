# library(themejj)
# theme_set(themejj(base_size = 6))
# data(mtcars)
# ggplot(mtcars, aes(mpg, wt)) +
#   geom_point(size = 2, 
#              fill="#83AEB2",
#              color="#AEAEB7",
#              alpha = .6) +
#   geom_smooth(method = lm, alpha = .2, color = "black") +
#   labs(title = 'Line Plot', caption = 'Source: mtcars',
#        subtitle="Miles Per Gallon and Weight")
# # ggsave("../img/lineplot.png", w=2, h=2, dpi = 200)
      
#     data(iris)
#     ggplot(iris, aes(Sepal.Length, color = Species)) +
#       geom_density() +
#       scale_color_viridis_d() +
#       labs(title = "Density Plot",
#            caption = 'Source: iris',
#           subtitle="A subtitle")
# ggsave("../img/densityplot.png", w=2, h=2, dpi = 200)

# data(ToothGrowth)
# ToothGrowth$dose <- as.factor(ToothGrowth$dose)
# ggplot(ToothGrowth, aes(dose, len)) +
#   geom_dotplot(binaxis='y', 
#                  stackdir='center', 
#                  dotsize = 1, 
#                  fill="#83AEB2",
#                  color="#AEAEB7",
#                  alpha = .6) +
#     geom_boxplot(alpha = .1, width = .5) + 
#     labs(title="Box plot + Dot plot",
#       caption="Source: ToothGrowth",
#       subtitle="A subtitle")
# ggsave("../img/boxplot.jpg", w = 2, h = 2, dpi = 200)  

# data("midwest", package = "ggplot2")
# ggplot(midwest, aes(x=area, y=poptotal)) + 
#     geom_point(aes(col=state, size=popdensity), alpha = .3) + 
#     geom_smooth(method="loess", se=F, color="black") + 
#     xlim(c(0, 0.1)) + 
#     ylim(c(0, 500000)) + 
#     labs(subtitle="Area versus Population", 
#          y="Population", 
#          x="Area", 
#          title="Scatterplot", 
#          caption = "Source: midwest") +
#     facet_wrap(~state) +
#     scale_color_viridis_d() +
#     themejj(base_size = 8, facet = TRUE)
# ggsave("../img/scatterplot.jpg", w = 5)
