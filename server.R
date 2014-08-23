data(mtcars)

shinyServer(
	function(input, output){		
		output$mpg <- 
      renderPrint({
        fit <- lm(formula = mpg ~ hp + wt, data = mtcars)
          
        newX <- data.frame(
        		hp = input$hp,
            wt = input$wt)
        
        predict(fit, newX)
        })
	}
)