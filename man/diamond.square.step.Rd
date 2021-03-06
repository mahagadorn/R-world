% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/terrain.R
\name{diamond.square.step}
\alias{diamond.square.step}
\title{Apply the diamond and square step algorithms to a general matrix}
\usage{
diamond.square.step(g.mat = g.mat, n = 5, x.bar = 500)
}
\arguments{
\item{g.mat}{General matrix generate using the \code{general.matrix} function (Default: g.mat).}

\item{n}{Size of the grid will be a (2^n)+1 (by default: n=5; a 33 by 33 grid)}

\item{x.bar}{Numeric vector (Default: 500) that will be input as the mean into the rnorm() function.
This value is used to add random noise to the matrix values when functions \code{general.matrix} and \code{square.step} are called.}
}
\value{
a general matrix (g.mat)
}
\description{
Adding values to a general matrix (g.mat) sequentially based on the \code{diamond.step} and \code{square.step} algorithms
}
\author{
Mallory Hagadorn
}

