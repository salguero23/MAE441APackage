#' Area of a Circle
#'
#' @param radius The only parameter needed is the radius of the circle you wish to find the area of.
#'
#' @return
#' @export
#'
#' @examples
#' area.circ(radius=5)
area.circ = function(radius){
  area = pi * radius^2

  return(area)
}
