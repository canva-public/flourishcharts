#' Bind hierarchy data
#' @name bind_hierarchy_data
#' @param data Data.
#' @param nest_columns Categories/nesting. Choose one or more categorical columns to nest by. The data is nested in the same order as the chosen columns (e.g. C, B is different from B, C). Suggested data type hints: string. Flourish type hint: columns
#' @param size_columns Size by. Optionally choose one or more numeric columns to size by. If more than one is chosen, a dropdown will appear in the visualization which lets the user choose. Rows with negative values are excluded. Suggested data type hints: number. Flourish type hint: columns
#' @param filter Filter. Optionally choose a categorical column to filter by. Suggested data type hints: string, number, datetime. Flourish type hint: column
#' @param popup_metadata Info for popups. One or more columns of information (text,  image URLs ,  embedded charts  etc) to include in  popups and panels Suggested data type hints: string, number, datetime. Flourish type hint: columns
#' @param nest_columns_input_format Formats/parses dates, strings, and numbers for the nest_columns column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param nest_columns_output_format Formats/parses dates, strings, and numbers for the nest_columns column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param filter_input_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param filter_output_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param popup_metadata_input_format Formats/parses dates, strings, and numbers for the popup_metadata column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param popup_metadata_output_format Formats/parses dates, strings, and numbers for the popup_metadata column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param size_columns_input_format Formats/parses dates, strings, and numbers for the size_columns column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param size_columns_output_format Formats/parses dates, strings, and numbers for the size_columns column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "treemap", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_hierarchy_data(gapminder)
#' )
#' @export

