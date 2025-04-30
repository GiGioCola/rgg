\name{create_circle_plot}
\alias{create_circle_plot}
\title{Create a circular plot from a list of sectors}
\usage{
create_circle_plot(sectors, title = "Circular Plot", xlim = c(0, 1), ylim = c(0, 1), labels.cex = 0.6)
}
\arguments{
  \item{sectors}{A list of sectors with sector names as keys and colors as values.}
  \item{title}{A character string specifying the title of the plot. Default is "Circular Plot".}
  \item{xlim}{A numeric vector specifying the x-axis limits. Default is c(0, 1).}
  \item{ylim}{A numeric vector specifying the y-axis limits. Default is c(0, 1).}
  \item{labels.cex}{A numeric value specifying the size of the axis labels. Default is 0.6.}
}
\description{
This function creates a circular plot using the \code{circlize} package from a list of sectors.
}
\examples{
sectors <- list(A = "red", B = "blue", C = "green")
create_circle_plot(sectors)
create_circle_plot(sectors, title = "My Custom Plot", xlim = c(0, 2), ylim = c(0, 2), labels.cex = 0.8)
}
