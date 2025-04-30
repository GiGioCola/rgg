# requires circlize

# Function to create a circle plot from a list of sectors
create_circle_plot <- function(sectors, title = "Circular Plot", xlim = c(0, 1), ylim = c(0, 1), labels.cex = 0.6) {
  # Check that sectors is a list
  if (!is.list(sectors)) {
    stop("sectors must be a list")
  }

  # Initialize the circular plot
  circos.clear()
  circos.initialize(factors = names(sectors), xlim = xlim)

  # Add sectors to the plot
  circos.trackPlotRegion(factors = names(sectors), ylim = ylim, panel.fun = function(x, y) {
    # Ensure text is within plotting region
    x_center <- CELL_META$xcenter
    y_position <- CELL_META$cell.ylim[2] + mm_y(6)

    if (y_position > ylim[2]) {
      y_position <- ylim[2] - mm_y(1)  # Adjust to be within limits
    }

    circos.text(x_center, y_position, CELL_META$sector.index, facing = "clockwise", niceFacing = TRUE)
    circos.rect(0, 0, 1, 1, col = sectors[[CELL_META$sector.index]], border = "white")
    circos.axis(labels.cex = labels.cex)
  })

  # Add title
  title(title)
}

# Example usage of the function
# sectors <- list(A = "red", B = "blue", C = "green")
# create_circle_plot(sectors)
