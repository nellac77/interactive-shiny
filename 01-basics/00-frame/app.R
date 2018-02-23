# How to connect UI and Server
# Example will be with GDP/Country (Nominal GDP and GDP - PPP), using a checkbox
# UI absorbs user input then transfers to the server via a transfer function 
# (e.g.: reactive()). With that function a calculation is performed (like a 
# selection process), then the results are communicated back to the UI using
# either "renderPlot()" and/or "plotOutput()".

library(shiny)

server <- funtion(input, output, session){} # server function

ui <- basicPage("Just a frame. Build from here!") # user interface

shinyApp(ui = ui, server = server) # launch app


