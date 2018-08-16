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
    base_grey_color <- 'grey60'

    theme(
    line =               element_line(
                            color = base_grey_color,
                            size = base_line_size,
                            linetype = 1,
                            lineend = "butt"),
    rect =               element_rect(
                            fill = "transparent",
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
    title =             element_text(
                            family = base_family,
                            size = rel(1),
                            lineheight = 1.2,
                            hjust = 0,
                            margin = margin(),
                            debug = FALSE),


    axis.line =             element_line(),
    axis.line.x =           NULL,
    axis.line.y =           NULL,
    axis.text =             element_text(
                                size = rel(0.8),
                                color = 'black',
                                margin = margin(b = half_line)),
    axis.text.x =           element_text(
                                vjust = 1,
                                margin = margin(t = half_line)),
    axis.text.x.top =       element_text(
                                margin = margin(b = half_line),
                                vjust = 0),
    axis.text.y =           element_text(
                                hjust = 1,
                                margin = margin(r = half_line)),
    axis.text.y.right =     element_text(
                                margin = margin(l = half_line),
                                hjust = 0),
    axis.ticks =            element_line(),
    axis.ticks.length =     unit(-half_line / 3, 'pt'),
    axis.title.x =          element_text(
                                margin = margin(t = half_line / 3),
                                vjust = 1, hjust = 0.5),
    axis.title.x.top =      element_text(
                                margin = margin(b = half_line / 3),
                                vjust = 0, hjust = 0.5),
    axis.title.y =          element_text(
                                angle = 90,
                                vjust = 1, hjust = 0.5,
                                margin = margin(r = half_line / 2)),
    axis.title.y.right =    element_text(
                                angle = -90, 
                                margin = margin(l = half_line / 2),
                                vjust = 0, hjust = 0.5),

    legend.background =     element_rect(
                                color = NA,
                                fill = alpha("white", .9)),
    legend.spacing =        unit(half_line / 2, 'pt'),
    legend.spacing.x =      NULL,
    legend.spacing.y =      NULL,
    legend.margin =         margin(),
    legend.key =            element_rect(
                                fill = 'transparent',
                                color = "white"),
    legend.key.size =       unit(0.8, 'lines'),
    legend.key.height =     NULL,
    legend.key.width =      NULL,
    legend.text =           element_text(size = rel(0.8)),
    legend.text.align =     NULL,
    legend.title =          element_text(size = rel(0.8), hjust = 0),
    legend.title.align =    NULL,
    legend.position =       'top',
    legend.direction =      'horizontal',
    legend.justification =  'center',
    legend.box =            NULL,
    legend.box.margin =     margin(),
    legend.box.spacing =    NULL, #unit(2 * half_line, 'pt'),
    legend.box.background = element_blank(),

    panel.background =      element_blank(),
    panel.border =          element_rect(
                                fill = NA,
                                colour = ifelse(facet, base_grey_color
                                    , NA)),
    panel.grid =            element_blank(),
    panel.grid.major =      NULL,
    panel.grid.minor =      NULL,
    panel.spacing =         unit(half_line / 2, 'pt'),
    panel.spacing.x =       NULL,
    panel.spacing.y =       NULL,
    panel.ontop =           FALSE,

    strip.background =      element_blank(),
    strip.text =            element_text(
                                color = 'black',
                                size = rel(0.8),
                                margin = margin(0.8 * half_line, 0.8 * half_line, 0.8 * half_line, 0.8 * half_line)),
    strip.text.x =          NULL,
    strip.text.y =          element_text(angle = -90),
    strip.placement =       'inside',
    strip.placement.x =     NULL, 
    strip.placement.y =     NULL,
    strip.switch.pad.grid = unit(half_line/2, 'pt'),
    strip.switch.pad.wrap = unit(half_line/2, 'pt'),

    plot.background =       element_rect(colour = 'white', fill = 'white'),
    plot.title =            element_text( # larger font size
                                family = 'Roboto', # instead of Roboto Light
                                size = rel(1.2),
                                hjust = 0,
                                vjust = 1,
                                margin = margin(b = 2 * half_line)),
    plot.subtitle =         element_text( # Regular font size
                                color = base_grey_color,
                                size = rel(1),
                                hjust = 0, 
                                vjust = 1,
                                margin = margin(t = - half_line , b = half_line)),
    plot.caption =          element_text( # small font size
                                size = rel(0.8), 
                                hjust = 1,
                                vjust = 1,
                                margin = margin(t = half_line)), 
    plot.tag =              element_text(
                                size = rel(1.2),
                                hjust = 0.5, 
                                vjust = 0.5),
    plot.tag.position =     "topleft",
    plot.margin =           margin(half_line, half_line, half_line, half_line),
   
    aspect.ratio =          NULL, #1/1.618,

    complete =              TRUE
  )
}
