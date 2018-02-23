# Input widgets

library(shiny)

server <- function(input,output, session) {}

ui <- basicPage(
  h1("Using textInput and checkboxInput"),  # header
  textInput("mystring", "Write in box below", value = "text"),  # text box
  checkboxInput("mycheckbox", "Factor Y")  # checkbox
)

shinyApp(ui = ui, server = server)