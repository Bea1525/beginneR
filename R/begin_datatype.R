
#' Determine the Datatype
#'
#' @param x One value of which the data typ is to be determined (factor, charackter, numeric)
#'
#' @returns A character naming the typ of data
#' @export
#'
#' @examples
#' begin_typecheck(123)
#'
begin_typecheck <- function(x) {
  typeof(x)
}
