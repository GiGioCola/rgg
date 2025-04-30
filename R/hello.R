# Function to display a series of fun examples
hello <- function() {
  examples <- list(
    "Example 1:  Sparkline Plot" = function() {
      data <- data.frame(x = 1:10, y = c(1, 3, 2, 5, 4, 6, 7, 8, 9, 10))
      create_sparkline(data, "x", "y", highlight_min = TRUE, highlight_max = TRUE, title = "Sparkline Plot", xlab = "X-axis", ylab = "Y-axis")
    },
    "Example 2: Chord Diagram" = function() {
      matrix <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3)
      col_grid <- c("red", "blue", "green")
      names(col_grid) <- c("A", "B", "C")
      create_chord_diagram(matrix, col_grid)
    },
    "Example 3: Lollipop Graph" = function() {
      data <- data.frame(x = 1:10, y = c(1, 3, 2, 5, 4, 6, 7, 8, 9, 10))
      create_lollipop(data, "x", "y", point_color = "red", line_color = "blue", title = "Lollipop Graph", xlab = "X-axis", ylab = "Y-axis", orientation = "horizontal")
    },
    "Example 4: Slope Graph" = function() {
      data <- data.frame(x = rep(c("2020", "2021"), each = 3), y = c(1, 3, 2, 5, 4, 6), group = rep(c("A", "B", "C"), 2))
      create_slope_graph(data, "x", "y", "group", point_color = c("red", "blue", "green"), line_color = c("red", "blue", "green"), title = "Slope Graph", xlab = "Year", ylab = "Value")
    },
    "Example 5: Waterfall Graph" = function(){
      data <- data.frame(x = letters[1:10], y = cumsum(rnorm(10)))
      create_waterfall(data, "x", "y", title = "Waterfall Chart", xlab = "Categories", ylab = "Values", bar_color = "red")
    }
  )

  cat("Choose an example to run:\n")
  for (i in seq_along(examples)) {
    cat(i, ": ", names(examples)[i], "\n", sep = "")
  }

  choice <- as.integer(readline(prompt = "Enter the number of the example to run: "))

  if (choice %in% seq_along(examples)) {
    examples[[choice]]()
  } else {
    cat("Invalid choice. Please enter a number between 1 and", length(examples), ".\n")
  }
}

# Example usage
# hello()
