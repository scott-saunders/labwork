library(shiny)
library(tidyverse)
library(modelr)
library(broom)
library(DT)
library(ggforce)

# Define UI for data upload app ----
ui <- fluidPage(
    
    # App title ----
    titlePanel("Fit a growth curve with a Gompertz curve"),
    
    # Sidebar layout with input and output definitions ----
    sidebarLayout(
        
        # Sidebar panel for inputs ----
        sidebarPanel(
            
            helpText("From Zwietering et. al. AES 1990: 
                     The three phases of the growth curve can be described by three parameters: 
                     the maximum specific growth rate, Mu is defined as the tangent in the inflection point; 
                     the lag time, Lag, is defined as the x-axis intercept of this tangent; 
                     and the asymptote A is the maximal value reached."),
            tags$div(a(href="https://aem.asm.org/content/56/6/1875", "Source")),
            tags$hr(),
            
            # Input: Select a file ----
            fileInput("file1", "Choose your data File (CSV)",
                      multiple = FALSE,
                      accept = c("text/csv",
                                 "text/comma-separated-values,text/plain",
                                 ".csv")),
            
            # # Input: Select a file ----
            # fileInput("file2", "Choose metadata File (CSV)",
            #           multiple = FALSE,
            #           accept = c("text/csv",
            #                      "text/comma-separated-values,text/plain",
            #                      ".csv")),
            
            # Horizontal line ----
            tags$hr(),
            
            helpText("Note: This .csv file should be data from a plate reader that includes a column 'time' in hours, 
                     followed by columns of data for each well A1, A2,...H12 etc. See example files for details."),
            tags$div(a(href="https://github.com/scott-saunders/labwork/blob/master/Growth_curve_fitting/data.zip", "Example files"))
            
            
        ),
        
        # Main panel for displaying outputs ----
        mainPanel(
            
            # Output: Tabset w/ plot, summary, and table ----
            tabsetPanel(type = "tabs",
                        
                        tabPanel("Input Data", 
                                 dataTableOutput("contents")
                                 ),
                        
                        tabPanel("Plots w/ Fits",
                                 tags$hr(), 
                                 downloadButton("downloadPreds", "Download fit predictions"),
                                 tags$hr(), 
                                 plotOutput("plot",height = '1000px'), 
                                 tags$hr(), 
                                 dataTableOutput("models")),
                        
                        tabPanel("Parameter Estimates", 
                                 tags$hr(), 
                                 downloadButton("downloadData", "Download parameter estimates"), 
                                 tags$hr(), 
                                 plotOutput("plot_estimates"), 
                                 tags$hr(), 
                                 dataTableOutput("estimates") ),
                        
                        tabPanel("Plot list",
                                 textOutput("num_pages"),
                                 uiOutput("plots"))
            )
            
        )
        
    )
)

###### iter max global

iter_max <- 25




# Define server logic to read selected file ----
server <- function(input, output) {

    
    ### Read in data into a dataframe we can use for fitting and plotting
       
    df_meta <- reactive({ 
        # input$file1 will be NULL initially. After the user selects
        # and uploads a file, head of that data file by default,
        # or all rows if selected, will be shown.
        
        ###### File 1
        
        req(input$file1)
        
        # when reading semicolon separated files,
        # having a comma separator causes `read.csv` to error
        tryCatch(
            {
                df_1 <- read_csv(input$file1$datapath)
            },
            error = function(e) {
                # return a safeError if a parsing error occurs
                stop(safeError(e))
            }
        )
        
        #return(head(df_1))
        
        # ####### File 2
        # 
        # req(input$file2)
        # 
        # # when reading semicolon separated files,
        # # having a comma separator causes `read.csv` to error
        # tryCatch(
        #     {
        #         df_2 <- read_csv(input$file2$datapath)
        #     },
        #     error = function(e) {
        #         # return a safeError if a parsing error occurs
        #         stop(safeError(e))
        #     }
        # )
        
        ## After file input join the data and metadata and give the first 6 lines
        
        df <- df_1 %>% gather(key = 'well',value = 'absorbance',-time)
        
        #df_meta <- left_join(df, df_2, by = 'well')
        
        #return(df_meta)
        
        return(df)
    })
    
    #### Fit the data with the nls implemented gompertz model
    
    df_models <- reactive({
        
        # group and nest the data
        df_nest <- df_meta() %>%
            group_by(well) %>% 
            nest()
        
        
        # The nls function used to fit the data
        fit_gompertz_mod <- function(df){
            
            #A = 1; mu = 0.1; lam = 2
            
            mod <- nls(formula=absorbance~A*exp(-exp((Mu/A)*(Lag - time) + 1))+C, start = c(A = 1, Mu = 0.2, Lag = 3, C = 0.1), data = df)
            
            mod
        }
        
        # fit data using the above function ...do this safely in case of errors
        df_models <- df_nest %>% 
            mutate(fit_result = map(data, safely(fit_gompertz_mod))) %>%
            ungroup() %>% 
            mutate(fit_errors = map(fit_result, 'error')) %>% 
            mutate(models = map(fit_result,'result')) %>% 
            mutate(fit_error_occured = map(.x = models, .f = is.null), fit_error_occured = unlist(fit_error_occured))
        
        #return(df_models)
        return(df_models)
        
    })
    
    
    ##### generate the predictions from the models
    df_preds <- reactive({
        
        df_preds <- df_models() %>% 
            filter(fit_error_occured == FALSE) %>% 
            mutate(preds = map2(data, models, add_predictions)) %>% 
            unnest(preds)
            
        return(df_preds)
    })
    
    ###### generate the parameter estimates from the models
    df_ests <- reactive({
        
        df_ests <- df_models() %>% 
            filter(fit_error_occured == FALSE) %>% 
            mutate(est_result = map(models, safely(tidy), conf.int = T)) %>% 
            mutate(est_errors = map(est_result, 'error')) %>% 
            mutate(ests = map(est_result,'result')) %>% 
            mutate(est_error_occured = map(.x = ests, .f = is.null), est_error_occured = unlist(est_error_occured)) %>% 
            mutate(ests = ifelse(est_error_occured == T, map(models, tidy, conf.int = F), ests)) %>% 
            unnest(ests)
        
        return(df_ests)
        
    })
    
    
    #### Output the dataframe as a table
    
    output$contents <- renderDataTable({
        
        df_meta()
        
    })
    
    output$models <- renderDataTable({
      
      df_models() %>% select(-c(data, fit_result, fit_errors, models))
      
    })
    
    output$estimates <- renderDataTable({
        
        df_ests() %>% select(-c(data, fit_result, fit_errors, models, est_result, est_errors))
        
    })
    
    # Downloadable csv of selected dataset ----
    output$downloadData <- downloadHandler(
        filename = 'growth_curve_parameter_estimates.csv',
        content = function(file) {
            write_csv(df_ests(), file)
        }
    )
    
    # Downloadable csv of selected dataset ----
    output$downloadPreds <- downloadHandler(
        filename = 'growth_curve_fit_predictions.csv',
        content = function(file) {
            write_csv(df_preds(), file)
        }
    )
    
    output$plot <- renderPlot({
        
        p <- ggplot(data = df_preds(), aes_string(x=df_preds()$time, y = df_preds()$absorbance)) + 
            geom_point(shape = 21) + geom_path(aes(y = df_preds()$pred), size = 1, color = 'blue')+ facet_wrap(~well, scales = 'free') +
            labs(x = 'Time (Hrs)', y = 'Absorbance') + theme_bw()
        
        print(p)
        
    })
    
    output$plot_estimates <- renderPlot({
        
        p2 <- ggplot(data = df_ests(), aes(x=df_ests()$well, y = df_ests()$estimate)) + 
            geom_pointrange(aes(ymin = df_ests()$conf.low, ymax = df_ests()$conf.high )) + facet_wrap(~term, scales = 'free') +
            labs(x = 'Well', y = 'Parameter Estimate') + theme_bw()
        
        print(p2)
        
    })
    
    ############### Generate list of 2x2 facet plots
    
    # First calculate the number of pages required to plot all
    num_pages <- reactive({

      plot_1 <- ggplot(data = df_preds(), aes_string(x=df_preds()$time, y = df_preds()$absorbance)) +
        geom_point(shape = 21) +
        facet_wrap_paginate(~well, nrow = 2, ncol = 2, scales = 'free')


      return(n_pages(plot_1))
    })
    
    #for debugging the num_pages function...note: 
    #it cannot be called same as conflicting function n_pages() from ggforce
    
    #output$num_pages <- renderText({ num_pages()})    
    
    
    # Insert the right number of plot output objects into the web page
    output$plots <- renderUI({
      plot_output_list <- lapply(1:num_pages(), function(i) {
        plotname <- paste("plot", i, sep="")
        plotOutput(plotname)
      })
      
      # Convert the list to a tagList - this is necessary for the list of items
      # to display properly.
      do.call(tagList, plot_output_list)
    })
    
    # Call renderPlot for each one. Plots are only actually generated when they
    # are visible on the web page.
    
    
    observeEvent( num_pages(),{
      
      for (i in 1:num_pages()) {
        # Need local so that each item gets its own number. Without it, the value
        # of i in the renderPlot() will be the same across all instances, because
        # of when the expression is evaluated.
        local({
          #iter_max <- n_pages()
          my_i <- i
          plotname <- paste("plot", my_i, sep="")
          
          output[[plotname]] <- renderPlot({
            
            ggplot(data = df_preds(), aes_string(x=df_preds()$time, y = df_preds()$absorbance)) +
              geom_point(shape = 21) + geom_path(aes(y = df_preds()$pred), size = 1, color = 'blue')+
              labs(x = 'Time (Hrs)', y = 'Absorbance') + theme_bw() +
              facet_wrap_paginate(~well, nrow = 2, ncol = 2, scales = 'free', page = my_i)
            
          })
        })
      }
    })
    
    

    
}

# Create Shiny app ----
shinyApp(ui, server)