##Making a Test Package

#' Function for doubling a number "x"
#' 
#' @param x Numeric vector (minimum length one) that is the input into \code{double.numb}.
#' @return a numeric vector of length that is equivalent to the length of argument x
#' @examples 
#' x <- seq(1, 10, by=2)
#' x.doubled <- double.numb(x)
#' @export
double.numb <- function(x){
  doubled <- x * 2
  return(doubled)
}