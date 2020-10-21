library(shiny)
library(readxl)
library(data.table)
source("server.R")
source("ui.R")
# Run the application 
options(shiny.host = "192.168.43.163")
shinyApp(ui = ui, server = server)

# deplov the app to shinyapp.io
# library(rsconnect)
# rsconnect::deployApp('~/Desktop/repo/Shiny_visualize/')

