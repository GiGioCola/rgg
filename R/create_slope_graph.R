# requires ggplot2

# Function to create a slope graph
create_slope_graph <- function(data, x, y, group, point_color = "blue", line_color = "black",
                               point_size = 3, line_size = 1,
                               title = NULL, xlab = NULL, ylab = NULL,
                               label_size = 3, label_color = "black") {
  # Create the slope graph
  p <- ggplot(data, aes_string(x = x, y = y, group = group)) +
    geom_line(aes_string(color = group), size = line_size) +
    geom_point(aes_string(color = group), size = point_size) +
    geom_text(aes_string(label = y), size = label_size, color = label_color, vjust = -0.5) +
    theme_minimal()

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

  # Customize colors if specified
  if (!is.null(point_color)) {
    p <- p + scale_color_manual(values = point_color)
  }

  if (!is.null(line_color)) {
    p <- p + scale_color_manual(values = line_color)
  }

  # Return the plot
  return(p)
}

# Example usage
# data <- data.frame(x = rep(c("2020", "2021"), each = 3), y = c(1, 3, 2, 5, 4, 6), group = rep(c("A", "B", "C"), 2))
# create_slope_graph(data, "x", "y", "group", point_color = c("red", "blue", "green"), line_color = c("red", "blue", "green"), title = "Slope Graph", xlab = "Year", ylab = "Value")
