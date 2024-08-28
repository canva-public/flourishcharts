#' Bind table data
#' @name bind_table_data
#' @param rows_data Rows data.
#' @param columns Table values. The cell contents can by styled with html or markdown To style with markdown first make sure the Cell text styling setting in the Table section of the editor is on  To add an image, right click on a cell and click Upload fileSuggested data type hints: string, number, datetime. Flourish type hint: columns
#' @param columns_input_format Formats/parses dates, strings, and numbers for the columns column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param columns_output_format Formats/parses dates, strings, and numbers for the columns column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "table", api_key = Sys.getenv("FLOURISH_API_KEY")) |>
#'   bind_table_data(gapminder)
#' )
#' @export

bind_table_data <- function(
    .,
    rows_data = NULL,
    columns = NULL,
    columns_input_format = NULL,
    columns_output_format = NULL) {
  bindings_error(., "table")

  old_list <- .
  new_list <- list()

  if (!is.null(rows_data)) {
    columns_rows_data <- c(paste(columns), NULL)
    columns_rows_data <- columns_rows_data[!sapply(columns_rows_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_rows_data, split = ",", fixed = TRUE),
      data = rows_data
    )
    int_columns_rows_data <- sapply(rows_data, is.integer)
    rows_data[, int_columns_rows_data] <- lapply(rows_data[, int_columns_rows_data], as.character)
  }
  new_list$x$data$rows <- rows_data

  if (is.null(columns)) {
    new_list$x$bindings$rows$columns <- "list"
  } else {
    new_list$x$bindings$rows$columns <- columns
  }



  if (!is.null(columns_output_format) && !is.null(columns_input_format)) {
    if (isTRUE(grepl("^%", columns_output_format))) {
      new_list$x$metadata$rows$columns$type <- "datetime"
      new_list$x$metadata$rows$columns$type_id <- paste0("datetime$", columns_input_format)
      new_list$x$metadata$rows$columns$output_format_id <- paste0("datetime$", columns_output_format)
    } else if (isTRUE(grepl("_", columns_output_format))) {
      new_list$x$metadata$rows$columns$type <- "number"
      new_list$x$metadata$rows$columns$type_id <- paste0("number$", columns_input_format)
      new_list$x$metadata$rows$columns$output_format_id <- paste0("number$", columns_output_format)
    } else if (isTRUE(!is.na(columns_output_format) && isFALSE(grepl("_", columns_output_format)) && isFALSE(grepl("^%", columns_output_format)))) {
      new_list$x$metadata$rows$columns$type <- "string"
      new_list$x$metadata$rows$columns$type_id <- paste0("string$", columns_input_format)
      new_list$x$metadata$rows$columns$output_format_id <- paste0("string$", columns_output_format)
    }
    if (is.na(columns_input_format) && !is.na(columns_output_format)) {
      "[columns_input_format] and [columns_output_format] must both be defined."
    }
    if (!is.na(columns_input_format) && is.na(columns_output_format)) {
      "[columns_input_format] and [columns_output_format] must both be defined."
    }
  }
  deep_merge(old_list, new_list)
}
