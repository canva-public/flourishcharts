#' Bind line chart race data
#' @name bind_horserace_data
#' @param horserace_data Horserace data.
#' @param captions_data Captions data.
#' @param horserace_name Label. The name of each entrant. Suggested data type hints: string. Flourish type hint: column
#' @param horserace_stages Values. Raw scores, which will be automatically converted to ranks. Column names will be used to populate the X axis of the chart. Suggested data type hints: number. Flourish type hint: columns
#' @param horserace_category Color by. Select a column to color the lines by. If omitted, colors will be assigned per name. Suggested data type hints: string. Flourish type hint: column
#' @param horserace_pic Image. Add an image URL or right-click on a cell to upload an image. Suggested data type hints: string. Flourish type hint: column
#' @param horserace_filter Filter. Hide/show entrants based on the values in this column. Suggested data type hints: string, number, datetime. Flourish type hint: column
#' @param captions_from Stage to show. Must match the column headers in the main datasheet. Suggested data type hints: string. Flourish type hint: column
#' @param captions_to Stage to hide. Must match the column headers in the main datasheet. Suggested data type hints: string. Flourish type hint: column
#' @param captions_text Text. Text or HTML to show. Suggested data type hints: string. Flourish type hint: column
#' @param captions_image Image. Image to show. Suggested data type hints: string. Flourish type hint: column
#' @param captions_image_input_format Formats/parses dates, strings, and numbers for the image column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param captions_image_output_format Formats/parses dates, strings, and numbers for the image column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param captions_to_input_format Formats/parses dates, strings, and numbers for the to column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param captions_to_output_format Formats/parses dates, strings, and numbers for the to column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param captions_from_input_format Formats/parses dates, strings, and numbers for the from column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param captions_from_output_format Formats/parses dates, strings, and numbers for the from column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param captions_text_input_format Formats/parses dates, strings, and numbers for the text column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param captions_text_output_format Formats/parses dates, strings, and numbers for the text column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param horserace_category_input_format Formats/parses dates, strings, and numbers for the category column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param horserace_category_output_format Formats/parses dates, strings, and numbers for the category column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param horserace_filter_input_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param horserace_filter_output_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param horserace_pic_input_format Formats/parses dates, strings, and numbers for the pic column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param horserace_pic_output_format Formats/parses dates, strings, and numbers for the pic column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param horserace_name_input_format Formats/parses dates, strings, and numbers for the name column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param horserace_name_output_format Formats/parses dates, strings, and numbers for the name column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param horserace_stages_input_format Formats/parses dates, strings, and numbers for the stages column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param horserace_stages_output_format Formats/parses dates, strings, and numbers for the stages column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "horserace", api_key = Sys.getenv("FLOURISH_API_KEY")) |>
#'   bind_horserace_data(gapminder)
#' )
#' @export

