
begin_vizguide <- function() {
  "Welcome to the world of R. Explore and Find out more about data visualization on the following links:"
  c("Get from Data to Visualization" = "https://www.data-to-viz.com/",
    "Bar Plots" = "https://r-graph-gallery.com/barplot.html",
    "Histrograms" = "https://r-graph-gallery.com/histogram.html",
    "Scatter Plots" = "https://r-graph-gallery.com/scatterplot.html",
    "Boxplots" = "https://r-graph-gallery.com/boxplot.html",
    "Line Charts" = "https://r-graph-gallery.com/line-plot.html",
    "See More" = "https://r-graph-gallery.com/index.html")
}

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
