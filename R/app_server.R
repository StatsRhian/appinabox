#' The application server-side
#' @param input,output,session Internal parameters for {shiny}.
#' @noRd
app_server = function(input, output, session) {
  output$praise = shiny::renderText(praise::praise())

  output$cartoon = shiny::renderImage(get_jr_cartoon(),
                               deleteFile = FALSE)

  shiny::observeEvent(input$refresh, {
    shinyjs::refresh()
  })
}
