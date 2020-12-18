#' Average Velocity
#'
#' @param Distance The total distance traveled from point A to point B.
#' @param Time The time it took to get from point A to point B.
#'
#' @return
#' @export
#'
#' @examples
#' velocity(200,30)
velocity = function(Distance, Time){

  velocity = Distance / Time

  return(velocity)
}
