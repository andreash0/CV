modContant = function(id) {

  ns <- NS(id)
  

  
  tagList(
    bs4Card(
      status = "primary",
      width = 3,
      solidHeader = TRUE,
      closable = FALSE,
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
            description = a("Andreas Hofheinz", href="www.linkedin.com/in/andreas-hofheinz-3b686913b/", class = "float-right") 
          ),
          cardProfileItem(
            title = icon("map-marker-alt"),
            description = "Munich, Germany"
          )
        )
      )
    )
  #   bs4UserCard(
  #     type = 2,
  #     src = "githubbild.jpg",
  #     status = "primary",
  #     imageElevation = 4,
  #     title = "Andreas Hofheinz",
  #     subtitle = "Co-Founder Gandenberger Peter & Hofheinz Andreas GbR",
  #     "bla bla"
  #   )
  )
}