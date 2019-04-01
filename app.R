library(shiny)
library(bs4Dash)

source("modules/modContact.R")

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
        text = "Welcome Onboard!"
      ),
      bs4SidebarMenu(
        bs4SidebarHeader("Header 1"),
        bs4SidebarMenuItem(
          "Item 1",
          tabName = "item1",
          icon = "sliders"
        ),
        bs4SidebarMenuItem(
          "Item 2",
          tabName = "item2",
          icon = "id-card"
        )
      )
    ),
    controlbar = bs4DashControlbar(
      skin = "light",
      title = "My right sidebar",
      sliderInput(
        inputId = "obs",
        label = "Number of observations:",
        min = 0,
        max = 1000,
        value = 500
      ),
      column(
        width = 12,
        align = "center",
        radioButtons(
          inputId = "dist",
          label = "Distribution type:",
          c("Normal" = "norm",
            "Uniform" = "unif",
            "Log-normal" = "lnorm",
            "Exponential" = "exp")
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
      modContant("idModCont") 
    )

  ),
  server = function(input, output) {
   
  }
)
