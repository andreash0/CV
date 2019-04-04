modSkillsAH = function(id) {
  
  ns <- NS(id)
  
  bs4TabCard(
    title = "Skills",
    elevation = 2,
    width = 12,
    status = "primary",
    solidHeader = T,
    side = "right",
    bs4TabPanel(
      status = "primary",
      tabName = "IT",
      solidHeader = TRUE,
      closable = FALSE,
      width = 12,
      elevation = 2,
      active = T,  
      plotlyOutput(ns("itSkillsPlot"), height = 250)
    ),
    bs4TabPanel(
      status = "primary",
      tabName = "Softskills",
      solidHeader = TRUE,
      closable = FALSE,
      width = 12,
      elevation = 2,
      plotlyOutput(ns("softSkillsPlot"), height = 250)
    ),
    bs4TabPanel(
      status = "primary",
      tabName = "Languages",
      solidHeader = TRUE,
      closable = FALSE,
      width = 12,
      elevation = 2,
      plotlyOutput(ns("langSkillsPlot"), height = 250)
    )
  )

}

modSkills_serverAH <- function(input, output, session) {
  
  # Scatterpolars
  
  ### IT
  output$itSkillsPlot = renderPlotly({
    p <- plot_ly(
      type = 'scatterpolar',
      r = c(9, 6, 7,  8, 5, 8,  4, 8),
      theta = c('MS Office','  Tableau','Relational Databases', 'SQL', 'Python', 'VBA', 'Web Development', 'R'),
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
  
  ### Softskills
  output$softSkillsPlot = renderPlotly({
    p <- plot_ly(
      type = 'scatterpolar',
      r = c(9, 7, 7,  8, 7, 8,  8, 9),
      # Workaround for moving labels
      theta = c(
        'Analytical thinking',
        '           Time\n               management',
        'Communication', 
        'Task and       \n goal       \n oriented         ', 
         'Entrepreneurship', 
        'Problem       \n solving      ', 
        'Quick learner', 
        '       Teamwork'
      ),
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
  
  ### Languages
  output$langSkillsPlot = renderPlotly({
    p <- plot_ly(
      type = 'scatterpolar',
      r = c(10, 8, 4),
      theta = c('German', 'English', 'French'),
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