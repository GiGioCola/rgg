source("R/libraries.R")

# Source the function files
source("R/circle_plot.R")
source("R/chord_diagram.R")
source("R/create_sparkline.R")
source("R/create_lollipop.R")
source("R/create_slope_graph.R")

# Define the path to the tests directory
tests_dir <- file.path(getwd(), "tests/testthat")

# Run all tests in the tests directory
test_dir(tests_dir)
