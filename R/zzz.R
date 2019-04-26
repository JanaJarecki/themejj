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
    extrafont::font_import(pattern = "RobotoCondensed", prompt = FALSE)
    extrafont::loadfonts(device = "win")
    windowsFonts()
  }
}
