library(testthat)

# Source the function file
# source("R/create_waterfall.R")

test_that("create_waterfall creates a waterfall chart with default parameters", {
  data <- data.frame(x = letters[1:10], y = cumsum(rnorm(10)))
  p <- create_waterfall(data, "x", "y")
  expect_s3_class(p, "ggplot")
})

test_that("create_waterfall creates a waterfall chart with custom parameters", {
  data <- data.frame(x = letters[1:10], y = cumsum(rnorm(10)))
  p <- create_waterfall(data, "x", "y", title = "Waterfall Chart", xlab = "Categories", ylab = "Values", bar_color = "red")
  expect_s3_class(p, "ggplot")
})
