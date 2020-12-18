#' BMI Calculator: Imperial System
#'
#' @param inches Total height in inches.
#' @param pounds Total weigtht in pounds.
#'
#' @return
#' @export
#'
#' @examples
#' bmi(72,200)
bmi = function(inches, pounds){

  index = 703 * (pounds/inches^2)

  return(index)
}
