#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# what server does: draw a histogram
shinyServer(function(input, output) {
    output$volcanoPlot <- renderPlot({

        # how many bins specified by input$bins in ui.R
        volcanoData    <- volcano[, 2]
        bins <- seq(min(volcanoData), max(volcanoData), length.out = input$bins + 1)

        # draw the histogram with the specified number of bins
        hist(volcanoData, breaks = bins, col = 'darkgray', border = 'green')

    })

})
