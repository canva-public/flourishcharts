#' Bind chord diagram data
#' @name bind_chord_diagram_data
#' @param connections_data Connections data.
#' @param source Source
#' @param target Target
#' @param value Value. A number specifying the size of the flow. Flourish type hint: column
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "chord_diagram", api_key = Sys.getenv("FLOURISH_API_KEY")) |>
#'   bind_chord_diagram_data(gapminder)
#' )
#' @export

bind_chord_diagram_data <- function(
    .,
    connections_data = NULL,
    source = NULL,
    target = NULL,
    value = NULL) {
  bindings_error(., "chord_diagram")

  old_list <- .
  new_list <- list()

  if (!is.null(connections_data)) {
    columns_connections_data <- c(paste(source), paste(target), paste(value), NULL)
    columns_connections_data <- columns_connections_data[!sapply(columns_connections_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_connections_data, split = ",", fixed = TRUE),
      data = connections_data
    )
    int_columns_connections_data <- sapply(connections_data, is.integer)
    connections_data[, int_columns_connections_data] <- lapply(connections_data[, int_columns_connections_data], as.character)
  }
  new_list$x$data$connections <- connections_data
  new_list$x$bindings$connections$source <- source
  new_list$x$bindings$connections$target <- target
  new_list$x$bindings$connections$value <- value
  deep_merge(old_list, new_list)
}
