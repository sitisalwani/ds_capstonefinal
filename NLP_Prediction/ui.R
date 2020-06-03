
library(shiny)
library(caret)
# Adds support for graphical tooltips and popovers, in order to enrich de UI.
library(shinyBS) 
# Adds Bootstrap themes to a Shiny app.
library(shinythemes)


shinyUI(
    
    navbarPage(
        
        "NLP SwiftKey Prediction",
        
        theme = shinytheme("darkly"),
        
        tabPanel(
            
            "Prediction",
            
            
            pageWithSidebar(
                
                headerPanel("Next Word Text Prediction"),
                
                sidebarPanel(
                    
                    textInput("text", label = h3("Write a sentence:"), 
                              value = " "),
                    
                    h6(em("Please do not use numbers and/or Special Characters ")),
                    
                    submitButton("Predict")
                    
                ),
                mainPanel(
                    h4("Word prediction from Blogs"),
                    verbatimTextOutput("blogs_pred"),       
                    h4("Word prediction from Twitter"),
                    verbatimTextOutput("twitter_pred"),
                    h4("Word prediction from News"),
                    verbatimTextOutput("news_pred")
                    
                ))
        ),
        
        
        tabPanel(
            
            "Help",
            
            
            p("By entering a short line of text and hitting enter or the Predict button, the user can predict the next word from the three provided files."),
            
            p("Dataset used by the application are from HCCorpora"),
            a(href = "https://d396qusza40orc.cloudfront.net/dsscapstone/dataset/Coursera-SwiftKey.zip", "Swiftkey Dataset"),
            br(),
            p("comprises of datasets in 3 different languages. I chose..."),
            tags$div("Datasets are:",
                     tags$ul(
                         tags$li(strong("en_us.blogs"), "US-English Blogs"),
                         tags$li(strong("en_us.twitter"), "US-English Twitter"),
                         tags$li(strong("en_us.news"), "US-English News")
                         
                         
                     )
                     
            )
            
        ),
        
        tabPanel(
            
            "About",
            
            h3("Data Science Specialization - John Hopkins University (Cousera)"),
            
            h3("Capstone Final Project - Shiny App and Pitch Presentation"),
            
            br(),
            
            h4("Author: Siti Salwani Yaacob - June 3, 2020"),
            
            br(),
            
            p("Source code of this application is available at",
              a(href = "https://","https://github.com/"))
        )
    )
)


