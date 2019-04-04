modContantPG = function(id) {

  ns <- NS(id)
  
  tagList(
    bs4Card(
      status = "primary",
      solidHeader = TRUE,
      closable = FALSE,
      width = 12,
      elevation = 2,
      title = "Contact",
      cardProfile(
        src = "ppPG.jpg",
        title = "Peter Gandenberger",
        subtitle = div(HTML("Co-Founder <br> Gandenberger Peter & Hofheinz Andreas GbR"), class="center-div"),
        cardProfileItemList(
          bordered = TRUE,
          cardProfileItem(
            title = icon("envelope"),
            description = "peter.gandenberger@gmail.com"
          ),
          cardProfileItem(
            title = icon("linkedin"),
            description = a("Peter Gandenberger", href="https://www.linkedin.com/in/peter-gandenberger-a7a2ba172/", 
              class = "float-right") 
          ),
          cardProfileItem(
            title = icon("chess"),
            description = "Football, Chess, Reading"
          )
        )
      )
    )
  )
}

