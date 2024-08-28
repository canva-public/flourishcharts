#' Bind gantt chart data
#' @name bind_gantt_data
#' @param gantt_data Gantt data.
#' @param start_date Start date
#' @param end_date End date. The end date or time of the event.  If working with days, the end date should be the first day after the end date.  So if your event stretches from 1/1. and ends on the 5/1. your end date should be 6/1.  This will mean your Gantt bar will stretch across the last day of your project or task. Flourish type hint: column
#' @param task Task
#' @param grouping Group. Select a categorical column to combine bars into groups on the Y axis. Flourish type hint: column
#' @param color Color category. Select a categorical column; each unique value in the column will become a color. Flourish type hint: column
#' @param progress Progress. Requires a number column with values between 0 and 1, representing the progress from 0 to 100%. Flourish type hint: column
#' @param filter Filter. If set, creates a filter menu or time slider. Flourish type hint: column
#' @param metadata Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in popups and panelsFlourish type hint: columns
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "gantt", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_gantt_data(gapminder)
#' )
#' @export

bind_gantt_data <- function(
    .,
    gantt_data = NULL,
    start_date = NULL,
    end_date = NULL,
    task = NULL,
    grouping = NULL,
    color = NULL,
    progress = NULL,
    filter = NULL,
    metadata = NULL) {
  bindings_error(., "gantt")

  old_list <- .
  new_list <- list()

  if (!is.null(gantt_data)) {
    columns_gantt_data <- c(paste(start_date), paste(end_date), paste(task), paste(grouping), paste(color), paste(progress), paste(filter), paste(metadata), NULL)
    columns_gantt_data <- columns_gantt_data[!sapply(columns_gantt_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_gantt_data, split = ",", fixed = TRUE),
      data = gantt_data
    )
    int_columns_gantt_data <- sapply(gantt_data, is.integer)
    gantt_data[, int_columns_gantt_data] <- lapply(gantt_data[, int_columns_gantt_data], as.character)
  }
  new_list$x$data$gantt <- gantt_data
  new_list$x$bindings$gantt$start_date <- start_date
  new_list$x$bindings$gantt$end_date <- end_date
  new_list$x$bindings$gantt$task <- task
  new_list$x$bindings$gantt$grouping <- grouping
  new_list$x$bindings$gantt$color <- color
  new_list$x$bindings$gantt$progress <- progress
  new_list$x$bindings$gantt$filter <- filter

  if (is.null(metadata)) {
    new_list$x$bindings$gantt$metadata <- "list"
  } else {
    new_list$x$bindings$gantt$metadata <- metadata
  }

  deep_merge(old_list, new_list)
}
