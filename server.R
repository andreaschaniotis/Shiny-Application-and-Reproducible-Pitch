#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(dplyr)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    #choices = c("mpg", "cyl", "disp", "hp", "drat", "wt")),
    
    
    # setvarInput <- reactive({
    #     if (input$setvar == "mpg") mpg)
    #     if (input$setvar == "cyl") return(cyl)
    #     if (input$setvar == "disp") return(disp)
    #     if (input$setvar == "hp") return(hp)
    #     if (input$setvar == "drat") return(drat)
    #     if (input$setvar == "wt") return(wt)
    # })
     
  
    
    output$distPlot <- renderPlot({
        
         setvarInput <- input$setvar
        # generate bins based on input$bins from ui.R
        # x    <- faithful[, 2]
        # x    <- mtcars[, 1]
        
        x <-  select(mtcars, setvarInput)
        # bins <- seq(min(x), max(x), length.out = input$bins + 1)
        bins <-  input$bins + 1
        # draw the histogram with the specified number of bins
        hist(x[,1], breaks = bins, col = 'darkgray', border = 'white', xlab=setvarInput, 
             main=paste("Historgram of ", setvarInput))

    })

})
