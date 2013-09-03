library(shiny)

shinyUI(pageWithSidebar(
    
  # Application title
  headerPanel("Power and Sample Size Calculation")
  
  mainPanel(
    tabsetPanel(
      tabPanel("Help", plotOutput("plot")), 
    )
  )
)
