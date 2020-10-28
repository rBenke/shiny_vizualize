library(shiny)
library(readxl)
library(data.table)
source("server.R")
source("ui.R")
# Run the application
shinyApp(ui = ui, server = server, port = 3000)

# deplov the app to shinyapp.io
# library(rsconnect)
# rsconnect::deployApp('~/Desktop/repo/Shiny_visualize/')

