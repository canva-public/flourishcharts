#' Bind parliament chart data
#' @name bind_parliament_chart_data
#' @param data Data.
#' @param party Party
#' @param seats Seats. This should point to the column with election data. Flourish type hint: columns
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "parliament", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_parliament_chart_data(gapminder)
#' )
#' @export

bind_parliament_chart_data <- function(
    .,
    data = NULL,
    party = NULL,
    seats = NULL) {
  bindings_error(., "parliament_chart")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(party), paste(seats), NULL)
    columns_data <- columns_data[!sapply(columns_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_data, split = ",", fixed = TRUE),
      data = data
    )
    int_columns_data <- sapply(data, is.integer)
    data[, int_columns_data] <- lapply(data[, int_columns_data], as.character)
  }
  new_list$x$data$data <- data
  new_list$x$bindings$data$party <- party

  if (is.null(seats)) {
    new_list$x$bindings$data$seats <- "list"
  } else {
    new_list$x$bindings$data$seats <- seats
  }

  deep_merge(old_list, new_list)
}
