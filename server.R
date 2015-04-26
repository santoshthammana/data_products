library(shiny)
shinyServer(
  function (input, output) {
    output$rate = renderPrint({
      if (input$gender == "male") {
        if (input$units == "cent_kilo") {
          66 + (13.7 * input$weight) + (5 * input$height) - (6.8 * input$age)
        }
        else {
          66 + (6.23 * input$weight) + (12.7 * input$height) - (6.8 * input$age)
        }
      }
      else {
        if (input$units == "cent_kilo") {
          655 + (9.6 * input$weight) + (1.8 * input$height) - (4.7 * input$age)
        }
        else {
          655 + (4.35 * input$weight) + (4.7 * input$height) - (4.7 * input$age)
        }
      }
    })
  }
)
