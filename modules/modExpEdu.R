modExpEdu = function(id) {
  
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
        tabName = "Experience",
        active = T,
        timelineBlock(
          timelineLabel(2019),
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
            title = "Project: Planning tool for marketing campaigns for Allianz Deutschland AG",
            time = "2018",
            HTML('
              <ul>
                <li>Development and programming of a BI-Tool, to enable a simplified and flexible sales planning process. 
                    The tool makes it easy to create and edit a diverse range of sales / marketing campaigns</li>
                <li>Creation of a comprehensive dashboard which allows users to obtain a clear and flexible overview of the KPIs 
                    within the marketing campaigns.</li>
              </ul>')
          ),
          timelineItem(
            title = "Student Assistant for Data Analytics and Machine Learning at LMU Munich",
            icon = "university",
            time = "2018-2019",
            HTML('
              <ul>
                <li>Collaboration in the creation and maintenance of the 
                <a href="https://cran.r-project.org/web/packages/fxtract/index.html">fxtract</a> R-Package.</li>
              </ul>')
          ),
          timelineLabel("2018"),
          timelineItem(
            title = "Internship in IT Risk Assurance/ Data Analytics at Ernst & Young GmbH",
            icon = "building",
            time = "2017-2018",
            HTML('
              <ul>
                <li>Development of a neural network with Python / Tensorflow </li>
                <li>Research on the topic Data Quality Management and preparation of the informations </li>
                <li>Research with regards to new Data Analytics technologies </li>
              </ul>')
          ),
          timelineLabel("2017"),
          timelineItem(
            title = "Working Student in CRM at Allianz Deutschland AG",
            icon = "building",
            time = "2017",
            HTML('
              <ul>
                <li> Bulding a master planning excel tool by using VBA for Excel and Power Point, Pivot Tables, etc. </li>
                <li> Development of a macro for the automatic filling of MS Power Point presentations based on data in MS Excel </li>
              </ul>')
            ),
          timelineItem(
            title = "Working Student in Risk Management at AMOS SE",
            icon = "building",
            time = "2016-2017",
            HTML('
              <ul>
                <li>Optimization of Processes and Templates by using VBA </li>
                <li>Modeling, Development, and Implementation of an End-to-End Risk-Database by using MS Access and VBA </li>
              </ul>')
            ),
          timelineLabel("2016"),
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
            HTML("
              <ul>
                <li>Selected courses from Bachelor curriculum as preparation for Master studies:</li>
                  <ul>
                    <li>R Programming</li>
                    <li>Generalized Linear Regression</li>
                    <li>Linear Regression</li>
                    <li>Statistics II</li>
                    <li>Linear Algebra</li>
                    <li>Calculus I and II</li>
                    <li>Time Series Analysis</li>
                  </ul>
              </ul>")
            ),
          timelineLabel(2017),
          timelineItem(
            title = "Visiting Scholar for Data Science at the University of Illinois at Urbana-Champaign, USA",
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
        timelineLabel(2014),
        timelineStart()
      )
    )
  ))
}