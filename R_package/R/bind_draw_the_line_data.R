#' Bind draw the line chart data
#' @name bind_draw_the_line_data
#' @param data Data.
#' @param x Time (x axis). Labels for the X axis. Flourish type hint: column
#' @param lines_reveal Lines reveal
#' @param lines_fixed Lines fixed
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "draw_the_line", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_draw_the_line_data(gapminder)
#' )
#' @export


bind_draw_the_line_data <- function(
    .,
    data = NULL,
    x = NULL,
    lines_reveal = NULL,
    lines_fixed = NULL) {
  bindings_error(., "draw_the_line")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(x), paste(lines_reveal), paste(lines_fixed), NULL)
    columns_data <- columns_data[!sapply(columns_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_data, split = ",", fixed = TRUE),
      data = data
    )
    int_columns_data <- sapply(data, is.integer)
    data[, int_columns_data] <- lapply(data[, int_columns_data], as.character)
  }
  new_list$x$data$data <- data
  new_list$x$bindings$data$x <- x

  if (is.null(lines_reveal)) {
    new_list$x$bindings$data$lines_reveal <- "list"
  } else {
    new_list$x$bindings$data$lines_reveal <- lines_reveal
  }


  if (is.null(lines_fixed)) {
    new_list$x$bindings$data$lines_fixed <- "list"
  } else {
    new_list$x$bindings$data$lines_fixed <- lines_fixed
  }

  deep_merge(old_list, new_list)
}
