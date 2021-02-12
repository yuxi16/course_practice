
ui <- fluidPage(
  
  fluidRow(
    wellPanel(style="background-color:skyblue;", width = "100%", height = "5%",
              h1("Number of Telephones in different regions", style = "text-align:center;font-weight:bold;color:white;")
    )
  ),
  
  selectInput(
    inputId = "region", label = "Region",
    choices = colnames(WorldPhones)
  ),
  plotOutput(outputId = "barplot")
)
