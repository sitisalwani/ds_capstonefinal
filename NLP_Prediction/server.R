
source("~/Documents/Cousera/10_dc_capstone/dc_final_submission/Predict.R")

shinyServer(function(input, output) {
    output$blogs_pred <- renderText({
        hope <- as.character(Blogs(as.character(input$text))[2])
    })
    
    output$twitter_pred <- renderText({
        hope <- as.character(Twitter(as.character(input$text))[2])
    })
    
    output$news_pred <- renderText({
        hope <- as.character(News(as.character(input$text))[2])
    })
    
    
})