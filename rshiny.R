library(shiny)
library(dplyr)
library(plotly)
library(shinythemes)
library(rgl)
library(scatterplot3d)
library(viridis)

#### Load Zomato data #####
data <- read.csv("C:/Users/Admin/Desktop/R/churn analysis/telecom_customer_churn.csv")

##### Data Cleaning #######

data <- data[, !(names(data) %in% c('Age','Married'))]

names(data) <- c("Customer ID","City","Customer Status","Married")


#### UI Creation ######

ui <- fluidPage(
  theme = shinytheme("superhero"),
  titlePanel("Customer Analysis"),
  sidebarLayout(
    sidebarPanel(
      selectInput("x_axis", "X-Axis", choices = c("None", names(data)), selected = "None"),
      selectInput("y_axis", "Y-Axis", choices = c("None", names(data)), selected = "None"),
      selectInput("z_axis", "Z-Axis", choices = c("None", names(data)), selected = "None"),
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Bar Chart", plotlyOutput("barChart")),
        tabPanel("3D Scatter Plot", plotlyOutput("scatterPlot")),
        tabPanel("Heatmap", plotlyOutput("heatmap")),
        tabPanel("Clustered Bar Chart", plotlyOutput("clusteredBarChart")),
        tabPanel("Line Chart", plotlyOutput("lineChart")),
        tabPanel("Scatter Plot", plotlyOutput("simpleScatterPlot")),
        tabPanel("rgl 3D Scatter Plot", rglwidgetOutput("rglPlot"))
      )
    )
  )
)

#### Server Creation ####
server <- function(input, output) {
  # Bar Chart
  output$barChart <- renderPlotly({
    if (input$x_axis != "None" && input$y_axis != "None") {
      ggplot(telecom_data, aes(x = Married, fill =Married)) +
        geom_bar() +
        labs(title = "Customer Churn Analysis",
             x = "Churn Status",
             y = "Number of Customers") +
        theme_minimal()
    }
  })
  
  # 3D Scatter Plot
  
  output$scatterPlot <- renderPlotly({
    if (input$x_axis != "None" && input$y_axis != "None" && input$z_axis != "None") {
      plot_ly(
        data = telecom_data,
        x = ~Married,
        y = ~ifelse(Married == "Yes", 1, 0),
        z = ~rep(0, nrow(telecom_data)),  # Setting z to 0 for a simple scatter plot
        color = ~Married,
        type = "scatter3d",
        mode = "markers"
      ) %>%
        layout(
          scene = list(
            xaxis = list(title = "Customer ID"),
            yaxis = list(title = "Churn Status"),
            zaxis = list(title = "Dummy Z")
          ),
          title = "3D Scatter Plot for Customer Churn"
        )
    }
  })
  # Clustered Bar Chart
  output$clusteredBarChart <- renderPlotly({
    if (input$x_axis != "None" && input$y_axis != "None") {
      ggplot(telecom_data, aes(x = Married, fill = Married)) +
        geom_bar(position = "dodge", stat = "count") +
        labs(title = "Customer Churn Analysis",
             x = "Marital Status",
             y = "Number of Customers") +
        theme_minimal()
    }
  })
  
  # Heatmap
  output$heatmap <- renderPlotly({
    if (input$x_axis != "None" && input$y_axis != "None" && input$z_axis != "None") {
      ggplot(telecom_data, aes(x = Married, y = ifelse(Married == "Yes", 1, 0))) +
        geom_bin2d(aes(fill = ..count..), bins = 20) +
        scale_fill_viridis(name = "Density", option = "magma") +
        labs(title = "Customer Churn Heatmap",
             x = "Customer ID",
             y = "Customer Status") +
        theme_minimal()
    }
  })
  
  # Line Chart
  output$lineChart <- renderPlotly({
    if (input$x_axis != "None" && input$y_axis != "None") {
      ggplot(telecom_data, aes(x = Married, y = ifelse(Married == "Yes", 1, 0), group = 1)) +
        geom_line() +
        labs(title = "Customer Churn Trend",
             x = "Customer ID",
             y = "Churn Status") +
        theme_minimal()
    }
  })
  # rgl 3D Scatter Plot
  output$rglPlot <- renderRglwidget({
    if (input$x_axis != "None" && input$y_axis != "None" && input$z_axis != "None") {
      plot3d(
        x = telecom_data$Married,
        y = ifelse(telecom_data$Married == "Yes", 1, 0),
        z = rep(0, nrow(telecom_data)),  # Setting z to 0 for a simple scatter plot
        col = ifelse(telecom_data$Married == "Yes", "red", "green"),
        size = 1.5,  # Adjust the size of the points
        type = "s",  # "s" for spheres
        xlab = "Customer ID",
        ylab = "Churn Status",
        zlab = "Dummy Z",
        main = "3D Scatter Plot for Customer Churn"
      )
    }
  })
  
  # Scatter Plot
  output$simpleScatterPlot <- renderPlotly({
    if (input$x_axis != "None" && input$y_axis != "None") {
      ggplot(telecom_data, aes(x = Married, y = ifelse(Married == "Yes", 1, 0), color = Married)) +
        geom_point() +
        labs(title = "Customer Churn Scatter Plot",
             x = "Customer ID",
             y = "Churn Status") +
        theme_minimal()
    }
  })
}


shinyApp(ui = ui, server = server)
