library(shiny)
library(bs4Dash)
library(shinydashboardPlus)
library(plotly)
library(shinycssloaders)

source("modules/modContact.R")
source("modules/modExpEdu.R")
source("modules/modSkills.R")


shiny::shinyApp(
  ui = bs4DashPage(
    sidebar_collapsed = TRUE,
    controlbar_collapsed = TRUE,
    title = "Basic Dashboard",
    navbar = bs4DashNavbar(
      controlbarIcon = ""
    ),
    sidebar = bs4DashSidebar(
      skin = "light",
      status = "primary",
      title = "CV with R Shiny",
      brandColor = "primary",
      elevation = 3,
      opacity = 0.8,
      bs4SidebarUserPanel(
        img = "https://image.flaticon.com/icons/svg/1149/1149168.svg",
        text = "Build your CV with R Shiny!"
      ),
      bs4SidebarMenu(
        bs4SidebarHeader("Header 1"),
        bs4SidebarMenuItem(
          "CV",
          tabName = "tabCV",
          icon = "id-card"
        ),
        bs4SidebarMenuItem(
          "Code",
          tabName = "tabCode",
          icon = "code"
        )
      )
    ),
    body = bs4DashBody(
      includeCSS("styles.css"),
      bs4TabItems(
        bs4TabItem("tabCV",
          fluidRow(
            height = 800,
            column(width= 5,
              fluidRow(
                style = "height:560px; 
                  margin-left: 10px;
                  margin-top: 10px;", 
                modContant("idModCont")
              ), 
              fluidRow(
                style = "height:480px; 
                margin-left: 10px;
                margin-top: 10px;", 
                modSkills("idModSkills")
              )
            ),
            column(
              width= 7,
              fluidRow(
                style = "height:1060px; 
                margin-left: 10px;
                margin-top: 10px;", 
                modExpEdu("idmModExpEdu")
              )
              
            )
          )
        ),
        bs4TabItem("tabCode",
          tags$h4("You can find the code for this app on my github account")
        )
      )
    )
  ),
  server = function(input, output) {
    callModule(modSkills_server, "idModSkills")
  }
)
