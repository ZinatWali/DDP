data(mtcars)

shinyServer(
	function(input, output){		
		output$mpg <- renderPrint({
          mpgFormula <- "mpg ~ ."
          
          inputX <- data.frame(0)
          
		      if(!input$featCyl)
		      {
            mpgFormula <- paste(mpgFormula, " - cyl")
            inputX[, "cyl"]<- 0
		      }
          else
          {
            inputX[, "cyl"]<- as.numeric(input$cyl)
          }
          
		      if(!input$featDisp)
		      {
		        mpgFormula <- paste(mpgFormula, " - disp")
		        inputX[, "disp"]<- 0
		      }
          else
          {
            inputX[, "disp"]<- input$disp
          }
		      if(!input$featHP)
		      {
		        mpgFormula <- paste(mpgFormula, " - hp")
		        inputX[, "hp"]<- 0
		      }
          else
          {
            inputX[, "hp"]<- input$hp
          }
		      if(!input$featDrat)
		      {
		        mpgFormula <- paste(mpgFormula, " - drat")
		        inputX[, "drat"]<- 0
		      }
          else
          {
            inputX[, "drat"]<- input$drat
          }
		      if(!input$featWT)
		      {
		        mpgFormula <- paste(mpgFormula, " - wt")
		        inputX[, "wt"]<- 0
		      }
          else
          {
            inputX[, "wt"]<- input$wt
          }
		      if(!input$featQsec)
		      {
		        mpgFormula <- paste(mpgFormula, " - qsec")
		        inputX[, "qsec"]<- 0
		      }
          else
          {
            inputX[, "qsec"]<- input$qsec
          }
		      if(!input$featVS)
		      {
		        mpgFormula <- paste(mpgFormula, " - vs")
		        inputX[, "vs"]<- 0
		      }
          else
          {
            inputX[, "vs"]<- as.factor(input$vs)
          }
		      if(!input$featAM)
		      {
		        mpgFormula <- paste(mpgFormula, " - am")
		        inputX[, "am"]<- 0
		      }
          else
          {
            inputX[, "am"]<- as.factor(input$am)
          }
		      if(!input$featGear)
		      {
		        mpgFormula <- paste(mpgFormula, " - gear")
		        inputX[, "gear"]<- 0
		      }
          else
          {
            inputX[, "gear"]<- as.factor(input$gear)
          }
		      if(!input$featCarb)
		      {
		        mpgFormula <- paste(mpgFormula, " - carb")
		        inputX[, "carb"]<- 0
		      }
          else
          {
            inputX[, "carb"]<- as.factor(input$carb)
          }
          fit <- lm(mpgFormula, data = mtcars)
          
          paste ("predicted mpg : ",  predict(fit, inputX))
        })
    
        output$code <- renderPrint({
          gsub("\t", "    ", readLines("server.R"))
        }
      )
	}
)