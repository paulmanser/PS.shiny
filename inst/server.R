library(shiny)

htmlfrag <- function(fname) renderText({
  paste(readLines(sprintf('www/%s',fname)),collapse="\n")
})

shinyServer(function(input, output) {
  output$`ttest` <- htmlfrag('ttest.html')

  output$ttestoutput <- renderText({
    # Rather than returning dummy text here, you can return the power computation result based on the values:
    #
    # input$ttestmeth - a character string, one of "Sample Size", "Power", or "Detectable Alternative", or ""
    # input$ttestdesign - character string, one of "Paired", "Independent", or ""
    # input$alpha - numeric or NA
    # input$delta - numeric or NA
    # input$n     - numeric or NA
    # input$sigma - numeric or NA
    # input$power - numeric or NA
    # input$mu    - numeric or NA
    paste(
      capture.output(
        str(
          list(
            meth=input$ttestmeth,
            design=input$ttestdesign,
            alpha=input$alpha,
            delta=input$delta,
            n=input$n,
            sigma=input$sigma,
            power=input$power,
            mu=input$mu
          )
        )
      ),
      collapse="\n"
    )
  })

  output$survival <- renderText({'foo'})
})
