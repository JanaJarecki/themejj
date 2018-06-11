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
![Boxplot](/imag/boxplot.png)
Format: ![Boxplot](url)

# Usage
```R
g <- ggplot(mpg, aes(class, cty))
g + geom_boxplot(varwidth=T) + 
    labs(title="Box plot", 
         subtitle="City Mileage grouped by Class of vehicle",
         caption="Source: mpg",
         x="Class of Vehicle",
         y="City Mileage")
```


