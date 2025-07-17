
#' Loading and Naming a Dataset
#'
#' @param path The path to the csv file to be loaded.
#'
#' @returns A loaded and as 'df' assigned dataset.
#' @export
#'
#' @examples
#'begin_dataname("path/to_file.csv")
#'
begin_dataname <- function(path) {
  ext <- tools::file_ext(path)
  if (ext != "csv") {
    stop("Only CSV files are supported. Please select a .csv file.")
  }
  df <<- read.csv(file, stringsAsFactors = FALSE)
  message("Dataframe was successfully saved and assigned as 'df'.")
}


