\name{create_lollipop}
\alias{create_lollipop}
\title{Create a lollipop graph}
\usage{
create_lollipop(data, x, y, point_color = "blue", line_color = "black",
                point_size = 3, line_size = 1,
                title = NULL, xlab = NULL, ylab = NULL,
                orientation = "vertical")
}
\arguments{
  \item{data}{A data frame containing the data for the lollipop graph.}
  \item{x}{A character string specifying the column name for the x-axis.}
  \item{y}{A character string specifying the column name for the y-axis.}
  \item{point_color}{A character string specifying the color of the points. Default is "blue".}
  \item{line_color}{A character string specifying the color of the lines. Default is "black".}
  \item{point_size}{A numeric value specifying the size of the points. Default is 3.}
  \item{line_size}{A numeric value specifying the size of the lines. Default is 1.}
  \item{title}{A character string specifying the title of the plot. Default is NULL.}
  \item{xlab}{A character string specifying the label for the x-axis. Default is NULL.}
  \item{ylab}{A character string specifying the label for the y-axis. Default is NULL.}
  \item{orientation}{A character string specifying the orientation of the plot. Use "vertical" or "horizontal". Default is "vertical".}
}
\description{
This function creates a lollipop graph using the \code{ggplot2} package.
}
\examples{
data <- data.frame(x = 1:10, y = c(1, 3, 2, 5, 4, 6, 7, 8, 9, 10))
create_lollipop(data, "x", "y", point_color = "red", line_color = "blue", title = "Lollipop Graph", xlab = "X-axis", ylab = "Y-axis", orientation = "horizontal")
}
