# HTML Tags
# Shiny translates html and css for you, but you can also do it manually. R will
# let you use html tags (see the names(tags) fucntion) as R functions.

names(tags) # run this to see all the html tags

server <- function(input, output, session) {}

ui <- fluidPage(
  
  titlePanel(strong("This is the STRONG tag on the Title")),  # strong() 
  
  sidebarLayout(
    
    sidebarPanel(
      withTags(
        div(
          b("bold text: here is a line break, a horizontal line and some code"),
          br(),
          hr(),
          code("plot(lynx)")
        )
      )
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Weblinks with direct tag a",
                 a(href="www.r-tutorials.com", "r-tutorials")),
        tabPanel(tags$b("Using b for bold text"), tags$b("a bold text")),
        tabPanel("Citations with the blockquote tag",
                 tags$blockquote("R is Great", cite = "R Programmer"))
      )
    )
  )
)

shinyApp(ui = ui, server = server)