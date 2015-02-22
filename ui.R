library(shiny)
library(ggplot2)
library(ggmap)

theworld <- function() {map("world2", wrap = TRUE, resolution = 2)}

shinyUI(fluidPage(
        titlePanel("Player Demographic App"),

        sidebarLayout(
                
                sidebarPanel( h2("Player Metrics"),
                              
                              conditionalPanel('input.dataset === "NLData"',
                                        checkboxGroupInput('show_vars', 'Select Columns to Display:', 
                                                names(NLData[1:25]), selected = names(NLData)),
                              br(),
                              img(src="LuSealII.jpg", height = 200, width = 250),
                              span("MLB NL Batters", style = "color:orange"),
                              br()        
                                )),
                mainPanel(
                        h3("MLB National League Batters"),
                        h5("Player Demographic Info for years 1901 to 2013."),
                        plotOutput("myworld", height=300,width=550),
                        p("This is a tool to explore baseball team rosters and to reveal general trends (future development could include full dynamic map update, time series(w/dates & stints), reactive intergation with table search and more sophisicated algorithms and analysis)."),
                        p("The App currently plots the hometowns of each of the players in the National League Batters and allows users to query the roster over the periods of 1901 to 2013 and stints based on the parameters listed in the side panel. In addition, some summary plots are presented behind the tab provide. The US National League has been selected to demostrate the apps current base functions."),
                        p("I added geocodes(Google Map API) to data from Sean Lahman's Baseball Database (Super Thanks!), starting at the Dead Ball Era  (1901 - 1920) or sometimes called the Segregation Era (1901 - 1947ish) when Jackie Robinson broke the color line in 1947 to Lahman current R package upload to 2013. While this tool can't look at race, it does provide mechanisms to explore other metrics for baseball diversity and its growing internationalization."),
                        p("The broad criteria for selection for players was based on pension minimum service of 43 days in the majors to earn a minimum annual pension plan (2011). [See http://rpubs.com/FemmeVerve/61987]"),
                        

                        tabsetPanel(
                          id = 'dataset',
                          tabPanel('NLData', dataTableOutput('mytable1')),
                          tabPanel("Summary Plots", plotOutput(outputId = "lb_plot", height = 300),
                                   plotOutput(outputId = "hi_plot", height = 300),
                                   plotOutput(outputId = "pos_plot", height = 300),
                                   plotOutput(outputId = "age_slug", height = 300),
                                   plotOutput(outputId = "g_pos", height = 300),
                                   plotOutput(outputId = "w_pos", height = 300),
                                   plotOutput(outputId = "h_pos", height = 300)
                                   )

                                   ),                                                                                 
                        br())
        )
))
