\name{create_slope_graph}
\alias{create_slope_graph}
\title{Create a slope graph}
\usage{
create_slope_graph(data, x, y, group, point_color = "blue", line_color = "black",
                   point_size = 3, line_size = 1,
                   title = NULL, xlab = NULL, ylab = NULL,
                   label_size = 3, label_color = "black")
}
\arguments{
  \item{data}{A data frame containing the data for the slope graph.}
  \item{x}{A character string specifying the column name for the x-axis.}
  \item{y}{A character string specifying the column name for the y-axis.}
  \item{group}{A character string specifying the column name for the grouping variable.}
  \item{point_color}{A character string or vector specifying the color of the points. Default is "blue".}
  \item{line_color}{A character string or vector specifying the color of the lines. Default is "black".}
  \item{point_size}{A numeric value specifying the size of the points. Default is 3.}
  \item{line_size}{A numeric value specifying the size of the lines. Default is 1.}
  \item{title}{A character string specifying the title of the plot. Default is NULL.}
  \item{xlab}{A character string specifying the label for the x-axis. Default is NULL.}
  \item{ylab}{A character string specifying the label for the y-axis. Default is NULL.}
  \item{label_size}{A numeric value specifying the size of the labels. Default is 3.}
  \item{label_color}{A character string specifying the color of the labels. Default is "black".}
}
\description{
This function creates a slope graph using the \code{ggplot2} package.
}
\examples{
data <- data.frame(x = rep(c("2020", "2021"), each = 3), y = c(1, 3, 2, 5, 4, 6), group = rep(c("A", "B", "C"), 2))
create_slope_graph(data, "x", "y", "group", point_color = c("red", "blue", "green"), line_color = c("red", "blue", "green"), title = "Slope Graph", xlab = "Year", ylab = "Value")
}
