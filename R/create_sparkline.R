# requires ggplot2

# Function to create a sparkline plot
create_sparkline <- function(data, x, y, width = 0.7, height = 0.2, color = "blue",
                             highlight_min = TRUE, highlight_max = TRUE,
                             title = NULL, xlab = NULL, ylab = NULL) {
  # Create the base sparkline plot
  p <- ggplot(data, aes_string(x = x, y = y)) +
    geom_line(color = color) +
    theme_void() +
    theme(
      plot.margin = unit(c(0, 0, 0, 0), "cm"),
      aspect.ratio = height / width
    )

  # Highlight min and max points if specified
  if (highlight_min) {
    min_point <- data[which.min(data[[y]]), ]
    p <- p + geom_point(data = min_point, aes_string(x = x, y = y), color = "red") +
      geom_text(data = min_point, aes_string(x = x, y = y, label = y), vjust = -1, size = 3)
  }

  if (highlight_max) {
    max_point <- data[which.max(data[[y]]), ]
    p <- p + geom_point(data = max_point, aes_string(x = x, y = y), color = "green") +
      geom_text(data = max_point, aes_string(x = x, y = y, label = y), vjust = 1.5, size = 3)
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
# create_sparkline(data, "x", "y", highlight_min = TRUE, highlight_max = TRUE, title = "Sparkline Plot", xlab = "X-axis", ylab = "Y-axis")
