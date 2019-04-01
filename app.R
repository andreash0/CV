library(shiny)
library(bs4Dash)
library(shinydashboardPlus)

source("modules/modContact.R")
source("modules/modExpEdu.R")


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
          "Item 2",
          tabName = "item2",
          icon = "code"
        )
      )
    ),
    footer = bs4DashFooter(
      copyrights = a(
        href = "https://twitter.com/divadnojnarg",
        target = "_blank", "@DivadNojnarg"
      ),
      right_text = "2018"
    ),
    body = bs4DashBody(
      includeCSS("styles.css"),
      fluidRow(
        modContant("idModCont"), 
        modExpEdu("idmModExpEdu") 
      ),
      fluidRow(
      )
    )

  ),
  server = function(input, output) {
   
  }
)
