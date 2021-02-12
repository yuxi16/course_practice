
library(shiny)

library(datasets)

server <- function(input, output) {
  output$barplot <- renderPlot({
    color <- c("green", "yellow")
    barplot(WorldPhones[, input$region],
            main = input$region,
            xlab = "Year",
            ylab = "Number of Telephones (in thousands)",
            col = color
    )
  })
}