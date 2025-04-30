\name{create_chord_diagram}
\alias{create_chord_diagram}
\title{Create a chord diagram}
\usage{
create_chord_diagram(matrix, col_grid, big_gap = 70, small_gap = 3)
}
\arguments{
  \item{matrix}{A matrix representing the data for the chord diagram.}
  \item{col_grid}{A vector of colors for the sectors.}
  \item{big_gap}{A numeric value specifying the gap between the upper and lower sectors. Default is 70.}
  \item{small_gap}{A numeric value specifying the gap between sectors. Default is 3.}
}
\description{
This function creates a chord diagram using the \code{circlize} package.
}
\examples{
matrix <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow = 3, ncol = 3)
col_grid <- c("red", "blue", "green")
create_chord_diagram(matrix, col_grid)
}
