
library(shiny)
library(dplyr)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

   
        output$histPlot <- renderPlot({
        
        setvarInput <- input$setvar
        
        x <-  select(mtcars, setvarInput)
        #set the bins
        bins <-  input$bins + 1
        # draw the histogram with the specified number of bins
        hist(x[,1], breaks = bins, col = 'darkgray', border = 'white', xlab=setvarInput, 
             main=paste("Historgram of ", setvarInput))

    })

})
