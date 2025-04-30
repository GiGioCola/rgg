library(testthat)

# Source the function file
# source("R/create_lollipop.R")

test_that("create_lollipop creates a lollipop graph with default parameters", {
  data <- data.frame(x = 1:10, y = c(1, 3, 2, 5, 4, 6, 7, 8, 9, 10))
  p <- create_lollipop(data, "x", "y")
  expect_s3_class(p, "ggplot")
})

test_that("create_lollipop creates a lollipop graph with custom parameters", {
  data <- data.frame(x = 1:10, y = c(1, 3, 2, 5, 4, 6, 7, 8, 9, 10))
  p <- create_lollipop(data, "x", "y", point_color = "red", line_color = "blue", title = "Lollipop Graph", xlab = "X-axis", ylab = "Y-axis", orientation = "horizontal")
  expect_s3_class(p, "ggplot")
})
