library(shiny)
library(readxl)
library(data.table)
source("server.R")
source("ui.R")
# Run the application 
options(shiny.port = 3189)
shinyApp(ui = ui, server = server)

# deplov the app to shinyapp.io
# library(rsconnect)
# rsconnect::deployApp('~/Desktop/repo/Shiny_visualize/')

