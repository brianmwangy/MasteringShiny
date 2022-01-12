library(shiny)


ui<-fluidPage(
  
  h1("Greetings"),
  textInput("name","what is your name?"),
  numericInput("age","How old are you?",value = NA),
  textOutput("greeting"),
)


server<-function(input,output,session){
  
 output$greeting<-renderText({
   paste("Hello ", input$name, "you are ", input$age," old")
   
 })
  
  
}

shinyApp(ui,server)