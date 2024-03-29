% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pair_counting.R
\name{sokalSneath3}
\alias{sokalSneath3}
\alias{sokalSneath3,Partition,Partition-method}
\alias{sokalSneath3,PairCoefficients,missing-method}
\title{Sokal & Sneath Index 3}
\usage{
sokalSneath3(p, q)

\S4method{sokalSneath3}{Partition,Partition}(p, q)

\S4method{sokalSneath3}{PairCoefficients,missing}(p, q = NULL)
}
\arguments{
\item{p}{The partition \eqn{P} or an instance of \linkS4class{PairCoefficients}}

\item{q}{The partition \eqn{Q} or NULL}
}
\description{
Compute the index 3 of Sokal and Sneath
\deqn{\frac{N_{11}N_{00}}{\sqrt{N_{21}N_{12}N'_{01}N'_{10}}}}
}
\section{Methods (by class)}{
\itemize{
\item \code{sokalSneath3(p = Partition, q = Partition)}: Compute given two partitions

\item \code{sokalSneath3(p = PairCoefficients, q = missing)}: Compute given the pair coefficients

}}
\examples{
isTRUE(all.equal(sokalSneath3(new("Partition", c(0, 0, 0, 1, 1)), 
                              new("Partition", c(0, 0, 1, 1, 1))), 1/3))

}
\references{
\insertRef{Sokal1963}{partitionComparison}
}
\author{
Fabian Ball \email{fabian.ball@kit.edu}
}
