# requires ggplot2

# Function to create a lollipop graph
create_lollipop <- function(data, x, y, point_color = "blue", line_color = "black",
                            point_size = 3, line_size = 1,
                            title = NULL, xlab = NULL, ylab = NULL,
                            orientation = "vertical") {
  # Create the lollipop graph based on orientation
  if (orientation == "vertical") {
    p <- ggplot(data, aes_string(x = x, y = y)) +
      geom_segment(aes_string(x = x, xend = x, y = 0, yend = y), color = line_color, size = line_size) +
      geom_point(color = point_color, size = point_size) +
      theme_minimal()
  } else if (orientation == "horizontal") {
    p <- ggplot(data, aes_string(x = y, y = x)) +
      geom_segment(aes_string(x = 0, xend = y, y = x, yend = x), color = line_color, size = line_size) +
      geom_point(color = point_color, size = point_size) +
      theme_minimal()
  } else {
    stop("Invalid orientation. Use 'vertical' or 'horizontal'.")
  }

  # Add title and labels if specified
  if (!is.null(title)) {
    p <- p + ggtitle(title)
  }

  if (!is.null(xlab)) {
    p <- p + xlab(xlab)
  }

  if (!is.null(ylab)) {
    p <- p + ylab(ylab)
  }

  # Return the plot
  return(p)
}

# Example usage
# data <- data.frame(x = 1:10, y = c(1, 3, 2, 5, 4, 6, 7, 8, 9, 10))
# create_lollipop(data, "x", "y", point_color = "red", line_color = "blue", title = "Lollipop Graph", xlab = "X-axis", ylab = "Y-axis", orientation = "horizontal")
