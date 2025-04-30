library(testthat)

# Source the function file
# source("R/create_slope_graph.R")

test_that("create_slope_graph creates a slope graph with default parameters", {
  data <- data.frame(x = rep(c("2020", "2021"), each = 3), y = c(1, 3, 2, 5, 4, 6), group = rep(c("A", "B", "C"), 2))
  p <- create_slope_graph(data, "x", "y", "group")
  expect_s3_class(p, "ggplot")
})

test_that("create_slope_graph creates a slope graph with custom parameters", {
  data <- data.frame(x = rep(c("2020", "2021"), each = 3), y = c(1, 3, 2, 5, 4, 6), group = rep(c("A", "B", "C"), 2))
  p <- create_slope_graph(data, "x", "y", "group", point_color = c("red", "blue", "green"), line_color = c("red", "blue", "green"), title = "Slope Graph", xlab = "Year", ylab = "Value")
  expect_s3_class(p, "ggplot")
})
