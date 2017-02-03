    library(shiny)
    
    shinyServer(function(input, output, session) {
      v <- (read.csv('consultant.csv', header = T))
      # v1 <-  v[[1]]
      # print(v$Name)
      # v2 <- v[6]
      # print(v2)
      v2 <- v[6]
      # print(v2)
      
      v3 <- 0
      for(i in 1:length(v2)){
        df3 <- 0 + v2[i]
        
      }
      print(df3)
      print("****************************")
      
      observeEvent(input$a,{
      output$out <- renderText(input$id)
     })
      
      observeEvent(input$a1,{
                   output$out1 <- renderText(input$id1)
      })
      
      observeEvent(input$a2,{
                   output$out2 <- renderText(input$id2)
                   output$sout <- renderText(input$s1)
      })
      
      observeEvent(input$a3,{
                   output$out3 <- renderText(input$id3)
                    })
      
      observeEvent(input$a4,{
                   output$out4 <- renderText(input$id4)
                    })
     
       outvar= reactive({
        v <- (read.csv('consultant.csv', header = T))
        v1 <-  v[[1]]
              })
      observe({
        updateSelectInput(session, 's1', choices = outvar())
      })
      
      output$table1 <- renderTable(v,width = '1000px')
      })
