library(shiny)

options(shiny.maxRequestSize = -1)

shinyServer(function(input, output) {
                theworld <- reactive({
                        myplot <- map("world", plot=TRUE, resolution=2)
                        myplot <- points(NLData$lon, NLData$lat, col = "dark orange", cex = .8)
                })
                output$myworld <- renderPlot({
                        theworld()                       
                })
                output$lb_plot <- renderPlot({
                       hist(NLData$weight,
                            xlab = "Weight (lb)",
                            main = "Player Weight Distribution") })
               
                output$hi_plot <- renderPlot({
                       hist(NLData$height,
                            xlab = "Height (in)",
                            main = "Player Height Distribution") })
               
                output$pos_plot <- renderPlot({
                       plot(NLData$POS,
                            xlab = "Position",
                            main = "Player Position Distribution") })
                
                output$age_slug <- renderPlot({
                        plot(NLData$SlugPct~ NLData$age,
                             ylab = "Sluging Percentage",
                             xlab = "Age",
                             main = "Sluging Percentage v Age") })
                
                output$sal_pos <- renderPlot({
                        plot(NLData$salary ~ NLData$POS,
                             ylab = "Salary",
                             xlab = "Position",
                             main = "Player Position Salary in Dollars") })
                
                output$g_pos <- renderPlot({
                        plot(NLData$G ~ NLData$POS,
                             ylab = "Games played",
                             xlab = "Position",
                             main = "Games Played") })
                
                output$w_pos <- renderPlot({
                        plot(NLData$weight ~ NLData$POS,
                             ylab = "Weight in (lb)",
                             xlab = "Position",
                             main = "Player Weight per Position") })
                
                output$h_pos <- renderPlot({
                        plot(NLData$height ~ NLData$POS,
                             ylab = "Height in (in)",
                             xlab =  "Position",
                             main = "Player Height per Position") })
               
                output$mytable1 <- renderDataTable({
                        library(ggplot2)
                        NLData[, input$show_vars, drop = FALSE]})
                        } )
