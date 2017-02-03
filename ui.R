    
    library(shiny)
    library(shinyBS)
    
    shinyUI(fluidPage(
    
      # Application title
      titlePanel(h1("ConsultAdd", align = "center", style = "color:red")),
      tabsetPanel(
        tabPanel("Marketing", sidebarLayout(
          sidebarPanel(textInput("id",label = "Enter consultant Name"),
                       actionButton("a","Submit")),
          mainPanel(
            textOutput('out')
           )
        )),
        
        tabPanel("Recruitment",sidebarLayout(
          sidebarPanel(textInput("id1",label = "Enter consultant Name"),
                       actionButton("a1","Submit")
                      ),
          mainPanel(
            textOutput('out1')
          )
         )
        ),
        
        tabPanel("Engineering",sidebarLayout(
          sidebarPanel(textInput("id2",label = "Enter consultant Name"),
                       selectInput('s1','Select Names',choices = ''),
                       actionButton("a2","Submit")
                      ),
          mainPanel(
            textOutput('out2'),
            textOutput("sout")
          )
         )
        ),
        
        tabPanel("Finance",sidebarLayout(
          sidebarPanel(textInput("id3",label = "Enter consultant Name"),
                       actionButton("a3","Submit")
                      ),
          mainPanel(
            textOutput('out3')
          )
         )
        ),
        
        tabPanel("Legal",sidebarLayout(
          sidebarPanel(textInput("id4",label = "Enter consultant Name"),
                       actionButton("a4","Submit")
                      ),
          mainPanel(
            textOutput('out4')
          )
         )
        ),
        
        tabPanel("Test",
            mainPanel(
            tableOutput('table'),
            tableOutput('table1')
          )       
         ),
        
        tabPanel("Admin",

                   # fluidRow(
                   #   column(6, bsButton("ADDID", "Add", size="Large",type="toggle")),
                   #   column(4,bsButton("ViewID", "View", size="Large",type="toggle"))
                  navlistPanel(
                    tabPanel("Add", h3("Admin Add options will display here")),
                    tabPanel("View",h3("Admin will view information here"))
                  ) 
                 
                 
                  )
                 )
              )
           )
         
