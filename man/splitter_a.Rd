\name{splitter_a}
\alias{splitter_a}
\title{Split an array by...}
\usage{splitter_a(data, .margins=1)}

\description{
  Split an array by .margins Split a 2d or higher data structure into
  lower-d pieces based
}

\details{
  This is the workhorse of the \code{a*ply} functions.  Given a >1 d
  data structure (matrix, array, data.frame), it splits it into pieces
  based on the subscripts that you supply.  Each piece is a lower
  dimensional slice.

  The margins are specified in the same way as \code{\link{apply}}, but
  \code{splitter_a} just splits up the data, while \code{apply} also
  applies a function and combines the pieces back together.  This
  function also includes enough information to recreate the split from
  attributes on the list of pieces.
}
\value{a list of lower-d slices, with attributes that record split details}
\arguments{
  \item{data}{>1d data structure (matrix, data.frame or array)}
  \item{.margins}{a vector giving the subscripts to split up \code{data} by.  1 splits up by rows, 2 by columns and c(1,2) by rows and columns}
}
\examples{splitter_a(mtcars, 1)
splitter_a(mtcars, 2)

splitter_a(ozone, 2)
splitter_a(ozone, 3)
splitter_a(ozone, 1:2)}