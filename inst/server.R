library(shiny)

htmlfrag <- function(fname) renderText({
  paste(readLines(sprintf('www/%s',fname)),collapse="\n")
})

shinyServer(function(input, output) {
  output$`ttest` <- htmlfrag('ttest.html')

  output$survival <- renderText({'foo'})
})
