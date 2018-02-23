# Layouts - Basic sidebar layout
# Note: the basicPage is an empty body, meaning you will have to program the 
# layout yourself (better brush up on your html and css skills...); otherwise, 
# use the fluidPage, since this is a standard page type, with rows and columns
# (12 units wide), and it adapts, in real time, to the browser.

server <- function(input, output, session) {}

ui <- fluidPage(
  
  sidebarLayout(
    
    sidebarPanel(  # on left
      "my sidebar"
    ),
    
    mainPanel(  # on right
      "my mainpanel"
    )
  )
)

shinyApp(ui = ui, server = server)