bind_hierarchy_data <- function(
    .,
    data = NULL,
    nest_columns = NULL,
    size_columns = NULL,
    filter = NULL,
    popup_metadata = NULL,
    nest_columns_input_format = NULL,
    nest_columns_output_format = NULL,
    filter_input_format = NULL,
    filter_output_format = NULL,
    popup_metadata_input_format = NULL,
    popup_metadata_output_format = NULL,
    size_columns_input_format = NULL,
    size_columns_output_format = NULL) {
  bindings_error(., "hierarchy")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(nest_columns), paste(size_columns), paste(filter), paste(popup_metadata), NULL)
    columns_data <- columns_data[!sapply(columns_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_data, split = ",", fixed = TRUE),
      data = data
    )
    int_columns_data <- sapply(data, is.integer)
    data[, int_columns_data] <- lapply(data[, int_columns_data], as.character)
  }
  new_list$x$data$data <- data

  if (is.null(nest_columns)) {
    new_list$x$bindings$data$nest_columns <- "list"
  } else {
    new_list$x$bindings$data$nest_columns <- nest_columns
  }


  if (is.null(size_columns)) {
    new_list$x$bindings$data$size_columns <- "list"
  } else {
    new_list$x$bindings$data$size_columns <- size_columns
  }

  new_list$x$bindings$data$filter <- filter

  if (is.null(popup_metadata)) {
    new_list$x$bindings$data$popup_metadata <- "list"
  } else {
    new_list$x$bindings$data$popup_metadata <- popup_metadata
  }



  if (!is.null(nest_columns_output_format) && !is.null(nest_columns_input_format)) {
    if (isTRUE(grepl("^%", nest_columns_output_format))) {
      new_list$x$metadata$data$nest_columns$type <- "datetime"
      new_list$x$metadata$data$nest_columns$type_id <- paste0("datetime$", nest_columns_input_format)
      new_list$x$metadata$data$nest_columns$output_format_id <- paste0("datetime$", nest_columns_output_format)
    } else if (isTRUE(grepl("_", nest_columns_output_format))) {
      new_list$x$metadata$data$nest_columns$type <- "number"
      new_list$x$metadata$data$nest_columns$type_id <- paste0("number$", nest_columns_input_format)
      new_list$x$metadata$data$nest_columns$output_format_id <- paste0("number$", nest_columns_output_format)
    } else if (isTRUE(!is.na(nest_columns_output_format) && isFALSE(grepl("_", nest_columns_output_format)) && isFALSE(grepl("^%", nest_columns_output_format)))) {
      new_list$x$metadata$data$nest_columns$type <- "string"
      new_list$x$metadata$data$nest_columns$type_id <- paste0("string$", nest_columns_input_format)
      new_list$x$metadata$data$nest_columns$output_format_id <- paste0("string$", nest_columns_output_format)
    }
    if (is.na(nest_columns_input_format) && !is.na(nest_columns_output_format)) {
      "[nest_columns_input_format] and [nest_columns_output_format] must both be defined."
    }
    if (!is.na(nest_columns_input_format) && is.na(nest_columns_output_format)) {
      "[nest_columns_input_format] and [nest_columns_output_format] must both be defined."
    }
  }


  if (!is.null(size_columns_output_format) && !is.null(size_columns_input_format)) {
    if (isTRUE(grepl("^%", size_columns_output_format))) {
      new_list$x$metadata$data$size_columns$type <- "datetime"
      new_list$x$metadata$data$size_columns$type_id <- paste0("datetime$", size_columns_input_format)
      new_list$x$metadata$data$size_columns$output_format_id <- paste0("datetime$", size_columns_output_format)
    } else if (isTRUE(grepl("_", size_columns_output_format))) {
      new_list$x$metadata$data$size_columns$type <- "number"
      new_list$x$metadata$data$size_columns$type_id <- paste0("number$", size_columns_input_format)
      new_list$x$metadata$data$size_columns$output_format_id <- paste0("number$", size_columns_output_format)
    } else if (isTRUE(!is.na(size_columns_output_format) && isFALSE(grepl("_", size_columns_output_format)) && isFALSE(grepl("^%", size_columns_output_format)))) {
      new_list$x$metadata$data$size_columns$type <- "string"
      new_list$x$metadata$data$size_columns$type_id <- paste0("string$", size_columns_input_format)
      new_list$x$metadata$data$size_columns$output_format_id <- paste0("string$", size_columns_output_format)
    }
    if (is.na(size_columns_input_format) && !is.na(size_columns_output_format)) {
      "[size_columns_input_format] and [size_columns_output_format] must both be defined."
    }
    if (!is.na(size_columns_input_format) && is.na(size_columns_output_format)) {
      "[size_columns_input_format] and [size_columns_output_format] must both be defined."
    }
  }


  if (!is.null(filter_output_format) && !is.null(filter_input_format)) {
    if (isTRUE(grepl("^%", filter_output_format))) {
      new_list$x$metadata$data$filter$type <- "datetime"
      new_list$x$metadata$data$filter$type_id <- paste0("datetime$", filter_input_format)
      new_list$x$metadata$data$filter$output_format_id <- paste0("datetime$", filter_output_format)
    } else if (isTRUE(grepl("_", filter_output_format))) {
      new_list$x$metadata$data$filter$type <- "number"
      new_list$x$metadata$data$filter$type_id <- paste0("number$", filter_input_format)
      new_list$x$metadata$data$filter$output_format_id <- paste0("number$", filter_output_format)
    } else if (isTRUE(!is.na(filter_output_format) && isFALSE(grepl("_", filter_output_format)) && isFALSE(grepl("^%", filter_output_format)))) {
      new_list$x$metadata$data$filter$type <- "string"
      new_list$x$metadata$data$filter$type_id <- paste0("string$", filter_input_format)
      new_list$x$metadata$data$filter$output_format_id <- paste0("string$", filter_output_format)
    }
    if (is.na(filter_input_format) && !is.na(filter_output_format)) {
      "[filter_input_format] and [filter_output_format] must both be defined."
    }
    if (!is.na(filter_input_format) && is.na(filter_output_format)) {
      "[filter_input_format] and [filter_output_format] must both be defined."
    }
  }


  if (!is.null(popup_metadata_output_format) && !is.null(popup_metadata_input_format)) {
    if (isTRUE(grepl("^%", popup_metadata_output_format))) {
      new_list$x$metadata$data$popup_metadata$type <- "datetime"
      new_list$x$metadata$data$popup_metadata$type_id <- paste0("datetime$", popup_metadata_input_format)
      new_list$x$metadata$data$popup_metadata$output_format_id <- paste0("datetime$", popup_metadata_output_format)
    } else if (isTRUE(grepl("_", popup_metadata_output_format))) {
      new_list$x$metadata$data$popup_metadata$type <- "number"
      new_list$x$metadata$data$popup_metadata$type_id <- paste0("number$", popup_metadata_input_format)
      new_list$x$metadata$data$popup_metadata$output_format_id <- paste0("number$", popup_metadata_output_format)
    } else if (isTRUE(!is.na(popup_metadata_output_format) && isFALSE(grepl("_", popup_metadata_output_format)) && isFALSE(grepl("^%", popup_metadata_output_format)))) {
      new_list$x$metadata$data$popup_metadata$type <- "string"
      new_list$x$metadata$data$popup_metadata$type_id <- paste0("string$", popup_metadata_input_format)
      new_list$x$metadata$data$popup_metadata$output_format_id <- paste0("string$", popup_metadata_output_format)
    }
    if (is.na(popup_metadata_input_format) && !is.na(popup_metadata_output_format)) {
      "[popup_metadata_input_format] and [popup_metadata_output_format] must both be defined."
    }
    if (!is.na(popup_metadata_input_format) && is.na(popup_metadata_output_format)) {
      "[popup_metadata_input_format] and [popup_metadata_output_format] must both be defined."
    }
  }
  deep_merge(old_list, new_list)
}
