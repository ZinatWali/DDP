data(mtcars)

shinyServer(
	function(input, output){		
		output$mpg <- renderTable({
		      mtcars
        })
	}
)