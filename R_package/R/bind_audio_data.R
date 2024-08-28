#' Bind audio data
#' @name bind_audio_data
#' @param data Data.
#' @param url Audio URL. The URL of a publicly readable MP3 file. Suggested data type hints: string. Flourish type hint: column
#' @param title Audio title. Suggested data type hints: string. Flourish type hint: column
#' @param subtitle Audio subtitle. Suggested data type hints: string. Flourish type hint: column
#' @param filter Filter. Suggested data type hints: string, number. Flourish type hint: column
#' @param url_input_format Formats/parses dates, strings, and numbers for the url column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param url_output_format Formats/parses dates, strings, and numbers for the url column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param subtitle_input_format Formats/parses dates, strings, and numbers for the subtitle column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param subtitle_output_format Formats/parses dates, strings, and numbers for the subtitle column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param title_input_format Formats/parses dates, strings, and numbers for the title column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param title_output_format Formats/parses dates, strings, and numbers for the title column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param filter_input_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param filter_output_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "audio", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_audio_data(gapminder)
#' )
#' @export

bind_audio_data <- function(
    .,
    data = NULL,
    url = NULL,
    title = NULL,
    subtitle = NULL,
    filter = NULL,
    url_input_format = NULL,
    url_output_format = NULL,
    subtitle_input_format = NULL,
    subtitle_output_format = NULL,
    title_input_format = NULL,
    title_output_format = NULL,
    filter_input_format = NULL,
    filter_output_format = NULL) {
  bindings_error(., "audio")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(url), paste(title), paste(subtitle), paste(filter), NULL)
    columns_data <- columns_data[!sapply(columns_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_data, split = ",", fixed = TRUE),
      data = data
    )
    int_columns_data <- sapply(data, is.integer)
    data[, int_columns_data] <- lapply(data[, int_columns_data], as.character)
  }
  new_list$x$data$data <- data
  new_list$x$bindings$data$url <- url
  new_list$x$bindings$data$title <- title
  new_list$x$bindings$data$subtitle <- subtitle
  new_list$x$bindings$data$filter <- filter


  if (!is.null(url_output_format) && !is.null(url_input_format)) {
    if (isTRUE(grepl("^%", url_output_format))) {
      new_list$x$metadata$data$url$type <- "datetime"
      new_list$x$metadata$data$url$type_id <- paste0("datetime$", url_input_format)
      new_list$x$metadata$data$url$output_format_id <- paste0("datetime$", url_output_format)
    } else if (isTRUE(grepl("_", url_output_format))) {
      new_list$x$metadata$data$url$type <- "number"
      new_list$x$metadata$data$url$type_id <- paste0("number$", url_input_format)
      new_list$x$metadata$data$url$output_format_id <- paste0("number$", url_output_format)
    } else if (isTRUE(!is.na(url_output_format) && isFALSE(grepl("_", url_output_format)) && isFALSE(grepl("^%", url_output_format)))) {
      new_list$x$metadata$data$url$type <- "string"
      new_list$x$metadata$data$url$type_id <- paste0("string$", url_input_format)
      new_list$x$metadata$data$url$output_format_id <- paste0("string$", url_output_format)
    }
    if (is.na(url_input_format) && !is.na(url_output_format)) {
      "[url_input_format] and [url_output_format] must both be defined."
    }
    if (!is.na(url_input_format) && is.na(url_output_format)) {
      "[url_input_format] and [url_output_format] must both be defined."
    }
  }


  if (!is.null(title_output_format) && !is.null(title_input_format)) {
    if (isTRUE(grepl("^%", title_output_format))) {
      new_list$x$metadata$data$title$type <- "datetime"
      new_list$x$metadata$data$title$type_id <- paste0("datetime$", title_input_format)
      new_list$x$metadata$data$title$output_format_id <- paste0("datetime$", title_output_format)
    } else if (isTRUE(grepl("_", title_output_format))) {
      new_list$x$metadata$data$title$type <- "number"
      new_list$x$metadata$data$title$type_id <- paste0("number$", title_input_format)
      new_list$x$metadata$data$title$output_format_id <- paste0("number$", title_output_format)
    } else if (isTRUE(!is.na(title_output_format) && isFALSE(grepl("_", title_output_format)) && isFALSE(grepl("^%", title_output_format)))) {
      new_list$x$metadata$data$title$type <- "string"
      new_list$x$metadata$data$title$type_id <- paste0("string$", title_input_format)
      new_list$x$metadata$data$title$output_format_id <- paste0("string$", title_output_format)
    }
    if (is.na(title_input_format) && !is.na(title_output_format)) {
      "[title_input_format] and [title_output_format] must both be defined."
    }
    if (!is.na(title_input_format) && is.na(title_output_format)) {
      "[title_input_format] and [title_output_format] must both be defined."
    }
  }


  if (!is.null(subtitle_output_format) && !is.null(subtitle_input_format)) {
    if (isTRUE(grepl("^%", subtitle_output_format))) {
      new_list$x$metadata$data$subtitle$type <- "datetime"
      new_list$x$metadata$data$subtitle$type_id <- paste0("datetime$", subtitle_input_format)
      new_list$x$metadata$data$subtitle$output_format_id <- paste0("datetime$", subtitle_output_format)
    } else if (isTRUE(grepl("_", subtitle_output_format))) {
      new_list$x$metadata$data$subtitle$type <- "number"
      new_list$x$metadata$data$subtitle$type_id <- paste0("number$", subtitle_input_format)
      new_list$x$metadata$data$subtitle$output_format_id <- paste0("number$", subtitle_output_format)
    } else if (isTRUE(!is.na(subtitle_output_format) && isFALSE(grepl("_", subtitle_output_format)) && isFALSE(grepl("^%", subtitle_output_format)))) {
      new_list$x$metadata$data$subtitle$type <- "string"
      new_list$x$metadata$data$subtitle$type_id <- paste0("string$", subtitle_input_format)
      new_list$x$metadata$data$subtitle$output_format_id <- paste0("string$", subtitle_output_format)
    }
    if (is.na(subtitle_input_format) && !is.na(subtitle_output_format)) {
      "[subtitle_input_format] and [subtitle_output_format] must both be defined."
    }
    if (!is.na(subtitle_input_format) && is.na(subtitle_output_format)) {
      "[subtitle_input_format] and [subtitle_output_format] must both be defined."
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
  deep_merge(old_list, new_list)
}
