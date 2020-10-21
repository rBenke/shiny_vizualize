source("global.R")


server <- function(input, output) {
  
  dataset <- reactive({
    file <- input$file1
    ext <- tools::file_ext(file$datapath)
    req(file)
    
    validate(need(ext %in% valid_dataset_ext, "Please upload a valid file"))
    
    if (ext %in% c("csv", "txt")){
      dataset <- read.csv(file$datapath, header = input$header)
    } else if(ext == "xlsx"){
      dataset <- read_xlsx(file$datapath)
    }
    as.data.table(dataset)
  })
  
  output$contents <- renderDataTable({
    dataset()
  })
  
}