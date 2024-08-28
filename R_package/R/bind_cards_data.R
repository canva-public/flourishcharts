#' Bind cards data
#' @name bind_cards_data
#' @param cards_data Cards data.
#' @param title Title. Suggested data type hints: string. Flourish type hint: column
#' @param image Image. Suggested data type hints: string. Flourish type hint: column
#' @param category Categories. Optional category column to color the cards. Suggested data type hints: string. Flourish type hint: column
#' @param subtitle Subtitle. Suggested data type hints: string. Flourish type hint: column
#' @param text Text. Suggested data type hints: string. Flourish type hint: columns
#' @param audio Audio. Add an audio file to the card, which will play when the card is clicked. This will disable popup behavior. Suggested data type hints: string. Flourish type hint: column
#' @param filter Filter. Suggested data type hints: string, number, datetime. Flourish type hint: column
#' @param metadata Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in custom popups and panelsSuggested data type hints: string, number, datetime. Flourish type hint: columns
#' @param audio_input_format Formats/parses dates, strings, and numbers for the audio column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param audio_output_format Formats/parses dates, strings, and numbers for the audio column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param category_input_format Formats/parses dates, strings, and numbers for the category column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param category_output_format Formats/parses dates, strings, and numbers for the category column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param filter_input_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param filter_output_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param image_input_format Formats/parses dates, strings, and numbers for the image column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param image_output_format Formats/parses dates, strings, and numbers for the image column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param metadata_input_format Formats/parses dates, strings, and numbers for the metadata column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param metadata_output_format Formats/parses dates, strings, and numbers for the metadata column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param subtitle_input_format Formats/parses dates, strings, and numbers for the subtitle column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param subtitle_output_format Formats/parses dates, strings, and numbers for the subtitle column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param text_input_format Formats/parses dates, strings, and numbers for the text column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param text_output_format Formats/parses dates, strings, and numbers for the text column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param title_input_format Formats/parses dates, strings, and numbers for the title column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param title_output_format Formats/parses dates, strings, and numbers for the title column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "cards", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_cards_data(gapminder)
#' )
#' @export

