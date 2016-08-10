library(shiny)

# Using the dataset warpbreaks

library(datasets)

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("The Number of Breaks in Yarn during Weaving"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with two inputs

      sidebarPanel(

        selectInput("Tension", "Tension Level:", 
                    c("Light" = "L", "Medium" = "M", "High" = "H")),

        selectInput("Type", "Wool Type:", 

                    c("Type A" = "A", "Type B" = "B")),

        hr(),

        helpText("Data from 'Breakage of Wool by Tension Level' in Tippett, L. H. C. (1950) Technological Applications of Statistics")

      ),
      
      # Create a spot for the histogram

      mainPanel(

      plotOutput("BreakHist"), 

      h2('Select Light, Medium or High for tension'), 

      h2('and Type A or Type B for wool type')

       )
      
    )

  )

)
