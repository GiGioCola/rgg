library(testthat)

# Source the function file
# source("R/chord_diagram.R")

test_that("create_chord_diagram creates a chord diagram with default parameters", {
  matrix <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3)
  col_grid <- c("red", "blue", "green")
  expect_silent(create_chord_diagram(matrix, col_grid))
})

test_that("create_chord_diagram creates a chord diagram with custom parameters", {
  matrix <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3)
  col_grid <- c("red", "blue", "green")
  expect_silent(create_chord_diagram(matrix, col_grid, big_gap = 80, small_gap = 5))
})
