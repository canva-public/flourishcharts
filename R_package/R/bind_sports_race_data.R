#' Bind sports race data
#' @name bind_sports_race_data
#' @param data Data.
#' @param name Name. Name of competitor. Flourish type hint: column
#' @param times Times. One or more columns of numbers, representing splits or laps, or a whole race. Flourish type hint: columns
#' @param start_image Start image. The image to use at the start of the race. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
#' @param race_image Racing image. The image to use while a participant is racing. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
#' @param finish_image Finish image. The image to use when the participant has finished the race. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
#' @param color_category Color category. Add a category to color participants by. If empty, the name column will be used for colors. Flourish type hint: column
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "sports_race", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_sports_race_data(gapminder)
#' )
#' @export

bind_sports_race_data <- function(
    .,
    data = NULL,
    name = NULL,
    times = NULL,
    start_image = NULL,
    race_image = NULL,
    finish_image = NULL,
    color_category = NULL) {
  bindings_error(., "sports_race")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(name), paste(times), paste(start_image), paste(race_image), paste(finish_image), paste(color_category), NULL)
    columns_data <- columns_data[!sapply(columns_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_data, split = ",", fixed = TRUE),
      data = data
    )
    int_columns_data <- sapply(data, is.integer)
    data[, int_columns_data] <- lapply(data[, int_columns_data], as.character)
  }
  new_list$x$data$data <- data
  new_list$x$bindings$data$name <- name

  if (is.null(times)) {
    new_list$x$bindings$data$times <- "list"
  } else {
    new_list$x$bindings$data$times <- times
  }

  new_list$x$bindings$data$start_image <- start_image
  new_list$x$bindings$data$race_image <- race_image
  new_list$x$bindings$data$finish_image <- finish_image
  new_list$x$bindings$data$color_category <- color_category
  deep_merge(old_list, new_list)
}
