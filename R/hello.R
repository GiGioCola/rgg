# Function to display a series of fun examples
hello <- function() {
  examples <- list(
    "Example 1: A simple plot" = function() {
      data <- data.frame(x = 1:10, y = rnorm(10))
      plot(data$x, data$y, main = "A Simple Plot", xlab = "X-axis", ylab = "Y-axis")
    },
    "Example 2: A histogram" = function() {
      data <- rnorm(100)
      hist(data, main = "A Histogram", xlab = "Values", ylab = "Frequency")
    },
    "Example 3: A boxplot" = function() {
      data <- data.frame(group = rep(c("A", "B"), each = 50), value = c(rnorm(50), rnorm(50, mean = 3)))
      boxplot(value ~ group, data = data, main = "A Boxplot", xlab = "Group", ylab = "Value")
    },
    "Example 4: A scatter plot with ggplot2" = function() {
      library(ggplot2)
      data <- data.frame(x = rnorm(100), y = rnorm(100))
      ggplot(data, aes(x = x, y = y)) +
        geom_point() +
        ggtitle("A Scatter Plot with ggplot2") +
        xlab("X-axis") +
        ylab("Y-axis")
    }
  )

  cat("Choose an example to run:\n")
  for (i in seq_along(examples)) {
    cat(i, ": ", names(examples)[i], "\n", sep = "")
  }

  choice <- as.integer(readline(prompt = "Enter the number of the example to run: "))

  if (choice %in% seq_along(examples)) {
    examples[[choice]]()
  } else {
    cat("Invalid choice. Please enter a number between 1 and", length(examples), ".\n")
  }
}

# Example usage
# hello()
