library(shiny)

htmlfrag <- function(fname) renderText({
  paste(readLines(system.file(sprintf('www/%s',fname),package='PS.shiny')),collapse="\n")
})

shinyServer(function(input, output) {
  output$`ttest` <- htmlfrag('ttest.html')
})
