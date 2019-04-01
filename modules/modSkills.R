modSkills = function(id) {
  
  ns <- NS(id)
  
  bs4Card(
    status = "primary",
    solidHeader = TRUE,
    closable = FALSE,
    width = 12,
    height = 300,
    title = "IT Skills",
    plotlyOutput(ns("skills_plot"), height = 250)
  )

}

modSkills_server <- function(input, output, session) {
  
  
  output$skills_plot = renderPlotly({

    p <- plot_ly(
      type = 'scatterpolar',
      r = c(9, 4, 7,  7, 5, 8,  4, 7),
      theta = c('MS Office','Tableau','Relational Databases', 'SQL', 'Python', 'VBA', 'Web Development', 'R'),
      fill = 'toself',
      mode = "markers"
    ) %>%
      layout(
        polar = list(
          radialaxis = list(
            visible = T,
            range = c(0,10)
          )
        ),
        showlegend = F
      )
  })
  

}