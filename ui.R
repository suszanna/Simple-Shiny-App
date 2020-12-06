#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    titlePanel("Volcano Data: Simply Select bin number with Slider"),

    # select bin number - use slider in sidebar
    sidebarLayout(
        sidebarPanel(
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 100,
                        value = 33)
        ),

        # plot volcanoData as a histogram of the above distribution
        mainPanel(
            plotOutput("volcanoPlot")
        )
    )
))