bind_cards_data <- function(
    .,
    cards_data = NULL,
    title = NULL,
    image = NULL,
    category = NULL,
    subtitle = NULL,
    text = NULL,
    audio = NULL,
    filter = NULL,
    metadata = NULL,
    audio_input_format = NULL,
    audio_output_format = NULL,
    category_input_format = NULL,
    category_output_format = NULL,
    filter_input_format = NULL,
    filter_output_format = NULL,
    image_input_format = NULL,
    image_output_format = NULL,
    metadata_input_format = NULL,
    metadata_output_format = NULL,
    subtitle_input_format = NULL,
    subtitle_output_format = NULL,
    text_input_format = NULL,
    text_output_format = NULL,
    title_input_format = NULL,
    title_output_format = NULL) {
  bindings_error(., "cards")

  old_list <- .
  new_list <- list()

  if (!is.null(cards_data)) {
    columns_cards_data <- c(paste(title), paste(image), paste(category), paste(subtitle), paste(text), paste(audio), paste(filter), paste(metadata), NULL)
    columns_cards_data <- columns_cards_data[!sapply(columns_cards_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_cards_data, split = ",", fixed = TRUE),
      data = cards_data
    )
    int_columns_cards_data <- sapply(cards_data, is.integer)
    cards_data[, int_columns_cards_data] <- lapply(cards_data[, int_columns_cards_data], as.character)
  }
  new_list$x$data$cards <- cards_data
  new_list$x$bindings$cards$title <- title
  new_list$x$bindings$cards$image <- image
  new_list$x$bindings$cards$category <- category
  new_list$x$bindings$cards$subtitle <- subtitle

  if (is.null(text)) {
    new_list$x$bindings$cards$text <- "list"
  } else {
    new_list$x$bindings$cards$text <- text
  }

  new_list$x$bindings$cards$audio <- audio
  new_list$x$bindings$cards$filter <- filter

  if (is.null(metadata)) {
    new_list$x$bindings$cards$metadata <- "list"
  } else {
    new_list$x$bindings$cards$metadata <- metadata
  }



  if (!is.null(title_output_format) && !is.null(title_input_format)) {
    if (isTRUE(grepl("^%", title_output_format))) {
      new_list$x$metadata$cards$title$type <- "datetime"
      new_list$x$metadata$cards$title$type_id <- paste0("datetime$", title_input_format)
      new_list$x$metadata$cards$title$output_format_id <- paste0("datetime$", title_output_format)
    } else if (isTRUE(grepl("_", title_output_format))) {
      new_list$x$metadata$cards$title$type <- "number"
      new_list$x$metadata$cards$title$type_id <- paste0("number$", title_input_format)
      new_list$x$metadata$cards$title$output_format_id <- paste0("number$", title_output_format)
    } else if (isTRUE(!is.na(title_output_format) && isFALSE(grepl("_", title_output_format)) && isFALSE(grepl("^%", title_output_format)))) {
      new_list$x$metadata$cards$title$type <- "string"
      new_list$x$metadata$cards$title$type_id <- paste0("string$", title_input_format)
      new_list$x$metadata$cards$title$output_format_id <- paste0("string$", title_output_format)
    }
    if (is.na(title_input_format) && !is.na(title_output_format)) {
      "[title_input_format] and [title_output_format] must both be defined."
    }
    if (!is.na(title_input_format) && is.na(title_output_format)) {
      "[title_input_format] and [title_output_format] must both be defined."
    }
  }


  if (!is.null(image_output_format) && !is.null(image_input_format)) {
    if (isTRUE(grepl("^%", image_output_format))) {
      new_list$x$metadata$cards$image$type <- "datetime"
      new_list$x$metadata$cards$image$type_id <- paste0("datetime$", image_input_format)
      new_list$x$metadata$cards$image$output_format_id <- paste0("datetime$", image_output_format)
    } else if (isTRUE(grepl("_", image_output_format))) {
      new_list$x$metadata$cards$image$type <- "number"
      new_list$x$metadata$cards$image$type_id <- paste0("number$", image_input_format)
      new_list$x$metadata$cards$image$output_format_id <- paste0("number$", image_output_format)
    } else if (isTRUE(!is.na(image_output_format) && isFALSE(grepl("_", image_output_format)) && isFALSE(grepl("^%", image_output_format)))) {
      new_list$x$metadata$cards$image$type <- "string"
      new_list$x$metadata$cards$image$type_id <- paste0("string$", image_input_format)
      new_list$x$metadata$cards$image$output_format_id <- paste0("string$", image_output_format)
    }
    if (is.na(image_input_format) && !is.na(image_output_format)) {
      "[image_input_format] and [image_output_format] must both be defined."
    }
    if (!is.na(image_input_format) && is.na(image_output_format)) {
      "[image_input_format] and [image_output_format] must both be defined."
    }
  }


  if (!is.null(category_output_format) && !is.null(category_input_format)) {
    if (isTRUE(grepl("^%", category_output_format))) {
      new_list$x$metadata$cards$category$type <- "datetime"
      new_list$x$metadata$cards$category$type_id <- paste0("datetime$", category_input_format)
      new_list$x$metadata$cards$category$output_format_id <- paste0("datetime$", category_output_format)
    } else if (isTRUE(grepl("_", category_output_format))) {
      new_list$x$metadata$cards$category$type <- "number"
      new_list$x$metadata$cards$category$type_id <- paste0("number$", category_input_format)
      new_list$x$metadata$cards$category$output_format_id <- paste0("number$", category_output_format)
    } else if (isTRUE(!is.na(category_output_format) && isFALSE(grepl("_", category_output_format)) && isFALSE(grepl("^%", category_output_format)))) {
      new_list$x$metadata$cards$category$type <- "string"
      new_list$x$metadata$cards$category$type_id <- paste0("string$", category_input_format)
      new_list$x$metadata$cards$category$output_format_id <- paste0("string$", category_output_format)
    }
    if (is.na(category_input_format) && !is.na(category_output_format)) {
      "[category_input_format] and [category_output_format] must both be defined."
    }
    if (!is.na(category_input_format) && is.na(category_output_format)) {
      "[category_input_format] and [category_output_format] must both be defined."
    }
  }


  if (!is.null(subtitle_output_format) && !is.null(subtitle_input_format)) {
    if (isTRUE(grepl("^%", subtitle_output_format))) {
      new_list$x$metadata$cards$subtitle$type <- "datetime"
      new_list$x$metadata$cards$subtitle$type_id <- paste0("datetime$", subtitle_input_format)
      new_list$x$metadata$cards$subtitle$output_format_id <- paste0("datetime$", subtitle_output_format)
    } else if (isTRUE(grepl("_", subtitle_output_format))) {
      new_list$x$metadata$cards$subtitle$type <- "number"
      new_list$x$metadata$cards$subtitle$type_id <- paste0("number$", subtitle_input_format)
      new_list$x$metadata$cards$subtitle$output_format_id <- paste0("number$", subtitle_output_format)
    } else if (isTRUE(!is.na(subtitle_output_format) && isFALSE(grepl("_", subtitle_output_format)) && isFALSE(grepl("^%", subtitle_output_format)))) {
      new_list$x$metadata$cards$subtitle$type <- "string"
      new_list$x$metadata$cards$subtitle$type_id <- paste0("string$", subtitle_input_format)
      new_list$x$metadata$cards$subtitle$output_format_id <- paste0("string$", subtitle_output_format)
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
      new_list$x$metadata$cards$text$type <- "datetime"
      new_list$x$metadata$cards$text$type_id <- paste0("datetime$", text_input_format)
      new_list$x$metadata$cards$text$output_format_id <- paste0("datetime$", text_output_format)
    } else if (isTRUE(grepl("_", text_output_format))) {
      new_list$x$metadata$cards$text$type <- "number"
      new_list$x$metadata$cards$text$type_id <- paste0("number$", text_input_format)
      new_list$x$metadata$cards$text$output_format_id <- paste0("number$", text_output_format)
    } else if (isTRUE(!is.na(text_output_format) && isFALSE(grepl("_", text_output_format)) && isFALSE(grepl("^%", text_output_format)))) {
      new_list$x$metadata$cards$text$type <- "string"
      new_list$x$metadata$cards$text$type_id <- paste0("string$", text_input_format)
      new_list$x$metadata$cards$text$output_format_id <- paste0("string$", text_output_format)
    }
    if (is.na(text_input_format) && !is.na(text_output_format)) {
      "[text_input_format] and [text_output_format] must both be defined."
    }
    if (!is.na(text_input_format) && is.na(text_output_format)) {
      "[text_input_format] and [text_output_format] must both be defined."
    }
  }


  if (!is.null(audio_output_format) && !is.null(audio_input_format)) {
    if (isTRUE(grepl("^%", audio_output_format))) {
      new_list$x$metadata$cards$audio$type <- "datetime"
      new_list$x$metadata$cards$audio$type_id <- paste0("datetime$", audio_input_format)
      new_list$x$metadata$cards$audio$output_format_id <- paste0("datetime$", audio_output_format)
    } else if (isTRUE(grepl("_", audio_output_format))) {
      new_list$x$metadata$cards$audio$type <- "number"
      new_list$x$metadata$cards$audio$type_id <- paste0("number$", audio_input_format)
      new_list$x$metadata$cards$audio$output_format_id <- paste0("number$", audio_output_format)
    } else if (isTRUE(!is.na(audio_output_format) && isFALSE(grepl("_", audio_output_format)) && isFALSE(grepl("^%", audio_output_format)))) {
      new_list$x$metadata$cards$audio$type <- "string"
      new_list$x$metadata$cards$audio$type_id <- paste0("string$", audio_input_format)
      new_list$x$metadata$cards$audio$output_format_id <- paste0("string$", audio_output_format)
    }
    if (is.na(audio_input_format) && !is.na(audio_output_format)) {
      "[audio_input_format] and [audio_output_format] must both be defined."
    }
    if (!is.na(audio_input_format) && is.na(audio_output_format)) {
      "[audio_input_format] and [audio_output_format] must both be defined."
    }
  }


  if (!is.null(filter_output_format) && !is.null(filter_input_format)) {
    if (isTRUE(grepl("^%", filter_output_format))) {
      new_list$x$metadata$cards$filter$type <- "datetime"
      new_list$x$metadata$cards$filter$type_id <- paste0("datetime$", filter_input_format)
      new_list$x$metadata$cards$filter$output_format_id <- paste0("datetime$", filter_output_format)
    } else if (isTRUE(grepl("_", filter_output_format))) {
      new_list$x$metadata$cards$filter$type <- "number"
      new_list$x$metadata$cards$filter$type_id <- paste0("number$", filter_input_format)
      new_list$x$metadata$cards$filter$output_format_id <- paste0("number$", filter_output_format)
    } else if (isTRUE(!is.na(filter_output_format) && isFALSE(grepl("_", filter_output_format)) && isFALSE(grepl("^%", filter_output_format)))) {
      new_list$x$metadata$cards$filter$type <- "string"
      new_list$x$metadata$cards$filter$type_id <- paste0("string$", filter_input_format)
      new_list$x$metadata$cards$filter$output_format_id <- paste0("string$", filter_output_format)
    }
    if (is.na(filter_input_format) && !is.na(filter_output_format)) {
      "[filter_input_format] and [filter_output_format] must both be defined."
    }
    if (!is.na(filter_input_format) && is.na(filter_output_format)) {
      "[filter_input_format] and [filter_output_format] must both be defined."
    }
  }


  if (!is.null(metadata_output_format) && !is.null(metadata_input_format)) {
    if (isTRUE(grepl("^%", metadata_output_format))) {
      new_list$x$metadata$cards$metadata$type <- "datetime"
      new_list$x$metadata$cards$metadata$type_id <- paste0("datetime$", metadata_input_format)
      new_list$x$metadata$cards$metadata$output_format_id <- paste0("datetime$", metadata_output_format)
    } else if (isTRUE(grepl("_", metadata_output_format))) {
      new_list$x$metadata$cards$metadata$type <- "number"
      new_list$x$metadata$cards$metadata$type_id <- paste0("number$", metadata_input_format)
      new_list$x$metadata$cards$metadata$output_format_id <- paste0("number$", metadata_output_format)
    } else if (isTRUE(!is.na(metadata_output_format) && isFALSE(grepl("_", metadata_output_format)) && isFALSE(grepl("^%", metadata_output_format)))) {
      new_list$x$metadata$cards$metadata$type <- "string"
      new_list$x$metadata$cards$metadata$type_id <- paste0("string$", metadata_input_format)
      new_list$x$metadata$cards$metadata$output_format_id <- paste0("string$", metadata_output_format)
    }
    if (is.na(metadata_input_format) && !is.na(metadata_output_format)) {
      "[metadata_input_format] and [metadata_output_format] must both be defined."
    }
    if (!is.na(metadata_input_format) && is.na(metadata_output_format)) {
      "[metadata_input_format] and [metadata_output_format] must both be defined."
    }
  }
  deep_merge(old_list, new_list)
}
