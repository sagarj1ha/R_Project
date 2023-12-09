# R Project
# Overview
Telecom Churn Analysis is a critical task for telecommunications companies to understand and predict customer behavior. This Shiny app offers an interactive platform for visualizing and analyzing customer churn within the telecom industry. Utilizing the shiny, dplyr, and plotly packages, the app provides an engaging and informative user interface for exploring the relationships between different variables and their impact on customer churn.


![0_8Iu_eymr6eR-YuQw](https://github.com/sagarj1ha/R_Project/assets/111685221/bcd14258-787f-4fbe-9288-aeddc07cc20d)

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

<img src ="https://github.com/sagarj1ha/R_Project/assets/111685221/ed8060ca-a055-45bc-a24e-0d6b45cd50d0" width="400">

<img src ="https://github.com/sagarj1ha/R_Project/assets/111685221/845cda8b-8e1f-4c9a-a84a-613c7266de00" width="400">

<img src ="https://github.com/sagarj1ha/R_Project/assets/111685221/dda6a45b-d839-451c-8858-2c5e8831520f" width="400">

<img src ="https://github.com/sagarj1ha/R_Project/assets/111685221/f3f0f683-6a83-48db-9cb8-819dfe9df478" width="400">

<img src ="https://github.com/sagarj1ha/R_Project/assets/111685221/54487549-ca44-4063-aa76-8dccd98a1f53" width="400">

## Contributors

- [Vaishnavi Sharma](https://github.com/)
- [Sagar Jha](https://github.com/sagarj1ha)
  