bind_horserace_data <- function(
    .,
    horserace_data = NULL,
    captions_data = NULL,
    horserace_name = NULL,
    horserace_stages = NULL,
    horserace_category = NULL,
    horserace_pic = NULL,
    horserace_filter = NULL,
    captions_from = NULL,
    captions_to = NULL,
    captions_text = NULL,
    captions_image = NULL,
    captions_image_input_format = NULL,
    captions_image_output_format = NULL,
    captions_to_input_format = NULL,
    captions_to_output_format = NULL,
    captions_from_input_format = NULL,
    captions_from_output_format = NULL,
    captions_text_input_format = NULL,
    captions_text_output_format = NULL,
    horserace_category_input_format = NULL,
    horserace_category_output_format = NULL,
    horserace_filter_input_format = NULL,
    horserace_filter_output_format = NULL,
    horserace_pic_input_format = NULL,
    horserace_pic_output_format = NULL,
    horserace_name_input_format = NULL,
    horserace_name_output_format = NULL,
    horserace_stages_input_format = NULL,
    horserace_stages_output_format = NULL) {
  bindings_error(., "horserace")

  old_list <- .
  new_list <- list()

  if (!is.null(horserace_data)) {
    columns_horserace_data <- c(paste(horserace_name), paste(horserace_stages), paste(horserace_category), paste(horserace_pic), paste(horserace_filter), NULL)
    columns_horserace_data <- columns_horserace_data[!sapply(columns_horserace_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_horserace_data, split = ",", fixed = TRUE),
      data = horserace_data
    )
    int_columns_horserace_data <- sapply(horserace_data, is.integer)
    horserace_data[, int_columns_horserace_data] <- lapply(horserace_data[, int_columns_horserace_data], as.character)
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
  new_list$x$data$horserace <- horserace_data
  new_list$x$data$captions <- captions_data
  new_list$x$bindings$horserace$name <- horserace_name

  if (is.null(horserace_stages)) {
    new_list$x$bindings$horserace$stages <- "list"
  } else {
    new_list$x$bindings$horserace$stages <- horserace_stages
  }

  new_list$x$bindings$horserace$category <- horserace_category
  new_list$x$bindings$horserace$pic <- horserace_pic
  new_list$x$bindings$horserace$filter <- horserace_filter
  new_list$x$bindings$captions$from <- captions_from
  new_list$x$bindings$captions$to <- captions_to
  new_list$x$bindings$captions$text <- captions_text
  new_list$x$bindings$captions$image <- captions_image


  if (!is.null(horserace_name_output_format) && !is.null(horserace_name_input_format)) {
    if (isTRUE(grepl("^%", horserace_name_output_format))) {
      new_list$x$metadata$horserace$name$type <- "datetime"
      new_list$x$metadata$horserace$name$type_id <- paste0("datetime$", horserace_name_input_format)
      new_list$x$metadata$horserace$name$output_format_id <- paste0("datetime$", horserace_name_output_format)
    } else if (isTRUE(grepl("_", horserace_name_output_format))) {
      new_list$x$metadata$horserace$name$type <- "number"
      new_list$x$metadata$horserace$name$type_id <- paste0("number$", horserace_name_input_format)
      new_list$x$metadata$horserace$name$output_format_id <- paste0("number$", horserace_name_output_format)
    } else if (isTRUE(!is.na(horserace_name_output_format) && isFALSE(grepl("_", horserace_name_output_format)) && isFALSE(grepl("^%", horserace_name_output_format)))) {
      new_list$x$metadata$horserace$name$type <- "string"
      new_list$x$metadata$horserace$name$type_id <- paste0("string$", horserace_name_input_format)
      new_list$x$metadata$horserace$name$output_format_id <- paste0("string$", horserace_name_output_format)
    }
    if (is.na(horserace_name_input_format) && !is.na(horserace_name_output_format)) {
      "[horserace_name_input_format] and [horserace_name_output_format] must both be defined."
    }
    if (!is.na(horserace_name_input_format) && is.na(horserace_name_output_format)) {
      "[horserace_name_input_format] and [horserace_name_output_format] must both be defined."
    }
  }


  if (!is.null(horserace_stages_output_format) && !is.null(horserace_stages_input_format)) {
    if (isTRUE(grepl("^%", horserace_stages_output_format))) {
      new_list$x$metadata$horserace$stages$type <- "datetime"
      new_list$x$metadata$horserace$stages$type_id <- paste0("datetime$", horserace_stages_input_format)
      new_list$x$metadata$horserace$stages$output_format_id <- paste0("datetime$", horserace_stages_output_format)
    } else if (isTRUE(grepl("_", horserace_stages_output_format))) {
      new_list$x$metadata$horserace$stages$type <- "number"
      new_list$x$metadata$horserace$stages$type_id <- paste0("number$", horserace_stages_input_format)
      new_list$x$metadata$horserace$stages$output_format_id <- paste0("number$", horserace_stages_output_format)
    } else if (isTRUE(!is.na(horserace_stages_output_format) && isFALSE(grepl("_", horserace_stages_output_format)) && isFALSE(grepl("^%", horserace_stages_output_format)))) {
      new_list$x$metadata$horserace$stages$type <- "string"
      new_list$x$metadata$horserace$stages$type_id <- paste0("string$", horserace_stages_input_format)
      new_list$x$metadata$horserace$stages$output_format_id <- paste0("string$", horserace_stages_output_format)
    }
    if (is.na(horserace_stages_input_format) && !is.na(horserace_stages_output_format)) {
      "[horserace_stages_input_format] and [horserace_stages_output_format] must both be defined."
    }
    if (!is.na(horserace_stages_input_format) && is.na(horserace_stages_output_format)) {
      "[horserace_stages_input_format] and [horserace_stages_output_format] must both be defined."
    }
  }


  if (!is.null(horserace_category_output_format) && !is.null(horserace_category_input_format)) {
    if (isTRUE(grepl("^%", horserace_category_output_format))) {
      new_list$x$metadata$horserace$category$type <- "datetime"
      new_list$x$metadata$horserace$category$type_id <- paste0("datetime$", horserace_category_input_format)
      new_list$x$metadata$horserace$category$output_format_id <- paste0("datetime$", horserace_category_output_format)
    } else if (isTRUE(grepl("_", horserace_category_output_format))) {
      new_list$x$metadata$horserace$category$type <- "number"
      new_list$x$metadata$horserace$category$type_id <- paste0("number$", horserace_category_input_format)
      new_list$x$metadata$horserace$category$output_format_id <- paste0("number$", horserace_category_output_format)
    } else if (isTRUE(!is.na(horserace_category_output_format) && isFALSE(grepl("_", horserace_category_output_format)) && isFALSE(grepl("^%", horserace_category_output_format)))) {
      new_list$x$metadata$horserace$category$type <- "string"
      new_list$x$metadata$horserace$category$type_id <- paste0("string$", horserace_category_input_format)
      new_list$x$metadata$horserace$category$output_format_id <- paste0("string$", horserace_category_output_format)
    }
    if (is.na(horserace_category_input_format) && !is.na(horserace_category_output_format)) {
      "[horserace_category_input_format] and [horserace_category_output_format] must both be defined."
    }
    if (!is.na(horserace_category_input_format) && is.na(horserace_category_output_format)) {
      "[horserace_category_input_format] and [horserace_category_output_format] must both be defined."
    }
  }


  if (!is.null(horserace_pic_output_format) && !is.null(horserace_pic_input_format)) {
    if (isTRUE(grepl("^%", horserace_pic_output_format))) {
      new_list$x$metadata$horserace$pic$type <- "datetime"
      new_list$x$metadata$horserace$pic$type_id <- paste0("datetime$", horserace_pic_input_format)
      new_list$x$metadata$horserace$pic$output_format_id <- paste0("datetime$", horserace_pic_output_format)
    } else if (isTRUE(grepl("_", horserace_pic_output_format))) {
      new_list$x$metadata$horserace$pic$type <- "number"
      new_list$x$metadata$horserace$pic$type_id <- paste0("number$", horserace_pic_input_format)
      new_list$x$metadata$horserace$pic$output_format_id <- paste0("number$", horserace_pic_output_format)
    } else if (isTRUE(!is.na(horserace_pic_output_format) && isFALSE(grepl("_", horserace_pic_output_format)) && isFALSE(grepl("^%", horserace_pic_output_format)))) {
      new_list$x$metadata$horserace$pic$type <- "string"
      new_list$x$metadata$horserace$pic$type_id <- paste0("string$", horserace_pic_input_format)
      new_list$x$metadata$horserace$pic$output_format_id <- paste0("string$", horserace_pic_output_format)
    }
    if (is.na(horserace_pic_input_format) && !is.na(horserace_pic_output_format)) {
      "[horserace_pic_input_format] and [horserace_pic_output_format] must both be defined."
    }
    if (!is.na(horserace_pic_input_format) && is.na(horserace_pic_output_format)) {
      "[horserace_pic_input_format] and [horserace_pic_output_format] must both be defined."
    }
  }


  if (!is.null(horserace_filter_output_format) && !is.null(horserace_filter_input_format)) {
    if (isTRUE(grepl("^%", horserace_filter_output_format))) {
      new_list$x$metadata$horserace$filter$type <- "datetime"
      new_list$x$metadata$horserace$filter$type_id <- paste0("datetime$", horserace_filter_input_format)
      new_list$x$metadata$horserace$filter$output_format_id <- paste0("datetime$", horserace_filter_output_format)
    } else if (isTRUE(grepl("_", horserace_filter_output_format))) {
      new_list$x$metadata$horserace$filter$type <- "number"
      new_list$x$metadata$horserace$filter$type_id <- paste0("number$", horserace_filter_input_format)
      new_list$x$metadata$horserace$filter$output_format_id <- paste0("number$", horserace_filter_output_format)
    } else if (isTRUE(!is.na(horserace_filter_output_format) && isFALSE(grepl("_", horserace_filter_output_format)) && isFALSE(grepl("^%", horserace_filter_output_format)))) {
      new_list$x$metadata$horserace$filter$type <- "string"
      new_list$x$metadata$horserace$filter$type_id <- paste0("string$", horserace_filter_input_format)
      new_list$x$metadata$horserace$filter$output_format_id <- paste0("string$", horserace_filter_output_format)
    }
    if (is.na(horserace_filter_input_format) && !is.na(horserace_filter_output_format)) {
      "[horserace_filter_input_format] and [horserace_filter_output_format] must both be defined."
    }
    if (!is.na(horserace_filter_input_format) && is.na(horserace_filter_output_format)) {
      "[horserace_filter_input_format] and [horserace_filter_output_format] must both be defined."
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
