

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("mtcars dataset"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            
            selectInput("setvar", "Choose a variable:",
                        choices = c("mpg", "cyl", "disp", "hp", "drat", "wt")),
            
            
            
            sliderInput("bins",
                        "Number of bins:",
                        min = 1,
                        max = 50,
                        value = 30)
        ),

        # Show a plot of the generated d
        mainPanel(
            plotOutput("histPlot")
        )
    )
))
