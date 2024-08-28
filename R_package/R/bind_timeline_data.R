#' Bind timeline data
#' @name bind_timeline_data
#' @param data Data.
#' @param time_start Time start
#' @param time_end End time. Sets the duration of the event in time scale mode. Flourish type hint: column
#' @param category Category
#' @param title Title. Title of the content. Suggested data type hints: string, number, datetime. Flourish type hint: column
#' @param subtitle Subtitle. Subtitle of the content. Suggested data type hints: string, number, datetime. Flourish type hint: column
#' @param text Text. Text to display inside the data point. Flourish type hint: column
#' @param image Image. Main image for the event. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
#' @param background Background image. Background image for the event. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
#' @param background_input_format Formats/parses dates, strings, and numbers for the background column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param background_output_format Formats/parses dates, strings, and numbers for the background column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param category_input_format Formats/parses dates, strings, and numbers for the category column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param category_output_format Formats/parses dates, strings, and numbers for the category column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param time_end_input_format Formats/parses dates, strings, and numbers for the time_end column. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param time_end_output_format Formats/parses dates, strings, and numbers for the time_end column. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param image_input_format Formats/parses dates, strings, and numbers for the image column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param image_output_format Formats/parses dates, strings, and numbers for the image column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param time_start_input_format Formats/parses dates, strings, and numbers for the time_start column. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param time_start_output_format Formats/parses dates, strings, and numbers for the time_start column. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param subtitle_input_format Formats/parses dates, strings, and numbers for the subtitle column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param subtitle_output_format Formats/parses dates, strings, and numbers for the subtitle column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param text_input_format Formats/parses dates, strings, and numbers for the text column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param text_output_format Formats/parses dates, strings, and numbers for the text column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param title_input_format Formats/parses dates, strings, and numbers for the title column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param title_output_format Formats/parses dates, strings, and numbers for the title column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "timeline", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_timeline_data(gapminder)
#' )
#' @export

