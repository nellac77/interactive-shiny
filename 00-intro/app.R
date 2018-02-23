# A basic shiny app
# If writing mono script (server and ui are in single script), name the script
# "app.R". If double script (server and ui are in different scripts), name one
# "server.R" and the other "ui.R". These are conventions and necessary.

library(shiny)

server <- function(input, output, session) {}  # server function

ui <- basicPage("basic shiny app")  # user interface

shinyApp(ui = ui, server = server)  # app launch