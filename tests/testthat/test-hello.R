library(testthat)
library(mockery)

# Source the function file
# source("R/hello.R")

test_that("hello function runs without error for all choices", {
  for (choice in 1:5) {
    # Mock the readline function to simulate user input
    mock_readline <- mockery::stub(hello, "readline", as.character(choice))

    # Run the hello function and expect no errors
    expect_silent(mock_readline())
  }
})
