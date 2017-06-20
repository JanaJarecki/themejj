#' A ggplot theme I use for publications
#'
#' This function applies a simple publication-ready theme
#' @param base_size The base size of the font; defaults to 12 pt
#' @param base_famile The font family; defaults to "Roboto Light". Note: you need to have the Roboto font isntalled and the fontextra package loaded [library(fontextra)] and the font installed [font_import(pattern="Roboto")] and [loadfonts()]
#' @param facet Show a rectangle around your plotting panel which can be useful if you have multiple facets,t hat is you us facet_grid(), facet_wrap(); defaults to FALSE (i.e., shows only x and y-axis line)
#' @keywords ggplot2, themes, graphics
#' @export
#' @examples
#' themejj()

if(!any(grepl("Roboto", fonts())))
{
    font_import(pattern="Roboto")
    loadfonts()
}
require(ggplot2)

themejj <-
function(base_size = 12, base_family = "Roboto Light", facet = FALSE)
{
    theme(
    line =               element_line(
                            colour = "grey10",
                            size = 0.2,
                            linetype = 1,
                            lineend = "butt"),
    rect =               element_rect(
                            fill = "white",
                            colour = NA,
                            size = 0.2,
                            linetype = 1),
    text =               element_text(
                            family = base_family,
                            face = "plain",
                            colour = "black",
                            size = base_size,
                            hjust = 0.5,
                            vjust = 0.5,
                            angle = 0,
                            lineheight = 0.9,
                            margin = margin(),
                            debug = FALSE),


    axis.line =             element_line(color = "black"),
    axis.line.x =           element_line(color = "black"),
    axis.line.y =           element_line(color = "black"),
    axis.text =             element_text(size = rel(0.6)),
    axis.text.x =           element_text(
                                vjust = .5,
                                hjust = .5,
                                margin = margin(2,0,0,0)),
    axis.text.y =           element_text(
                                vjust = .45,
                                hjust = 1,
                                margin = margin(0,2,0,0)),
    axis.ticks =            element_line(),
    axis.ticks.length =     unit(.15, "lines"),
    axis.title =            element_text(size = rel(0.8)),
    axis.title.x =          element_text(
                                margin = margin(5,0,0,0)),
    axis.title.y =          element_text(
                                angle = 90,
                                vjust = 0,
                                margin=margin(0,10,0,0)),

    legend.background =     element_rect(
                                color=NA,
                                fill = alpha("white",.9)),
    legend.margin =         margin(1,1,1,1, "pt"),
    legend.key =            element_rect(
                                fill = NA,
                                color = "white",
                                size = 5),
    legend.key.size =       unit(.7, "line"),
    legend.key.height =     unit(.7, "line"),
    legend.key.width =      unit(.7, "line"),
    legend.text =           element_text(
                                size = rel(0.6),
                                margin = margin(0,1,0,1, "lines")),
    legend.text.align =     0,
    legend.title =          element_text(size = rel(0.8), hjust = 0),
    legend.title.align =    NULL,
    legend.position =       "bottom",
    legend.direction =      "horizontal",
    legend.justification =  "center",
    legend.box =            NULL,
    legend.box.margin =     margin(.2,.2,.2,.2, "lines"),
    legend.box.spacing =    unit(.2, "lines"),

    panel.background =      element_rect(fill = NA, colour = NA),
    panel.border =          element_rect(fill = NA,
                            colour=ifelse(facet,"grey80",NA)),
    panel.grid.major =      element_blank(),
    panel.grid.minor =      element_blank(),
    panel.spacing =         unit(0.3, "lines"),
    panel.ontop =           TRUE,

    strip.background =      element_rect(fill = NA, colour = NA),
    strip.text =            element_text(size = rel(.8)),
    strip.text.x =          element_text(
                                vjust = .5,
                                margin = margin(.2,.2,.5,.2,"lines")),
    strip.text.y =          element_text(
                                vjust = .7,
                                angle = -90,
                                margin = margin(.2,.2,1,.2,"lines")),
    strip.switch.pad.grid = unit(0.15, "lines"),
    strip.switch.pad.wrap = unit(0.15, "lines"),

    plot.background =       element_rect(colour="white", fill="white"),
    plot.title =            element_text(
                                size = rel(1),
                                family = "Roboto",
                                lineheight =.9,
                                margin = margin(0,0,0,10, "pt")),
    plot.margin =          unit(c(1, 0.3, 0.3, 0.3), "lines"),
   
    aspect.ratio =         NULL, #1/1.618,

    complete =             TRUE
  )
}
