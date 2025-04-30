library(testthat)

# Source the function file
# source("R/create_sparkline.R")

test_that("create_sparkline creates a sparkline plot with default parameters", {
  data <- data.frame(x = 1:10, y = c(1, 3, 2, 5, 4, 6, 7, 8, 9, 10))
  p <- create_sparkline(data, "x", "y")
  expect_s3_class(p, "ggplot")
})

test_that("create_sparkline creates a sparkline plot with highlights and labels", {
  data <- data.frame(x = 1:10, y = c(1, 3, 2, 5, 4, 6, 7, 8, 9, 10))
  p <- create_sparkline(data, "x", "y", highlight_min = TRUE, highlight_max = TRUE, title = "Sparkline Plot", xlab = "X-axis", ylab = "Y-axis")
  expect_s3_class(p, "ggplot")
})
