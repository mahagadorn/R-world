% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plants.R
\name{terrain.plantecosystem.wrapper}
\alias{terrain.plantecosystem.wrapper}
\title{Generate a terrain matrix and simulate a plant ecosystem on that terrain.}
\usage{
terrain.plantecosystem.wrapper(n, x.bar, print.terrain = TRUE, repro, survive,
  comp.mat, name, num.timesteps, water = TRUE)
}
\arguments{
\item{n}{Size of the grid will be a (2^n)+1 (by default: n=5; a 33 by 33 grid)}

\item{x.bar}{Numeric vector (Default: 500) that will be input as the mean into the rnorm() function.}

\item{print.terrain}{If True the generated terrain matrix will be printed.}

\item{repro}{Numeric vector of length two representing probabilities of reproduction for the corresponding species (Default: 0.5).
Reproduction probabilities should be between zero and one.
Zero represents a probability of reproduction equal to zero, or no chance of reproducing.
One represents a probability of reproduction equal to one, or 100% chance of reproduction.
In relation to \code{name}, repro vector positions 1 and 2 correspond to species "a" and "b", respectively.}

\item{survive}{Numeric vector of length two representing probabilites of survival for the corresponding species (Default: 0.5).
See variable repro for a description of probability ranges.
In relation to \code{name}, survive vector positions 1 and 2 correspond to species "a" and "b", respectively.}

\item{comp.mat}{2 by 2 matrix that corresponds to individual probabilites of a species winning the competition between another species
There is no default for this input; therefore, the user must define this variable.}

\item{name}{Character vector of length two that incorperates the two plant species names to be used in the simulation (Default: "a", "b")}

\item{num.timesteps}{Numeric value indicating the number of times steps that should be looped over (Default: 5).
Maximum number of iterations is 1000.}

\item{water}{Logical (Default: TRUE) that specifies whether to make all terrain values lower than zero height underwater.}
}
\description{
This is a wrapper function that will make both a terrain matrix and simulate a plant ecosystem through time on that terrain.
    This function should be used if you want to generate all at once.
    If the user simply wants to generate just a terrain (an not simulate a plant ecosystem) the user should use the function \code{make.terrain}.
    If the user wants to generate a terrain and simulate a plant ecosystem on that terrain they should use the function \code{terrain.plantecosystem.wrapper}
    The wrapper function calls \code{run.plant.ecosystem} and will simulate a plant ecosystem based on the arguments \code{repro}, \code{survive}, \code{comp.mat}, and \code{name}.
}
\examples{
plant.matrix <- terrain.plantecosystem.wrapper(n=3,x.bar=100, print.terrain=TRUE, repro=c(.5,.5), survive=c(1,.5), comp.mat= as.matrix(c(.25,.5,.75,1), ncol=length(repro)), name = c("M. sativa", "L. perenne"), 3, water=TRUE)
}
\author{
Mallory Hagadorn
}

