# Input widgets

library(shiny)

server <- function(input,output, session) {}

ui <- basicPage(
  h1("Using textInput and checkboxInput"),
  textInput("mystring", "Write here"),
  checkboxInput("mycheckbox", "Factor Y")
)

shinyApp(ui = ui, server = server)