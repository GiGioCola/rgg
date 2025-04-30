# requires circlize

# Function to create a chord diagram
create_chord_diagram <- function(matrix, col_grid, big_gap = 70, small_gap = 3) {
  # Check that col_grid is either a single color or a named vector with the same length as the number of sectors
  if (length(col_grid) != 1 && length(col_grid) != nrow(matrix)) {
    stop("col_grid should be either a single color or a named vector with the same length as the number of sectors")
  }

  # Clear any previous circular plot settings
  circos.clear()

  # Set circular plot parameters
  circos.par(start.degree = -90)

  # Check if matrix has row and column names, if not, assign default names
  if (is.null(rownames(matrix))) {
    rownames(matrix) <- paste0("R", 1:nrow(matrix))
  }
  if (is.null(colnames(matrix))) {
    colnames(matrix) <- paste0("C", 1:ncol(matrix))
  }

  # Ensure col_grid is a named vector
  if (length(col_grid) == nrow(matrix) && is.null(names(col_grid))) {
    names(col_grid) <- rownames(matrix)
  }

  # Create the chord diagram
  chordDiagram(
    matrix,
    big.gap = big_gap,       # Increase the gap between the upper and lower sectors
    small.gap = small_gap,   # Gap between sectors
    grid.col = col_grid,     # Change the colors
    annotationTrack = "grid", # Show only the track and the sectors, no names
    annotationTrackHeight = c(0.03, 0.01), # Height of annotation track
    preAllocateTracks = list(
      track.height = max(strwidth(unlist(dimnames(matrix))))
    ) # Number of pre-allocated empty tracks for easy customization
  )

  # Add text labels to the sectors
  circos.track(
    track.index = 1,
    panel.fun = function(x, y) {
      circos.text(
        CELL_META$xcenter,
        CELL_META$ylim[1],
        CELL_META$sector.index,
        facing = "clockwise",
        niceFacing = TRUE, # Make sure that the label on the left fits human eyes (anticlockwise)
        adj = c(0, 0.5)    # Offset the text to ensure it doesn't overlap with the track
      )
    },
    bg.border = NA # Color for the border of the plotting region
  )
}

# Example usage of the function
# matrix <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3)
# rownames(matrix) <- c("A", "B", "C")
# colnames(matrix) <- c("A", "B", "C")
# col_grid <- c("red", "blue", "green")
# names(col_grid) <- c("A", "B", "C")
# create_chord_diagram(matrix, col_grid)