bind_timeline_data <- function(
    .,
    data = NULL,
    time_start = NULL,
    time_end = NULL,
    category = NULL,
    title = NULL,
    subtitle = NULL,
    text = NULL,
    image = NULL,
    background = NULL,
    background_input_format = NULL,
    background_output_format = NULL,
    category_input_format = NULL,
    category_output_format = NULL,
    time_end_input_format = NULL,
    time_end_output_format = NULL,
    image_input_format = NULL,
    image_output_format = NULL,
    time_start_input_format = NULL,
    time_start_output_format = NULL,
    subtitle_input_format = NULL,
    subtitle_output_format = NULL,
    text_input_format = NULL,
    text_output_format = NULL,
    title_input_format = NULL,
    title_output_format = NULL) {
  bindings_error(., "timeline")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(time_start), paste(time_end), paste(category), paste(title), paste(subtitle), paste(text), paste(image), paste(background), NULL)
    columns_data <- columns_data[!sapply(columns_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_data, split = ",", fixed = TRUE),
      data = data
    )
    int_columns_data <- sapply(data, is.integer)
    data[, int_columns_data] <- lapply(data[, int_columns_data], as.character)
  }
  new_list$x$data$data <- data
  new_list$x$bindings$data$time_start <- time_start
  new_list$x$bindings$data$time_end <- time_end
  new_list$x$bindings$data$category <- category
  new_list$x$bindings$data$title <- title
  new_list$x$bindings$data$subtitle <- subtitle
  new_list$x$bindings$data$text <- text
  new_list$x$bindings$data$image <- image
  new_list$x$bindings$data$background <- background


  if (!is.null(time_start_output_format) && !is.null(time_start_input_format)) {
    if (isTRUE(grepl("^%", time_start_output_format))) {
      new_list$x$metadata$data$time_start$type <- "datetime"
      new_list$x$metadata$data$time_start$type_id <- paste0("datetime$", time_start_input_format)
      new_list$x$metadata$data$time_start$output_format_id <- paste0("datetime$", time_start_output_format)
    } else if (isTRUE(grepl("_", time_start_output_format))) {
      new_list$x$metadata$data$time_start$type <- "number"
      new_list$x$metadata$data$time_start$type_id <- paste0("number$", time_start_input_format)
      new_list$x$metadata$data$time_start$output_format_id <- paste0("number$", time_start_output_format)
    } else if (isTRUE(!is.na(time_start_output_format) && isFALSE(grepl("_", time_start_output_format)) && isFALSE(grepl("^%", time_start_output_format)))) {
      new_list$x$metadata$data$time_start$type <- "string"
      new_list$x$metadata$data$time_start$type_id <- paste0("string$", time_start_input_format)
      new_list$x$metadata$data$time_start$output_format_id <- paste0("string$", time_start_output_format)
    }
    if (is.na(time_start_input_format) && !is.na(time_start_output_format)) {
      "[time_start_input_format] and [time_start_output_format] must both be defined."
    }
    if (!is.na(time_start_input_format) && is.na(time_start_output_format)) {
      "[time_start_input_format] and [time_start_output_format] must both be defined."
    }
  }


  if (!is.null(time_end_output_format) && !is.null(time_end_input_format)) {
    if (isTRUE(grepl("^%", time_end_output_format))) {
      new_list$x$metadata$data$time_end$type <- "datetime"
      new_list$x$metadata$data$time_end$type_id <- paste0("datetime$", time_end_input_format)
      new_list$x$metadata$data$time_end$output_format_id <- paste0("datetime$", time_end_output_format)
    } else if (isTRUE(grepl("_", time_end_output_format))) {
      new_list$x$metadata$data$time_end$type <- "number"
      new_list$x$metadata$data$time_end$type_id <- paste0("number$", time_end_input_format)
      new_list$x$metadata$data$time_end$output_format_id <- paste0("number$", time_end_output_format)
    } else if (isTRUE(!is.na(time_end_output_format) && isFALSE(grepl("_", time_end_output_format)) && isFALSE(grepl("^%", time_end_output_format)))) {
      new_list$x$metadata$data$time_end$type <- "string"
      new_list$x$metadata$data$time_end$type_id <- paste0("string$", time_end_input_format)
      new_list$x$metadata$data$time_end$output_format_id <- paste0("string$", time_end_output_format)
    }
    if (is.na(time_end_input_format) && !is.na(time_end_output_format)) {
      "[time_end_input_format] and [time_end_output_format] must both be defined."
    }
    if (!is.na(time_end_input_format) && is.na(time_end_output_format)) {
      "[time_end_input_format] and [time_end_output_format] must both be defined."
    }
  }


  if (!is.null(category_output_format) && !is.null(category_input_format)) {
    if (isTRUE(grepl("^%", category_output_format))) {
      new_list$x$metadata$data$category$type <- "datetime"
      new_list$x$metadata$data$category$type_id <- paste0("datetime$", category_input_format)
      new_list$x$metadata$data$category$output_format_id <- paste0("datetime$", category_output_format)
    } else if (isTRUE(grepl("_", category_output_format))) {
      new_list$x$metadata$data$category$type <- "number"
      new_list$x$metadata$data$category$type_id <- paste0("number$", category_input_format)
      new_list$x$metadata$data$category$output_format_id <- paste0("number$", category_output_format)
    } else if (isTRUE(!is.na(category_output_format) && isFALSE(grepl("_", category_output_format)) && isFALSE(grepl("^%", category_output_format)))) {
      new_list$x$metadata$data$category$type <- "string"
      new_list$x$metadata$data$category$type_id <- paste0("string$", category_input_format)
      new_list$x$metadata$data$category$output_format_id <- paste0("string$", category_output_format)
    }
    if (is.na(category_input_format) && !is.na(category_output_format)) {
      "[category_input_format] and [category_output_format] must both be defined."
    }
    if (!is.na(category_input_format) && is.na(category_output_format)) {
      "[category_input_format] and [category_output_format] must both be defined."
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


  if (!is.null(text_output_format) && !is.null(text_input_format)) {
    if (isTRUE(grepl("^%", text_output_format))) {
      new_list$x$metadata$data$text$type <- "datetime"
      new_list$x$metadata$data$text$type_id <- paste0("datetime$", text_input_format)
      new_list$x$metadata$data$text$output_format_id <- paste0("datetime$", text_output_format)
    } else if (isTRUE(grepl("_", text_output_format))) {
      new_list$x$metadata$data$text$type <- "number"
      new_list$x$metadata$data$text$type_id <- paste0("number$", text_input_format)
      new_list$x$metadata$data$text$output_format_id <- paste0("number$", text_output_format)
    } else if (isTRUE(!is.na(text_output_format) && isFALSE(grepl("_", text_output_format)) && isFALSE(grepl("^%", text_output_format)))) {
      new_list$x$metadata$data$text$type <- "string"
      new_list$x$metadata$data$text$type_id <- paste0("string$", text_input_format)
      new_list$x$metadata$data$text$output_format_id <- paste0("string$", text_output_format)
    }
    if (is.na(text_input_format) && !is.na(text_output_format)) {
      "[text_input_format] and [text_output_format] must both be defined."
    }
    if (!is.na(text_input_format) && is.na(text_output_format)) {
      "[text_input_format] and [text_output_format] must both be defined."
    }
  }


  if (!is.null(image_output_format) && !is.null(image_input_format)) {
    if (isTRUE(grepl("^%", image_output_format))) {
      new_list$x$metadata$data$image$type <- "datetime"
      new_list$x$metadata$data$image$type_id <- paste0("datetime$", image_input_format)
      new_list$x$metadata$data$image$output_format_id <- paste0("datetime$", image_output_format)
    } else if (isTRUE(grepl("_", image_output_format))) {
      new_list$x$metadata$data$image$type <- "number"
      new_list$x$metadata$data$image$type_id <- paste0("number$", image_input_format)
      new_list$x$metadata$data$image$output_format_id <- paste0("number$", image_output_format)
    } else if (isTRUE(!is.na(image_output_format) && isFALSE(grepl("_", image_output_format)) && isFALSE(grepl("^%", image_output_format)))) {
      new_list$x$metadata$data$image$type <- "string"
      new_list$x$metadata$data$image$type_id <- paste0("string$", image_input_format)
      new_list$x$metadata$data$image$output_format_id <- paste0("string$", image_output_format)
    }
    if (is.na(image_input_format) && !is.na(image_output_format)) {
      "[image_input_format] and [image_output_format] must both be defined."
    }
    if (!is.na(image_input_format) && is.na(image_output_format)) {
      "[image_input_format] and [image_output_format] must both be defined."
    }
  }


  if (!is.null(background_output_format) && !is.null(background_input_format)) {
    if (isTRUE(grepl("^%", background_output_format))) {
      new_list$x$metadata$data$background$type <- "datetime"
      new_list$x$metadata$data$background$type_id <- paste0("datetime$", background_input_format)
      new_list$x$metadata$data$background$output_format_id <- paste0("datetime$", background_output_format)
    } else if (isTRUE(grepl("_", background_output_format))) {
      new_list$x$metadata$data$background$type <- "number"
      new_list$x$metadata$data$background$type_id <- paste0("number$", background_input_format)
      new_list$x$metadata$data$background$output_format_id <- paste0("number$", background_output_format)
    } else if (isTRUE(!is.na(background_output_format) && isFALSE(grepl("_", background_output_format)) && isFALSE(grepl("^%", background_output_format)))) {
      new_list$x$metadata$data$background$type <- "string"
      new_list$x$metadata$data$background$type_id <- paste0("string$", background_input_format)
      new_list$x$metadata$data$background$output_format_id <- paste0("string$", background_output_format)
    }
    if (is.na(background_input_format) && !is.na(background_output_format)) {
      "[background_input_format] and [background_output_format] must both be defined."
    }
    if (!is.na(background_input_format) && is.na(background_output_format)) {
      "[background_input_format] and [background_output_format] must both be defined."
    }
  }
  deep_merge(old_list, new_list)
}
