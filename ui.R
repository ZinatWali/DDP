shinyUI(pageWithSidebar(
  headerPanel(
    h2("Predicting Energy Efficiency For Cars", 
                  style="padding:10px; color:#990033;")
    ),
  sidebarPanel(
    div(
      
      div(checkboxInput("featCyl", label = h4("cyl"), value = TRUE), class='col-md-4'),
      div(selectInput("cyl", label = "",
                 choices = list("4" = 4, "6" = 6,
                                "8" = 8),selected = 4), class='col-md-8'),
      div('', style="overflow:hidden; clear:both"),
      checkboxInput("featDisp", label = h4("disp"), value = FALSE),
      sliderInput('disp', label = "",
                  value = 271.55, min = 71.1, max = 472, step = 10,),
      checkboxInput("featHP", label = h4("hp"), value = TRUE),
      sliderInput('hp', label = "",value = 193, min = 52, max = 335, step = 5,),
      checkboxInput("featDrat", label = h4("drat"), value = FALSE),
      sliderInput('drat', label = "",
                  value = 3.845, min = 2.76, max = 4.93, step = 0.3,),
      checkboxInput("featWT", label = h4("wt"), value = TRUE),
      sliderInput('wt', label = h4('wt : '),
                  value = 3.4685, min = 1.513, max = 5.424, step = 0.3,),
      checkboxInput("featQsec", label = h4("qsec"), value = FALSE),
      sliderInput('qsec ', label = h4('qsec : '),
                  value = 18.7, min = 14.5, max = 22.9, step = 0.3,),
      checkboxInput("featVS", label = h4("vs"), value = FALSE),
      selectInput("vs", label = h4("vs : "),
                choices = list("0" = 0, "1" = 1),selected = 0),
      checkboxInput("featAM", label = h4("am"), value = FALSE),
      selectInput("am", label = h4("am : "),
                choices = list("0" = 0, "1" = 1),selected = 0),
      checkboxInput("featGear", label = h4("gear"), value = FALSE),
      selectInput("gear", label = h4("gear : "),
                choices = list("3" = 3, "4" = 4, "5" = 5),selected = 3),
      checkboxInput("featCarb", label = h4("carb"), value = FALSE),
      selectInput("carb", label = h4("carb : "),
                choices = list("1" = 1, "2" = 2, "3" = 3, "4" = 4, "6" = 6, "8" = 8),selected = 1),
    
      submitButton('Submit'), style="padding:10px; color:#990033", class="container")
  ),
  mainPanel(
    div(
    h3('predicted mpg : '),
    textOutput('mpg')
    , style="background-color:#E6E6E6;padding:10px;color:#990033")  
  )
))