% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aab-helper.R
\name{compareAll}
\alias{compareAll}
\alias{compareAll,Partition,Partition-method}
\title{Compare two partitions with all measures}
\usage{
compareAll(p, q)

\S4method{compareAll}{Partition,Partition}(p, q)
}
\arguments{
\item{p}{The partition \eqn{P}}

\item{q}{The partition \eqn{Q}}
}
\value{
Instance of \code{\link{data.frame}} with columns \code{measure} and \code{value}
}
\description{
Compute the comparison between two partitions for all available measures.
}
\section{Methods (by class)}{
\itemize{
\item \code{compareAll(p = Partition, q = Partition)}: Compare given two \code{\linkS4class{Partition}} instances

}}
\section{Warning}{

This method will identify every generic S4 method that has a signature 
\code{"Partition", "Partition"} (including signatures with following \code{"missing"} 
parameters, e.g. \code{"Partition", "Partition", "missing"}) as a partition 
comparison measure, \strong{except} this method itself (otherwise: infinite 
recursion). This means one has to take care when defining other methods with the same
signature in order not to produce unwanted side-effects!
}

\examples{
compareAll(new("Partition", c(0, 0, 0, 1, 1)), new("Partition", c(0, 0, 1, 1, 1)))
\dontrun{
                        measure       value
 1            adjustedRandIndex 0.166666667
 2                     baulieu1 0.760000000
 3                     baulieu2 0.040000000
 4  classificationErrorDistance 0.200000000
 5                  czekanowski 0.500000000
 6                dongensMetric 2.000000000
 7                 fagerMcGowan 0.250000000
 8          folwkesMallowsIndex 0.500000000
 9              gammaStatistics 0.166666667
 10              goodmanKruskal 0.333333333
 11               gowerLegendre 0.750000000
 12                      hamann 0.200000000
 13          jaccardCoefficient 0.333333333
 14                  kulczynski 0.500000000
 15                  larsenAone 0.800000000
 16                 lermanIndex 0.436435780
 17                mcconnaughey 0.000000000
 18            minkowskiMeasure 1.000000000
 19                mirkinMetric 8.000000000
 20           mutualInformation 0.291103166
 21       normalizedLermanIndex 0.166666667
 22 normalizedMutualInformation 0.432538068
 23                     pearson 0.006944444
 24                      peirce 0.166666667
 25                   randIndex 0.600000000
 26              rogersTanimoto 0.428571429
 27                   russelRao 0.200000000
 28               rvCoefficient 0.692307692
 29                sokalSneath1 0.583333333
 30                sokalSneath2 0.200000000
 31                sokalSneath3 0.333333333
 32      variationOfInformation 0.763817002
 33                    wallaceI 0.500000000
 34                   wallaceII 0.500000000
}

}
\author{
Fabian Ball \email{fabian.ball@kit.edu}
}
