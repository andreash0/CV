modExpEduPG = function(id) {
  
  ns <- NS(id)
  
  tagList(
    bs4TabCard(
      title = "Experience and Education",
      elevation = 2,
      width = 12,
      side = "right",
      status = "primary",
      solidHeader = T,
      height = 910,
      bs4TabPanel(
        tabName = "experience",
        active = T,
        timelineBlock(
          timelineLabel(2019),
          timelineItem(
            title = "Project: Planning tool for marketing campaigns for Allianz Deutschland AG",
            time = "2018",
            icon = "rocket",
            HTML('
              <ul>
                <li>Development and programming of a BI-Tool, to enable a simplified and flexible sales planning process. 
                    The tool makes it easy to create and edit a diverse range of sales / marketing campaigns</li>
                <li>Creation of a comprehensive dashboard which allows users to obtain a clear and flexible overview of the KPIs 
                    within the marketing campaigns.</li>
              </ul>')
          ),
          timelineItem(
            title = "Co-Founder at Gandenberger Peter & Hofheinz Andreas GbR - IT consultancy",
            icon = "rocket",
            time = "April 2018",
            HTML('
                 <ul>
                 <li>IT consultancy enabling customers to transform raw data into meaningful insights using modern techniques and approaches.</li>
                 <li>Based in Munich, Germany.</li>
                 </ul>')
          ),
          timelineItem(
            title = "Working Student at CQSE GmbH",
            icon = "university",
            time = "2018",
            HTML('
                 <ul>
                  <li> Testing and development of project features for the Teamscale project</li>
                 </ul>')
          ),
          timelineLabel("2018"),
          timelineItem(
            title = "Working Student at Der IT-Macher",
            icon = "building",
            time = "2016-2017",
            HTML('
                 <ul>
                 <li> Creation of a mobile Customer to Business communication application</li>
                 </ul>')
          ),
          timelineLabel("2016"),
          timelineItem(
            title = "Working Student at QAware GmbH",
            icon = "building",
            time = "2013-2015",
            HTML('
                 <ul>
                 <li> Creation of automated tests </li>
                 <li> Implementation of quality measures for improving code quality</li>
                 <li> Development of project features for different customers (ALDI Sued, Deutsche Telekom)</li>
                 </ul>')
          ),
          timelineStart(icon = "")
        )
      ),
      bs4TabPanel(
        tabName = "education",
        active = F,
        timelineBlock(
          timelineLabel(2019),
          timelineItem(
            title = "Bachelor of Science in Informatik: Games Engineering at TU Munich",
            time = "2015-2019",
            icon = "university",
            HTML("<ul>
              <li>Emphasis on Programming, Machine Learning and AI.</li>
              <li>Thesis: The influence of checked coverage on the test impact analysis</li>
              </ul>")
          ),
          timelineStart(icon = "")
        )
      )
    )
  )
}