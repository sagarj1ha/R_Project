# R Project
# Telecom Churn Analysis Shiny App

This Shiny app is designed for visualizing and analyzing customer churn in the telecom industry. It provides interactive plots and charts to explore the relationships between different variables and their impact on customer churn. The app utilizes the `shiny`, `dplyr`, and `plotly` packages for creating an engaging and informative user interface.

## Getting Started

### Prerequisites

Make sure you have the required R packages installed. You can install them using the following commands:

```R
install.packages("shiny")
install.packages("dplyr")
install.packages("plotly")
install.packages("shinythemes")
```

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/sgarj1ha/telecom-churn-analysis-shiny.git
   cd telecom-churn-analysis-shiny
   ```

2. Run the Shiny app:

   Open R or RStudio and execute the following commands:

   ```R
   library(shiny)
   runApp("path/to/telecom-churn-analysis-shiny")
   ```

   Replace `"path/to/telecom-churn-analysis-shiny"` with the actual path to the cloned repository.

## Usage

1. Load your telecom customer churn dataset in CSV format. Update the path in the `read.csv` function in the `app.R` file.

   ```R
   data <- read.csv("path/to/your/dataset.csv")
   ```

2. Run the Shiny app using the instructions provided in the Installation section.

3. Explore different tabs and plots to analyze customer churn based on selected variables.

## Features

- **Bar Chart:** Visualize the distribution of customer churn based on selected variables.
- **3D Scatter Plot:** Explore the relationship between three selected variables in a 3D scatter plot.
- **Clustered Bar Chart:** Compare the distribution of customer churn across different categories.
- **Heatmap:** Analyze the density of customer churn based on two selected variables.
- **Line Chart:** Understand the trend of customer churn over a selected variable.
- **Scatter Plot:** Visualize the relationship between two selected variables.

## Dependencies

- [shiny](https://cran.r-project.org/web/packages/shiny/index.html)
- [dplyr](https://cran.r-project.org/web/packages/dplyr/index.html)
- [plotly](https://cran.r-project.org/web/packages/plotly/index.html)
- [shinythemes](https://cran.r-project.org/web/packages/shinythemes/index.html)

## Screenshots

### Bar Chart
![Bar Chart](screenshots/bar_chart.png)

### 3D Scatter Plot
![3D Scatter Plot](screenshots/scatter_plot.png)

### Clustered Bar Chart
![Clustered Bar Chart](screenshots/clustered_bar_chart.png)

### Heatmap
![Heatmap](screenshots/heatmap.png)

### Line Chart
![Line Chart](screenshots/line_chart.png)

### Scatter Plot
![Scatter Plot](screenshots/scatter_plot_simple.png)

## Contributors

- [Vaishnavi Sharma](https://github.com/)
- [Sagar Jha](https://github.com/sagarj1ha)


