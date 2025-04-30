# rgg

## Overview

`rgg` is an R package that provides functions to create various types of customizable graphs, including sparkline plots, chord diagrams, lollipop graphs, and slope graphs.

## Installation

You can install the development version of `rgg` from GitHub with:

```R
# install.packages("devtools")
devtools::install_github("yourusername/rgg")
```

## Usage
### Sparkline Plot

```R
library(rgg)

data <- data.frame(x = 1:10, y = c(1, 3, 2, 5, 4, 6, 7, 8, 9, 10))
create_sparkline(data, "x", "y", highlight_min = TRUE, highlight_max = TRUE, title = "Sparkline Plot", xlab = "X-axis", ylab = "Y-axis")
```

### Chord Diagram

```R
library(rgg)

matrix <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3)
col_grid <- c("red", "blue", "green")
names(col_grid) <- c("A", "B", "C")
create_chord_diagram(matrix, col_grid)
```

### Lollipop Graph
```R
library(rgg)

data <- data.frame(x = 1:10, y = c(1, 3, 2, 5, 4, 6, 7, 8, 9, 10))
create_lollipop(data, "x", "y", point_color = "red", line_color = "blue", title = "Lollipop Graph", xlab = "X-axis", ylab = "Y-axis", orientation = "horizontal")
```

### Slope Graph
```R
library(rgg)

data <- data.frame(x = rep(c("2020", "2021"), each = 3), y = c(1, 3, 2, 5, 4, 6), group = rep(c("A", "B", "C"), 2))
create_slope_graph(data, "x", "y", "group", point_color = c("red", "blue", "green"), line_color = c("red", "blue", "green"), title = "Slope Graph", xlab = "Year", ylab = "Value")

```

### Waterfall Chart
```R
library(rgg)

data <- data.frame(x = letters[1:10], y = cumsum(rnorm(10)))
create_waterfall(data, "x", "y", title = "Waterfall Chart", xlab = "Categories", ylab = "Values", bar_color = "red")
```

# Acknowledgements
This package was inspired by the LinkedIn Learning course "Build Advanced Charts in R" (https://github.com/LinkedInLearning/build-advanced-charts-in-r-4405613).

# Licence
This package is licensed under the MIT License.
