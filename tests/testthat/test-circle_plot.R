library(testthat)

# Source the function file
# source("R/chord_diagram.R")

test_that("create_circle_plot creates a circular plot with default parameters", {
  sectors <- list(A = "red", B = "blue", C = "green")
  expect_silent(create_circle_plot(sectors))
})

test_that("create_circle_plot creates a circular plot with custom parameters", {
  sectors <- list(A = "red", B = "blue", C = "green")
  expect_silent(create_circle_plot(sectors, title = "My Custom Plot", xlim = c(0, 2), ylim = c(0, 2), labels.cex = 0.8))
})
