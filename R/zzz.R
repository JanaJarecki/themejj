# -----------------------------------------------------------------------------
# Functions that are run when loading the package
# -----------------------------------------------------------------------------
.onLoad <- function(libname, pkgname) {
  .default_font <<- "Arial Narrow"
  #   if (Sys.info()[1] == "Linux") {
  #     dir.create('~/.fonts')
  #     file.copy("inst/extdata/fonts/RobotoCondensed-Regular.ttf", "~/.fonts")
  #     system('fc-cache -f ~/.fonts')
  #   }
  # if (Sys.info()[1] == "Windows") {
  #   windowsFonts()
  #   extrafont::loadfonts(device="win")
  #   fontinst <- try(extrafont::font_import(pattern = "roboto", prompt = FALSE), silent = TRUE)
  #   if (inherits("try-error", fontinst)) {
  #     extrafont::font_import(pattern = "ARIALN", prompt = FALSE)
  #     .default_font = "Arial Narrow"
  #   } else {
  #     .default_font <- "Roboto Condensed"
  #   }
  #   extrafont::loadfonts(device = "win", quiet = TRUE)
  #   windowsFonts()
  # }
  require(showtext)
  require(ggplot2)
  font_add_google("Fira Sans Condensed", "fira_sans_condensed")
  ## Automatically use showtext to render text
  showtext_auto()
  .default_font <<- "fira_sans_condensed"
}