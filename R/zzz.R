# -----------------------------------------------------------------------------
# Functions that are run when loading the package
# -----------------------------------------------------------------------------
.onLoad <- function() {
  if( !any(grepl("Roboto Condensed", extrafont::fonts())) )
  {
    extrafont::font_import(pattern="Roboto Condensed")
    pdfFonts <- grDevices::pdfFonts
    extrafont::loadfonts("pdf")
  }
}
