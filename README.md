# MLBRoster
For Shiny app

This is a tool to explore baseball team rosters and to reveal general trends (future development could include full dynamic map update, time series(w/dates & stints), reactive intergation with table search and more sophisicated algorithms and analysis).

The App currently plots the hometowns of each of the players in the National League Batters and allows users to query the roster over the periods of 1901 to 2013 and stints based on the parameters listed in the side panel. In addition, some summary plots are presented behind the tab provide. The US National League has been selected to demostrate the apps current base functions.

I added geocodes(Google Map API) to data from Sean Lahman's Baseball Database (Super Thanks!), starting at the Dead Ball Era (1901 - 1920) or sometimes called the Segregation Era (1901 - 1947ish) when Jackie Robinson broke the color line in 1947 to Lahman current R package upload to 2013. While this tool can't look at race, it does provide mechanisms to explore other metrics for baseball diversity and its growing internationalization.

The broad criteria for selection for players was based on pension minimum service of 43 days in the majors to earn a minimum annual pension plan (2011). 
[See http://rpubs.com/FemmeVerve/61987]
[https://scenicverve.shinyapps.io/SFGIANTSRostershinyapp/]
