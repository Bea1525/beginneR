begin_dataname <- function(path) {
  if (!file.exists(path)) stop("File does not exist!")
  if (tolower(tools::file_ext(path)) != "csv") stop("Only .csv files!")

  df <- read.csv(path)
  base <- basename(path)
  name <- tolower(substr(base, 1, 3))
  name <- gsub("[^a-z]", "", name)

  assign(name, df, envir = .GlobalEnv)
  message(paste0("Dataset saved as'", name))

}
