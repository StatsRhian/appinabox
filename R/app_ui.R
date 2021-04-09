#' The application User-Interface
#'
#' @param request Internal parameter for `{shiny}`.
#' @noRd
app_ui = function(request) {
  ui = shiny::fluidPage(
    shinyjs::useShinyjs(),
    shiny::titlePanel("Praise"),
    shiny::actionButton("refresh", "Refresh"),
    shiny::textOutput("praise"),
    shiny::imageOutput("cartoon")
  )
}
