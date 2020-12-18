#' Farenheit to Celsius
#'
#' @param Farenheit Insert degrees in Farenheit
#'
#' @return
#' @export
#'
#' @examples
#' f.convert(100)
f.convert = function(Farenheit){

  Celsius = (Farenheit - 32) * (5/9)

  return(Celsius)
}
