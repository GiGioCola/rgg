# Load necessary packages
# library(ggplot2)

# Function to create a waterfall chart
create_waterfall <- function(data, x, y, title = NULL, xlab = NULL, ylab = NULL, bar_color = "blue") {
  ggplot(data, aes_string(x = x, y = y)) +
    geom_bar(stat = "identity", fill = bar_color) +
    theme_minimal() +
    ggtitle(title) +
    xlab(xlab) +
    ylab(ylab)
}

# Example usage
# data <- data.frame(x = letters[1:10], y = cumsum(rnorm(10)))
# create_waterfall(data, "x", "y", title = "Waterfall Chart", xlab = "Categories", ylab = "Values", bar_color = "red")
