#' Bind text annotator data
#' @name bind_text_annotator_data
#' @param data Data.
#' @param text Text. The piece of text you want to highlight. Note that text is case and space sensitive. Flourish type hint: column
#' @param note Annotation. The annotation content. Flourish type hint: column
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "text_annotator", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_text_annotator_data(gapminder)
#' )
#' @export

bind_text_annotator_data <- function(
    .,
    data = NULL,
    text = NULL,
    note = NULL) {
  bindings_error(., "text_annotator")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(text), paste(note), NULL)
    columns_data <- columns_data[!sapply(columns_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_data, split = ",", fixed = TRUE),
      data = data
    )
    int_columns_data <- sapply(data, is.integer)
    data[, int_columns_data] <- lapply(data[, int_columns_data], as.character)
  }
  new_list$x$data$data <- data
  new_list$x$bindings$data$text <- text
  new_list$x$bindings$data$note <- note
  deep_merge(old_list, new_list)
}
