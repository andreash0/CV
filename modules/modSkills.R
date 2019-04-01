modSkills = function(id) {
  
  ns <- NS(id)
  
  bs4Card(
    status = "primary",
    solidHeader = TRUE,
    closable = FALSE,
    width = 12,
    elevation = 2,
    title = "IT Skills",
    plotlyOutput(ns("skills_plot"), height = 250)
  )

}

modSkills_server <- function(input, output, session) {
  
  # Scatterpolar
  output$skills_plot = renderPlotly({

    p <- plot_ly(
      type = 'scatterpolar',
      r = c(9, 6, 7,  7, 5, 8,  4, 8),
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
      ) %>% 
      config(displayModeBar = F)
    
  })
  

}