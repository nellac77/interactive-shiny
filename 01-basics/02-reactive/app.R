# Making a reactive app

server <- function(input, output, session) {
  observe({ # If you want app to react to reactive values
    addtext <- paste("your initial input:", input$mystring)
    updateTextInput(session, "mystring2", value=addtext)
  })
}

ui <- basicPage(
  h1("Using Observe"),
  textInput("mystring", "Write here"),
  textInput("mystring2", "Full App Output")
)

shinyApp(ui = ui, server = server)
