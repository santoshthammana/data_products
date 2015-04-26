library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Basal Metabolic Rate Calculator"),
  sidebarPanel(h3("Enter your information"),
               radioButtons("units", "Height/Weight Units",
                            c("Centimeters/Kilograms" = "cent_kilo",
                              "Inches/Pounds" = "in_lb")),
               numericInput("height", "Height:", 0, min = 0),
               numericInput("weight", "Weight:", 0, min = 0),
               numericInput("age", "Age (years):", 0, min = 0),
               radioButtons("gender", "Gender",
                            c("Male" = "male",
                              "Female" = "female"))),
  mainPanel(
    tabsetPanel(
      tabPanel("Results",
               h3("Results"),
               h4("Your basal metabolic rate (calories/day) is"),
               verbatimTextOutput("rate"),
               value = TRUE),
      tabPanel("Instructions",
               h5(paste("This application calculates your basal metabolic rate in calories per day.  ",
                        "First choose your height/weight units, which can be either Centimeters/Kilograms or Inches/Pounds.  ",
                        "Enter your height and weight in the selected units.  ",
                        "Then enter your age and select your gender.  Your basal metabolic rate will be displayed in the main panel.",
                        sep = ""))))
)))