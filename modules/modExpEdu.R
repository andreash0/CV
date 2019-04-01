modExpEdu = function(id) {
  
  ns <- NS(id)
  
  tagList(
    bs4TabCard(
      title = "Experience and Education",
      elevation = 2,
      width = 8,
      side = "right",
      status = "primary",
      solidHeader = T,
      bs4TabPanel(
        tabName = "Experience",
        active = T,
        timelineBlock(
          timelineLabel(2019),
          timelineItem(
            title = "Co-Founder at Gandenberger Peter & Hofheinz Andreas GbR - IT consultancy",
            icon = "rocket",
            time = "April 2018",
            HTML("<ul>
                  <li>IT consultancy enabling customers to transform raw data into meaningful insights using modern techniques and approaches.</li>
                  </ul>")
          ),
          timelineItem(
            title = "Project: Planning tool for marketing campaigns for Allianz Deutschland AG",
            time = "2018",
            HTML("<ul>
                  <li>Development and programming of a BI-Tool, to enable a simplified and flexible sales planning process. 
                      The tool makes it easy to create and edit a diverse range of sales / marketing campaigns</li>
                  <li>Creation of a comprehensive dashboard which allows users to obtain a clear and flexible overview of the KPIs 
                      within the marketing campaigns.</li>
                  </ul>")
          ),
          timelineItem(
            title = "Student Assistant for Data Analytics and Machine Learning at LMU Munich",
            icon = "university",
            time = "2018-2019",
            HTML('<ul>
              <li>Collaboration in the creation and maintenance of the 
              <a href="https://cran.r-project.org/web/packages/fxtract/index.html">fxtract</a> R-Package.</li>
              </ul>')
          ),
          timelineLabel("2018"),
          timelineItem(
            title = "Internship in IT Risk Assurance/ Data Analytics at Ernst & Young GmbH",
            icon = "building",
            time = "2017-2018",
            HTML('<ul>
              <li>Development of a neural network with Python / Tensorflow </li>
              <li>Research on the topic Data Quality Management and preparation of the informations </li>
              <li>Research with regards to new Data Analytics technologies </li>
            </ul>')
          ),
          timelineLabel("......."),
          timelineStart()
        )
      ),
      bs4TabPanel(
        tabName = "Education",
        active = F,
        timelineBlock(
          timelineLabel(2019),
          timelineItem(
            title = "Preparatory Year for Statistics Master at LMU Munich",
            icon = "university",
            time = "2018-2019",
            HTML("<ul>
              <li>Selected courses from Bachelor curriculum as preparation for Master studies.</li>
              </ul>")
            ),
          timelineItem(
            title = "Visiting Scholar for Data Science at the University of Illinois at Urbana-Champaign",
            icon = "globe-americas",
            time = "2017",
            HTML('<ul>
              <li>Department of Civil and Environmental Engineering</li>
              <li>Developing several program modules in R providing the faculty members with specific tools for their data analysis</li>
              <li>Statistical Analysis of Experimental Data</li>
              </ul>')
          ),
          timelineItem(
            title = "Bachelor of Science in Economics at LMU Munich",
            time = "2014-2017",
            icon = "university",
            HTML("<ul>
              <li>Emphasis on Econometrics, Statistics, Innovation and Labor Markets.</li>
              <li>Thesis: Stimulating Innovation: Tax Credits for Firms vs. Tax Incentives for Inventors.</li>
              </ul>")
            ),
         timelineStart()
      )
    )
  ))
}