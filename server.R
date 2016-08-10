# Define a server for the Shiny app

library(shiny)

shinyServer(

function(input, output) {
  
# Fill in the spot we created for a plot

output$BreakHist <- renderPlot({

# Render a histogram; wonder why you can't name the dataset accessed: it throws an error

hist(warpbreaks[warpbreaks$tension == input$Tension & warpbreaks$wool == input$Type, ]$breaks, col = "blue", 

main = c(paste("Tension Level ", input$Tension), paste("Wool Type ", input$Type)), cex.main = 1.5,

xlab="Number of breaks", ylab="Frequency", cex.lab = 1.5, cex.sub = 1.25, 

sub = paste("Mean = ", round(mean(warpbreaks[warpbreaks$tension == input$Tension & warpbreaks$wool == input$Type, ]$breaks), 1), 

"Std Dev = ", round(sd(warpbreaks[warpbreaks$tension == input$Tension & warpbreaks$wool == input$Type, ]$breaks), 1)))


  })

}

)
