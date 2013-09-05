PS.shiny <- function() { 
    require(shiny)
    runApp(system.file('.',package='PS.shiny'))
}
