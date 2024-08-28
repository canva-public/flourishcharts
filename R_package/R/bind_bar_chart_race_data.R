#' Bind bar chart race data
#' @name bind_bar_chart_race_data
#' @param data Data.
#' @param captions_data Captions data.
#' @param label Label. A column containing the names of the bars, e.g. countries or people. Suggested data type hints: string. Flourish type hint: column
#' @param values Values. Multiple columns of numbers, each column representing a point in time Suggested data type hints: number. Flourish type hint: columns
#' @param category Categories. Optional category column to color the bars Make sure the Color mode setting is set to By Category in the Bar colors settings panel. Suggested data type hints: string. Flourish type hint: column
#' @param image Image. Optional column with URLs of images. Suggested data type hints: string. Flourish type hint: column
#' @param captions_from Time to show. Must match the column headers in the main data sheet. Suggested data type hints: string, datetime. Flourish type hint: column
#' @param captions_to Time to hide. Must match the column headers in the main data sheet. Suggested data type hints: string, datetime. Flourish type hint: column
#' @param captions_text Text. Text or HTML to show. Suggested data type hints: string. Flourish type hint: column
#' @param captions_image Image. Image to show. Add an image URL or right-click on a cell to upload an image. Suggested data type hints: string. Flourish type hint: column
#' @param captions_image_input_format Formats/parses dates, strings, and numbers for the image column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param captions_image_output_format Formats/parses dates, strings, and numbers for the image column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param captions_text_input_format Formats/parses dates, strings, and numbers for the text column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param captions_text_output_format Formats/parses dates, strings, and numbers for the text column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param captions_to_input_format Formats/parses dates, strings, and numbers for the to column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param captions_to_output_format Formats/parses dates, strings, and numbers for the to column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param captions_from_input_format Formats/parses dates, strings, and numbers for the from column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param captions_from_output_format Formats/parses dates, strings, and numbers for the from column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param category_input_format Formats/parses dates, strings, and numbers for the category column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param category_output_format Formats/parses dates, strings, and numbers for the category column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param image_input_format Formats/parses dates, strings, and numbers for the image column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param image_output_format Formats/parses dates, strings, and numbers for the image column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param label_input_format Formats/parses dates, strings, and numbers for the label column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param label_output_format Formats/parses dates, strings, and numbers for the label column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param values_input_format Formats/parses dates, strings, and numbers for the values column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param values_output_format Formats/parses dates, strings, and numbers for the values column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "bar_race", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_bar_chart_race_data(gapminder)
#' )
#' @export

