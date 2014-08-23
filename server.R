data(mtcars)

shinyServer(
	function(input, output){		
		output$mpg <- renderPrint({
		      'Hello'
        })
	}
)