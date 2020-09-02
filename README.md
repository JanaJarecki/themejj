# themejj
ggplot2 theme for publication-ready graphics

## Requirements
Installation of R and the font "Roboto Condensed", which you get here https://fonts.google.com/specimen/Roboto+Condensed

## Installation
```R
library(devtools) #maybe install.packages('devtools')
install_github("janajarecki/themejj", force=TRUE)
# If this throws errors: You need these two packages
# install.packages(showtext)
# install.packages(ggplot2)
```
## How plots look like
<img src="/img/boxplot.jpg" width="30%" alt="Boxplot"> <img src="/img/lineplot.png" width="30%" alt="Lineplot"> <img src="/img/densityplot.png" width="30%" alt="Densityplot"> <br>
<img src="/img/scatterplot.jpg" width="60%" alt="Scatterplot">



## Usage
```R
library(ggplot2)
library(themejj)
theme_set(themejj())
 ggplot(mtcars, aes(mpg, wt)) +
   geom_point(size = 2, 
              fill="#83AEB2",
              color="#AEAEB7",
              alpha = .6) +
   geom_smooth(method = lm, alpha = .2, color = "black") +
   labs(title = 'Line Plot', caption = 'Source: mtcars',
        subtitle="Miles Per Gallon and Weight")
```

## More Info
See the Wiki.

# Author
Jana B. Jarecki
