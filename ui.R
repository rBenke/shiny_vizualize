source("global.R")

ui <- fluidPage(
    sidebarLayout(
        sidebarPanel(
            fileInput("file1", "Choose a file", accept = valid_dataset_ext),
            checkboxInput("header", "Header", TRUE)
        ),
        mainPanel(
            dataTableOutput("contents")
        )
    )
)

 