bind_bar_chart_race_data <- function(
    .,
    data = NULL,
    captions_data = NULL,
    label = NULL,
    values = NULL,
    category = NULL,
    image = NULL,
    captions_from = NULL,
    captions_to = NULL,
    captions_text = NULL,
    captions_image = NULL,
    captions_image_input_format = NULL,
    captions_image_output_format = NULL,
    captions_text_input_format = NULL,
    captions_text_output_format = NULL,
    captions_to_input_format = NULL,
    captions_to_output_format = NULL,
    captions_from_input_format = NULL,
    captions_from_output_format = NULL,
    category_input_format = NULL,
    category_output_format = NULL,
    image_input_format = NULL,
    image_output_format = NULL,
    label_input_format = NULL,
    label_output_format = NULL,
    values_input_format = NULL,
    values_output_format = NULL) {
  bindings_error(., "bar_chart_race")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(label), paste(values), paste(category), paste(image), NULL)
    columns_data <- columns_data[!sapply(columns_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_data, split = ",", fixed = TRUE),
      data = data
    )
    int_columns_data <- sapply(data, is.integer)
    data[, int_columns_data] <- lapply(data[, int_columns_data], as.character)
  }
  if (!is.null(captions_data)) {
    columns_captions_data <- c(paste(captions_from), paste(captions_to), paste(captions_text), paste(captions_image), NULL)
    columns_captions_data <- columns_captions_data[!sapply(columns_captions_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_captions_data, split = ",", fixed = TRUE),
      data = captions_data
    )
    int_columns_captions_data <- sapply(captions_data, is.integer)
    captions_data[, int_columns_captions_data] <- lapply(captions_data[, int_columns_captions_data], as.character)
  }
  new_list$x$data$data <- data
  new_list$x$data$captions <- captions_data
  new_list$x$bindings$data$label <- label

  if (is.null(values)) {
    new_list$x$bindings$data$values <- "list"
  } else {
    new_list$x$bindings$data$values <- values
  }

  new_list$x$bindings$data$category <- category
  new_list$x$bindings$data$image <- image
  new_list$x$bindings$captions$from <- captions_from
  new_list$x$bindings$captions$to <- captions_to
  new_list$x$bindings$captions$text <- captions_text
  new_list$x$bindings$captions$image <- captions_image


  if (!is.null(label_output_format) && !is.null(label_input_format)) {
    if (isTRUE(grepl("^%", label_output_format))) {
      new_list$x$metadata$data$label$type <- "datetime"
      new_list$x$metadata$data$label$type_id <- paste0("datetime$", label_input_format)
      new_list$x$metadata$data$label$output_format_id <- paste0("datetime$", label_output_format)
    } else if (isTRUE(grepl("_", label_output_format))) {
      new_list$x$metadata$data$label$type <- "number"
      new_list$x$metadata$data$label$type_id <- paste0("number$", label_input_format)
      new_list$x$metadata$data$label$output_format_id <- paste0("number$", label_output_format)
    } else if (isTRUE(!is.na(label_output_format) && isFALSE(grepl("_", label_output_format)) && isFALSE(grepl("^%", label_output_format)))) {
      new_list$x$metadata$data$label$type <- "string"
      new_list$x$metadata$data$label$type_id <- paste0("string$", label_input_format)
      new_list$x$metadata$data$label$output_format_id <- paste0("string$", label_output_format)
    }
    if (is.na(label_input_format) && !is.na(label_output_format)) {
      "[label_input_format] and [label_output_format] must both be defined."
    }
    if (!is.na(label_input_format) && is.na(label_output_format)) {
      "[label_input_format] and [label_output_format] must both be defined."
    }
  }


  if (!is.null(values_output_format) && !is.null(values_input_format)) {
    if (isTRUE(grepl("^%", values_output_format))) {
      new_list$x$metadata$data$values$type <- "datetime"
      new_list$x$metadata$data$values$type_id <- paste0("datetime$", values_input_format)
      new_list$x$metadata$data$values$output_format_id <- paste0("datetime$", values_output_format)
    } else if (isTRUE(grepl("_", values_output_format))) {
      new_list$x$metadata$data$values$type <- "number"
      new_list$x$metadata$data$values$type_id <- paste0("number$", values_input_format)
      new_list$x$metadata$data$values$output_format_id <- paste0("number$", values_output_format)
    } else if (isTRUE(!is.na(values_output_format) && isFALSE(grepl("_", values_output_format)) && isFALSE(grepl("^%", values_output_format)))) {
      new_list$x$metadata$data$values$type <- "string"
      new_list$x$metadata$data$values$type_id <- paste0("string$", values_input_format)
      new_list$x$metadata$data$values$output_format_id <- paste0("string$", values_output_format)
    }
    if (is.na(values_input_format) && !is.na(values_output_format)) {
      "[values_input_format] and [values_output_format] must both be defined."
    }
    if (!is.na(values_input_format) && is.na(values_output_format)) {
      "[values_input_format] and [values_output_format] must both be defined."
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


  if (!is.null(captions_from_output_format) && !is.null(captions_from_input_format)) {
    if (isTRUE(grepl("^%", captions_from_output_format))) {
      new_list$x$metadata$captions$from$type <- "datetime"
      new_list$x$metadata$captions$from$type_id <- paste0("datetime$", captions_from_input_format)
      new_list$x$metadata$captions$from$output_format_id <- paste0("datetime$", captions_from_output_format)
    } else if (isTRUE(grepl("_", captions_from_output_format))) {
      new_list$x$metadata$captions$from$type <- "number"
      new_list$x$metadata$captions$from$type_id <- paste0("number$", captions_from_input_format)
      new_list$x$metadata$captions$from$output_format_id <- paste0("number$", captions_from_output_format)
    } else if (isTRUE(!is.na(captions_from_output_format) && isFALSE(grepl("_", captions_from_output_format)) && isFALSE(grepl("^%", captions_from_output_format)))) {
      new_list$x$metadata$captions$from$type <- "string"
      new_list$x$metadata$captions$from$type_id <- paste0("string$", captions_from_input_format)
      new_list$x$metadata$captions$from$output_format_id <- paste0("string$", captions_from_output_format)
    }
    if (is.na(captions_from_input_format) && !is.na(captions_from_output_format)) {
      "[captions_from_input_format] and [captions_from_output_format] must both be defined."
    }
    if (!is.na(captions_from_input_format) && is.na(captions_from_output_format)) {
      "[captions_from_input_format] and [captions_from_output_format] must both be defined."
    }
  }


  if (!is.null(captions_to_output_format) && !is.null(captions_to_input_format)) {
    if (isTRUE(grepl("^%", captions_to_output_format))) {
      new_list$x$metadata$captions$to$type <- "datetime"
      new_list$x$metadata$captions$to$type_id <- paste0("datetime$", captions_to_input_format)
      new_list$x$metadata$captions$to$output_format_id <- paste0("datetime$", captions_to_output_format)
    } else if (isTRUE(grepl("_", captions_to_output_format))) {
      new_list$x$metadata$captions$to$type <- "number"
      new_list$x$metadata$captions$to$type_id <- paste0("number$", captions_to_input_format)
      new_list$x$metadata$captions$to$output_format_id <- paste0("number$", captions_to_output_format)
    } else if (isTRUE(!is.na(captions_to_output_format) && isFALSE(grepl("_", captions_to_output_format)) && isFALSE(grepl("^%", captions_to_output_format)))) {
      new_list$x$metadata$captions$to$type <- "string"
      new_list$x$metadata$captions$to$type_id <- paste0("string$", captions_to_input_format)
      new_list$x$metadata$captions$to$output_format_id <- paste0("string$", captions_to_output_format)
    }
    if (is.na(captions_to_input_format) && !is.na(captions_to_output_format)) {
      "[captions_to_input_format] and [captions_to_output_format] must both be defined."
    }
    if (!is.na(captions_to_input_format) && is.na(captions_to_output_format)) {
      "[captions_to_input_format] and [captions_to_output_format] must both be defined."
    }
  }


  if (!is.null(captions_text_output_format) && !is.null(captions_text_input_format)) {
    if (isTRUE(grepl("^%", captions_text_output_format))) {
      new_list$x$metadata$captions$text$type <- "datetime"
      new_list$x$metadata$captions$text$type_id <- paste0("datetime$", captions_text_input_format)
      new_list$x$metadata$captions$text$output_format_id <- paste0("datetime$", captions_text_output_format)
    } else if (isTRUE(grepl("_", captions_text_output_format))) {
      new_list$x$metadata$captions$text$type <- "number"
      new_list$x$metadata$captions$text$type_id <- paste0("number$", captions_text_input_format)
      new_list$x$metadata$captions$text$output_format_id <- paste0("number$", captions_text_output_format)
    } else if (isTRUE(!is.na(captions_text_output_format) && isFALSE(grepl("_", captions_text_output_format)) && isFALSE(grepl("^%", captions_text_output_format)))) {
      new_list$x$metadata$captions$text$type <- "string"
      new_list$x$metadata$captions$text$type_id <- paste0("string$", captions_text_input_format)
      new_list$x$metadata$captions$text$output_format_id <- paste0("string$", captions_text_output_format)
    }
    if (is.na(captions_text_input_format) && !is.na(captions_text_output_format)) {
      "[captions_text_input_format] and [captions_text_output_format] must both be defined."
    }
    if (!is.na(captions_text_input_format) && is.na(captions_text_output_format)) {
      "[captions_text_input_format] and [captions_text_output_format] must both be defined."
    }
  }


  if (!is.null(captions_image_output_format) && !is.null(captions_image_input_format)) {
    if (isTRUE(grepl("^%", captions_image_output_format))) {
      new_list$x$metadata$captions$image$type <- "datetime"
      new_list$x$metadata$captions$image$type_id <- paste0("datetime$", captions_image_input_format)
      new_list$x$metadata$captions$image$output_format_id <- paste0("datetime$", captions_image_output_format)
    } else if (isTRUE(grepl("_", captions_image_output_format))) {
      new_list$x$metadata$captions$image$type <- "number"
      new_list$x$metadata$captions$image$type_id <- paste0("number$", captions_image_input_format)
      new_list$x$metadata$captions$image$output_format_id <- paste0("number$", captions_image_output_format)
    } else if (isTRUE(!is.na(captions_image_output_format) && isFALSE(grepl("_", captions_image_output_format)) && isFALSE(grepl("^%", captions_image_output_format)))) {
      new_list$x$metadata$captions$image$type <- "string"
      new_list$x$metadata$captions$image$type_id <- paste0("string$", captions_image_input_format)
      new_list$x$metadata$captions$image$output_format_id <- paste0("string$", captions_image_output_format)
    }
    if (is.na(captions_image_input_format) && !is.na(captions_image_output_format)) {
      "[captions_image_input_format] and [captions_image_output_format] must both be defined."
    }
    if (!is.na(captions_image_input_format) && is.na(captions_image_output_format)) {
      "[captions_image_input_format] and [captions_image_output_format] must both be defined."
    }
  }
  deep_merge(old_list, new_list)
}
