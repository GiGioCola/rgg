\name{create_sparkline}
\alias{create_sparkline}
\title{Create a sparkline plot}
\usage{
create_sparkline(data, x, y, width = 0.7, height = 0.2, color = "blue",
                 highlight_min = TRUE, highlight_max = TRUE,
                 title = NULL, xlab = NULL, ylab = NULL)
}
\arguments{
  \item{data}{A data frame containing the data for the sparkline plot.}
  \item{x}{A character string specifying the column name for the x-axis.}
  \item{y}{A character string specifying the column name for the y-axis.}
  \item{width}{A numeric value specifying the width of the plot. Default is 0.7.}
  \item{height}{A numeric value specifying the height of the plot. Default is 0.2.}
  \item{color}{A character string specifying the color of the line. Default is "blue".}
  \item{highlight_min}{A logical value specifying whether to highlight the minimum point. Default is TRUE.}
  \item{highlight_max}{A logical value specifying whether to highlight the maximum point. Default is TRUE.}
  \item{title}{A character string specifying the title of the plot. Default is NULL.}
  \item{xlab}{A character string specifying the label for the x-axis. Default is NULL.}
  \item{ylab}{A character string specifying the label for the y-axis. Default is NULL.}
}
\description{
This function creates a sparkline plot using the \code{ggplot2} package.
}
\examples{
data <- data.frame(x = 1:10, y = c(1, 3, 2, 5, 4, 6, 7, 8, 9, 10))
create_sparkline(data, "x", "y", highlight_min = TRUE, highlight_max = TRUE, title = "Sparkline Plot", xlab = "X-axis", ylab = "Y-axis")
}
