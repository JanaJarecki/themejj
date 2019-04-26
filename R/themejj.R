#' A ggplot theme: simple publication-ready theme
#' @import extrafont ggplot2 scales
#' @param base_size The base size of the font; defaults to 10 pt
#' @param base_family base font family; defaults to "Roboto Condensed". Note: you need to have the Roboto font isntalled and the fontextra package loaded \code{library(fontextra)} and the font installed \library{font_import(pattern="Roboto")} and \code{loadfonts()}. The apckage wil try to fetch the font.
#' @param base_line_size base size for line elements
#' @param base_rect_size base size for rect elements
#' @param facet (optional, default is \code{FALSE}). If \code{TRUE} a rectangle around plotting panel is shown, useful if you use facetting (\code{facet_grid(), facet_wrap()}.
#' @keywords ggplot2, themes, graphics
#' @author Jana B. Jarecki
#' @examples \donttest{
#' see here for more https://github.com/JanaJarecki/themejj/wiki
#' data(mtcars)
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(size = 2, 
#'             fill="#83AEB2",
#'             color="#AEAEB7",
#'             alpha = .6) +
#'   geom_smooth(method = lm, alpha = .2, color = "black") +
#'   labs(title = 'Line Plot', caption = 'Source: mtcars',
#'       subtitle="Miles Per Gallon and Weight")
#' # ggsave("../img/lineplot.jpg", w = 100, h = 100, unit = 'mm')
#'   
#' data(iris)
#' ggplot(iris, aes(Sepal.Length, color = Species)) +
#'   geom_density() +
#'   scale_color_viridis_d() +
#'   labs(caption = 'Source: iris',
#'       subtitle="A subtitle")
#' data("midwest", package = "ggplot2")
#' ggplot(midwest, aes(x=area, y=poptotal)) + 
#'     geom_point(aes(col=state, size=popdensity), alpha = .3) + 
#'     geom_smooth(method="loess", se=F, color="black") + 
#'     xlim(c(0, 0.1)) + 
#'     ylim(c(0, 500000)) + 
#'     labs(subtitle="Area versus Population", 
#'          y="Population", 
#'          x="Area", 
#'          title="Scatterplot", 
#'          caption = "Source: midwest") +
#'     facet_wrap(~state) +
#'     scale_color_viridis_d() +
#'     themejj(facet = TRUE)
#' # see here for more \link[https://github.com/JanaJarecki/themejj/wiki]
#' }
#' @export
themejj <- function(base_size = 10,
                    base_family = "Roboto Condensed",
                    base_line_size = base_size/30,
                    base_rect_size = base_size/30,
                    facet = FALSE) {
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
                                fill = "white"),
    legend.spacing =        unit(half_line/2, 'pt'),
    legend.spacing.x =      NULL,
    legend.spacing.y =      NULL,
    legend.margin =         margin(),
    legend.key =            element_rect(
                                fill = 'transparent',
                                color = "white"),
    legend.key.size =       unit(0.8, 'lines'),
    legend.key.height =     NULL,
    legend.key.width =      NULL,
    legend.text =           element_text(
                                size = rel(0.8),
                                margin = margin(t = half_line/5, unit = 'pt')),
    legend.text.align =     NULL,
    legend.title =          element_text(size = rel(0.8), hjust = 0),
    legend.title.align =    NULL,
    legend.position =       'top',
    legend.direction =      'horizontal',
    legend.justification =  'center',
    legend.box =            'vertical',
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
                                family = base_family, # instead of Roboto Light
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

    complete =              TRUE)
}