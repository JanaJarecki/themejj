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

require(extrafont)
if(!any(grepl("Roboto", fonts())))
{
    font_import(pattern="Roboto")
    loadfonts(device = 'win')
}
require(ggplot2)

themejj <- function(base_size = 12, base_family = "Roboto Light", base_line_size = base_size/30, base_rect_size = base_size/30, facet = FALSE)
{
    half_line <- base_size/2

    theme(
    line =               element_line(
                            colour = "grey10",
                            size = base_line_size,
                            linetype = 1,
                            lineend = "butt"),
    rect =               element_rect(
                            fill = "white",
                            colour = NA,
                            size = base_rect_size,
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
    axis.line.x =           NULL,
    axis.line.y =           NULL,
    axis.text =             element_text(size = rel(0.6)),
    axis.text.x =           element_text(
                                vjust = 1,
                                hjust = .5,
                                margin = margin(t = 0.8 * half_line/2)),
    axis.text.x.top =       element_text(
                                margin = margin(b = 0.8 * half_line/3),
                                vjust = 0),
    axis.text.y =           element_text(
                                vjust = .45,
                                hjust = 1,
                                margin = margin(r = 0.8 * half_line/3)),
    axis.text.y.right =     element_text(
                                margin = margin(l = 0.8 * half_line/3),
                                hjust = 0),
    axis.ticks =            element_line(),
    axis.ticks.length =     unit(half_line/3, "pt"),
    axis.title =            element_text(size = rel(0.8)),
    axis.title.x =          element_text(
                                margin = margin(t = half_line/3,0,0,0),
                                vjust = 1),
    axis.title.x.top =      element_text(
                                margin = margin(b = half_line/3),
                                vjust = 0),
    axis.title.y =          element_text(
                                angle = 90,
                                vjust = 1,
                                margin=margin(r = half_line/3)),
    axis.title.y.right =    element_text(
                                angle = -90, 
                                margin = margin(l = half_line/3),
                                vjust = 0),

    legend.background =     element_rect(
                                color=NA,
                                fill = alpha("white",.9)),
    legend.spacing =        unit(2 * half_line, "pt"),
    legend.spacing.x =      NULL,
    legend.spacing.y =      NULL,
    legend.margin =         margin(half_line, half_line, half_line, half_line),
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
    legend.text.align =     NULL,
    legend.title =          element_text(size = rel(0.8), hjust = 0),
    legend.title.align =    NULL,
    legend.position =       "top",
    legend.direction =      "horizontal",
    legend.justification =  "center",
    legend.box =            NULL,
    legend.box.margin =     margin(0, 0, 0, 0, "pt"),
    legend.box.spacing =    unit(2 * half_line, "pt"),

    panel.background =      element_rect(fill = NA, colour = NA),
    panel.border =          element_rect(fill = NA,
                            colour=ifelse(facet,"grey80",NA)),
    panel.grid.major =      element_blank(),
    panel.grid.minor =      element_blank(),
    panel.spacing =         unit(0.3, "lines"),
    panel.spacing.x =       NULL,
    panel.spacing.y =       NULL,
    panel.ontop =           TRUE,

    strip.background =      element_rect(fill = NA, colour = NA),
    strip.text =            element_text(
                                size = rel(.8),
                                margin = margin(0.8 * half_line, 0.8 * half_line, 0.8 * half_line, 0.8 * half_line)),
    strip.text.x =          NULL,
    strip.text.y =          element_text(angle = -90),
    strip.placement =       "inside",
    strip.placement.x =     NULL, 
    strip.placement.y =     NULL,
    strip.switch.pad.grid = unit(half_line/2, "pt"),
    strip.switch.pad.wrap = unit(half_line/2, "pt"),

    plot.background =       element_rect(colour="white", fill="white"),
    plot.title =            element_text(
                                size = rel(1),
                                family = "Roboto",
                                lineheight =.9,
                                 margin = margin(b = half_line)),
    plot.subtitle =         element_text(
                                hjust = 0, 
                                vjust = 1,
                                margin = margin(b = half_line)),
    plot.caption =          element_text(
                                size = rel(0.8), 
                                hjust = 1,
                                vjust = 1,
                                margin = margin(t = half_line)), 
    plot.tag =              element_text(
                                size = rel(1.2),
                                hjust = 0.5, 
                                vjust = 0.5),
    plot.tag.position =     "topleft",
    plot.margin =           margin(c(half_line, half_line, half_line, half_line)),
   
    aspect.ratio =          NULL, #1/1.618,

    complete =              TRUE
  )
}
