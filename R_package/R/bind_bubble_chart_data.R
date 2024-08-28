#' Bind bubble chart data
#' @name bind_bubble_chart_data
#' @param data Data.
#' @param label Label
#' @param color Color by. Used to color the bubbles. Flourish type hint: column
#' @param size Size by. Value for bubble size. Flourish type hint: column
#' @param axis_values Axis values. Values used to plot the bubbles when the bubbles are aligned on an axis. Flourish type hint: column
#' @param image Image. Images for bubbles. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
#' @param metadata Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in custom popups and panels Flourish type hint: columns
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "bubble", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_bubble_chart_data(gapminder)
#' )
#' @export

bind_bubble_chart_data <- function(
    .,
    data = NULL,
    label = NULL,
    color = NULL,
    size = NULL,
    axis_values = NULL,
    image = NULL,
    metadata = NULL) {
  bindings_error(., "bubble_chart")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(label), paste(color), paste(size), paste(axis_values), paste(image), paste(metadata), NULL)
    columns_data <- columns_data[!sapply(columns_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_data, split = ",", fixed = TRUE),
      data = data
    )
    int_columns_data <- sapply(data, is.integer)
    data[, int_columns_data] <- lapply(data[, int_columns_data], as.character)
  }
  new_list$x$data$data <- data
  new_list$x$bindings$data$label <- label
  new_list$x$bindings$data$color <- color
  new_list$x$bindings$data$size <- size
  new_list$x$bindings$data$axis_values <- axis_values
  new_list$x$bindings$data$image <- image

  if (is.null(metadata)) {
    new_list$x$bindings$data$metadata <- "list"
  } else {
    new_list$x$bindings$data$metadata <- metadata
  }

  deep_merge(old_list, new_list)
}
