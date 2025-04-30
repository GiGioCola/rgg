\name{create_waterfall}
\alias{create_waterfall}
\title{Create a waterfall chart}
\usage{
create_waterfall(data, x, y, title = NULL, xlab = NULL, ylab = NULL, bar_color = "blue")
}
\arguments{
  \item{data}{A data frame containing the data for the waterfall chart.}
  \item{x}{A character string specifying the column name for the x-axis.}
  \item{y}{A character string specifying the column name for the y-axis.}
  \item{title}{A character string specifying the title of the plot. Default is NULL.}
  \item{xlab}{A character string specifying the label for the x-axis. Default is NULL.}
  \item{ylab}{A character string specifying the label for the y-axis. Default is NULL.}
  \item{bar_color}{A character string specifying the color of the bars. Default is "blue".}
}
\description{
This function creates a waterfall chart using the \code{ggplot2} package.
}
\examples{
data <- data.frame(x = letters[1:10], y = cumsum(rnorm(10)))
create_waterfall(data, "x", "y", title = "Waterfall Chart", xlab = "Categories", ylab = "Values", bar_color = "red")
}
