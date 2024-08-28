#' Bind election results chart data
#' @name bind_election_results_chart_data
#' @param values_now_data Values now data.
#' @param values_historical_data Values historical data.
#' @param values_now_name Region name. The name of the data series (eg. voting district). Flourish type hint: column
#' @param values_now_values Results by party. One column per party, with party names as header rows. Flourish type hint: columns
#' @param values_historical_name Region name. The name of the data series (eg. voting district). Flourish type hint: column
#' @param values_historical_values Results by party. One column per party, with party names as header rows. Flourish type hint: columns
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "election_results", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_election_results_chart_data(gapminder)
#' )
#' @export
#'
bind_election_results_chart_data <- function(
    .,
    values_now_data = NULL,
    values_historical_data = NULL,
    values_now_name = NULL,
    values_now_values = NULL,
    values_historical_name = NULL,
    values_historical_values = NULL) {
  bindings_error(., "election_results_chart")

  old_list <- .
  new_list <- list()

  if (!is.null(values_now_data)) {
    columns_values_now_data <- c(paste(values_now_name), paste(values_now_values), NULL)
    columns_values_now_data <- columns_values_now_data[!sapply(columns_values_now_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_values_now_data, split = ",", fixed = TRUE),
      data = values_now_data
    )
    int_columns_values_now_data <- sapply(values_now_data, is.integer)
    values_now_data[, int_columns_values_now_data] <- lapply(values_now_data[, int_columns_values_now_data], as.character)
  }
  if (!is.null(values_historical_data)) {
    columns_values_historical_data <- c(paste(values_historical_name), paste(values_historical_values), NULL)
    columns_values_historical_data <- columns_values_historical_data[!sapply(columns_values_historical_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_values_historical_data, split = ",", fixed = TRUE),
      data = values_historical_data
    )
    int_columns_values_historical_data <- sapply(values_historical_data, is.integer)
    values_historical_data[, int_columns_values_historical_data] <- lapply(values_historical_data[, int_columns_values_historical_data], as.character)
  }
  new_list$x$data$values_now <- values_now_data
  new_list$x$data$values_historical <- values_historical_data
  new_list$x$bindings$values_now$name <- values_now_name

  if (is.null(values_now_values)) {
    new_list$x$bindings$values_now$values <- "list"
  } else {
    new_list$x$bindings$values_now$values <- values_now_values
  }

  new_list$x$bindings$values_historical$name <- values_historical_name

  if (is.null(values_historical_values)) {
    new_list$x$bindings$values_historical$values <- "list"
  } else {
    new_list$x$bindings$values_historical$values <- values_historical_values
  }

  deep_merge(old_list, new_list)
}
