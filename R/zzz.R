# -----------------------------------------------------------------------------
# Functions that are run when loading the package
# -----------------------------------------------------------------------------
.onLoad <- function(libname, pkgname) {
    if (Sys.info()[1] == "Linux") {
      dir.create('~/.fonts')
      file.copy("inst/extdata/fonts/RobotoCondensed-Regular.ttf", "~/.fonts")
      system('fc-cache -f ~/.fonts')
    }
  if (Sys.info()[1] == "Windows") {
    windowsFonts()
    extrafont::loadfonts(device="win")
    fontinst <- try(extrafont::font_import(pattern = "roboto", prompt = FALSE), silent = TRUE)
    if (inherits("try-error", fontinst)) {
      extrafont::font_import(pattern = "ARIALN", prompt = FALSE)
      .default_font = "Arial Narrow"
    } else {
      .default_font <- "Roboto Condensed"
    }
    extrafont::loadfonts(device = "win", quiet = TRUE)
    windowsFonts()
  }
  require(extrafont)
  require(ggplot2)
}