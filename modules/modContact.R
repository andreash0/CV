modContant = function(id) {

  ns <- NS(id)
  
  tagList(
    bs4Card(
      status = "primary",
      solidHeader = TRUE,
      closable = FALSE,
      width = 12,
      elevation = 2,
      #height = 480,
      title = "Contact",
      cardProfile(
        src = "githubbild.jpg",
        title = "Andreas Hofheinz",
        subtitle = div(HTML("Co-Founder <br> Gandenberger Peter & Hofheinz Andreas GbR"), class="center-div"),
        cardProfileItemList(
          bordered = TRUE,
          cardProfileItem(
            title = icon("envelope"),
            description = "andreas.hofheinz@outlook.com"
          ),
          cardProfileItem(
            title = icon("linkedin"),
            description = a("Andreas Hofheinz", href="https://linkedin.com/in/andreas-hofheinz-3b686913b/", class = "float-right") 
          ),
          cardProfileItem(
            title = icon("futbol"),
            description = "Football, Swimming, Traveling, Reading"
          )
        )
      )
    )
  )
}

