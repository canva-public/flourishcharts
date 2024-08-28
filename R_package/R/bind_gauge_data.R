#' Bind gauge data
#' @name bind_gauge_data
#' @param data Data.
#' @param name Name
#' @param value Value. One or more columns of numbers. Flourish type hint: columns
#' @param name_input_format Formats/parses dates, strings, and numbers for the name column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param name_output_format Formats/parses dates, strings, and numbers for the name column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param value_input_format Formats/parses dates, strings, and numbers for the value column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param value_output_format Formats/parses dates, strings, and numbers for the value column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "gauge", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_gauge_data(gapminder)
#' )
#' @export

bind_gauge_data <- function(
    .,
    data = NULL,
    name = NULL,
    value = NULL,
    name_input_format = NULL,
    name_output_format = NULL,
    value_input_format = NULL,
    value_output_format = NULL) {
  bindings_error(., "gauge")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(name), paste(value), NULL)
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

  if (is.null(value)) {
    new_list$x$bindings$data$value <- "list"
  } else {
    new_list$x$bindings$data$value <- value
  }



  if (!is.null(name_output_format) && !is.null(name_input_format)) {
    if (isTRUE(grepl("^%", name_output_format))) {
      new_list$x$metadata$data$name$type <- "datetime"
      new_list$x$metadata$data$name$type_id <- paste0("datetime$", name_input_format)
      new_list$x$metadata$data$name$output_format_id <- paste0("datetime$", name_output_format)
    } else if (isTRUE(grepl("_", name_output_format))) {
      new_list$x$metadata$data$name$type <- "number"
      new_list$x$metadata$data$name$type_id <- paste0("number$", name_input_format)
      new_list$x$metadata$data$name$output_format_id <- paste0("number$", name_output_format)
    } else if (isTRUE(!is.na(name_output_format) && isFALSE(grepl("_", name_output_format)) && isFALSE(grepl("^%", name_output_format)))) {
      new_list$x$metadata$data$name$type <- "string"
      new_list$x$metadata$data$name$type_id <- paste0("string$", name_input_format)
      new_list$x$metadata$data$name$output_format_id <- paste0("string$", name_output_format)
    }
    if (is.na(name_input_format) && !is.na(name_output_format)) {
      "[name_input_format] and [name_output_format] must both be defined."
    }
    if (!is.na(name_input_format) && is.na(name_output_format)) {
      "[name_input_format] and [name_output_format] must both be defined."
    }
  }


  if (!is.null(value_output_format) && !is.null(value_input_format)) {
    if (isTRUE(grepl("^%", value_output_format))) {
      new_list$x$metadata$data$value$type <- "datetime"
      new_list$x$metadata$data$value$type_id <- paste0("datetime$", value_input_format)
      new_list$x$metadata$data$value$output_format_id <- paste0("datetime$", value_output_format)
    } else if (isTRUE(grepl("_", value_output_format))) {
      new_list$x$metadata$data$value$type <- "number"
      new_list$x$metadata$data$value$type_id <- paste0("number$", value_input_format)
      new_list$x$metadata$data$value$output_format_id <- paste0("number$", value_output_format)
    } else if (isTRUE(!is.na(value_output_format) && isFALSE(grepl("_", value_output_format)) && isFALSE(grepl("^%", value_output_format)))) {
      new_list$x$metadata$data$value$type <- "string"
      new_list$x$metadata$data$value$type_id <- paste0("string$", value_input_format)
      new_list$x$metadata$data$value$output_format_id <- paste0("string$", value_output_format)
    }
    if (is.na(value_input_format) && !is.na(value_output_format)) {
      "[value_input_format] and [value_output_format] must both be defined."
    }
    if (!is.na(value_input_format) && is.na(value_output_format)) {
      "[value_input_format] and [value_output_format] must both be defined."
    }
  }
  deep_merge(old_list, new_list)
}
