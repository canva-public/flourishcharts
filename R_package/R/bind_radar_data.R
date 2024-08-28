#' Bind radar chart data
#' @name bind_radar_data
#' @param data Data.
#' @param name Name. A text column containing a name for each radar. Suggested data type hints: string. Flourish type hint: column
#' @param values Values. Select three or more numerical columns. Suggested data type hints: number. Flourish type hint: columns
#' @param filter Filter. If set, creates a filter menu or time slider. Suggested data type hints: string, number, datetime. Flourish type hint: column
#' @param color_category Color category. Add a category to color by If empty, the name column will be used for colors. Suggested data type hints: string. Flourish type hint: column
#' @param facet Grid of charts (facet). Create one column for each grouping you want to allow. Suggested data type hints: string. Flourish type hint: columns
#' @param metadata Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in custom popups and panels Suggested data type hints: string, datetime, number. Flourish type hint: columns
#' @param color_category_input_format Formats/parses dates, strings, and numbers for the color_category column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param color_category_output_format Formats/parses dates, strings, and numbers for the color_category column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param filter_input_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param filter_output_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param facet_input_format Formats/parses dates, strings, and numbers for the facet column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param facet_output_format Formats/parses dates, strings, and numbers for the facet column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param metadata_input_format Formats/parses dates, strings, and numbers for the metadata column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param metadata_output_format Formats/parses dates, strings, and numbers for the metadata column. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param name_input_format Formats/parses dates, strings, and numbers for the name column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param name_output_format Formats/parses dates, strings, and numbers for the name column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param values_input_format Formats/parses dates, strings, and numbers for the values column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param values_output_format Formats/parses dates, strings, and numbers for the values column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "radar", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_radar_data(gapminder)
#' )
#' @export

bind_radar_data <- function(
    .,
    data = NULL,
    name = NULL,
    values = NULL,
    filter = NULL,
    color_category = NULL,
    facet = NULL,
    metadata = NULL,
    color_category_input_format = NULL,
    color_category_output_format = NULL,
    filter_input_format = NULL,
    filter_output_format = NULL,
    facet_input_format = NULL,
    facet_output_format = NULL,
    metadata_input_format = NULL,
    metadata_output_format = NULL,
    name_input_format = NULL,
    name_output_format = NULL,
    values_input_format = NULL,
    values_output_format = NULL) {
  bindings_error(., "radar")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(name), paste(values), paste(filter), paste(color_category), paste(facet), paste(metadata), NULL)
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

  if (is.null(values)) {
    new_list$x$bindings$data$values <- "list"
  } else {
    new_list$x$bindings$data$values <- values
  }

  new_list$x$bindings$data$filter <- filter
  new_list$x$bindings$data$color_category <- color_category

  if (is.null(facet)) {
    new_list$x$bindings$data$facet <- "list"
  } else {
    new_list$x$bindings$data$facet <- facet
  }


  if (is.null(metadata)) {
    new_list$x$bindings$data$metadata <- "list"
  } else {
    new_list$x$bindings$data$metadata <- metadata
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


  if (!is.null(color_category_output_format) && !is.null(color_category_input_format)) {
    if (isTRUE(grepl("^%", color_category_output_format))) {
      new_list$x$metadata$data$color_category$type <- "datetime"
      new_list$x$metadata$data$color_category$type_id <- paste0("datetime$", color_category_input_format)
      new_list$x$metadata$data$color_category$output_format_id <- paste0("datetime$", color_category_output_format)
    } else if (isTRUE(grepl("_", color_category_output_format))) {
      new_list$x$metadata$data$color_category$type <- "number"
      new_list$x$metadata$data$color_category$type_id <- paste0("number$", color_category_input_format)
      new_list$x$metadata$data$color_category$output_format_id <- paste0("number$", color_category_output_format)
    } else if (isTRUE(!is.na(color_category_output_format) && isFALSE(grepl("_", color_category_output_format)) && isFALSE(grepl("^%", color_category_output_format)))) {
      new_list$x$metadata$data$color_category$type <- "string"
      new_list$x$metadata$data$color_category$type_id <- paste0("string$", color_category_input_format)
      new_list$x$metadata$data$color_category$output_format_id <- paste0("string$", color_category_output_format)
    }
    if (is.na(color_category_input_format) && !is.na(color_category_output_format)) {
      "[color_category_input_format] and [color_category_output_format] must both be defined."
    }
    if (!is.na(color_category_input_format) && is.na(color_category_output_format)) {
      "[color_category_input_format] and [color_category_output_format] must both be defined."
    }
  }


  if (!is.null(facet_output_format) && !is.null(facet_input_format)) {
    if (isTRUE(grepl("^%", facet_output_format))) {
      new_list$x$metadata$data$facet$type <- "datetime"
      new_list$x$metadata$data$facet$type_id <- paste0("datetime$", facet_input_format)
      new_list$x$metadata$data$facet$output_format_id <- paste0("datetime$", facet_output_format)
    } else if (isTRUE(grepl("_", facet_output_format))) {
      new_list$x$metadata$data$facet$type <- "number"
      new_list$x$metadata$data$facet$type_id <- paste0("number$", facet_input_format)
      new_list$x$metadata$data$facet$output_format_id <- paste0("number$", facet_output_format)
    } else if (isTRUE(!is.na(facet_output_format) && isFALSE(grepl("_", facet_output_format)) && isFALSE(grepl("^%", facet_output_format)))) {
      new_list$x$metadata$data$facet$type <- "string"
      new_list$x$metadata$data$facet$type_id <- paste0("string$", facet_input_format)
      new_list$x$metadata$data$facet$output_format_id <- paste0("string$", facet_output_format)
    }
    if (is.na(facet_input_format) && !is.na(facet_output_format)) {
      "[facet_input_format] and [facet_output_format] must both be defined."
    }
    if (!is.na(facet_input_format) && is.na(facet_output_format)) {
      "[facet_input_format] and [facet_output_format] must both be defined."
    }
  }


  if (!is.null(metadata_output_format) && !is.null(metadata_input_format)) {
    if (isTRUE(grepl("^%", metadata_output_format))) {
      new_list$x$metadata$data$metadata$type <- "datetime"
      new_list$x$metadata$data$metadata$type_id <- paste0("datetime$", metadata_input_format)
      new_list$x$metadata$data$metadata$output_format_id <- paste0("datetime$", metadata_output_format)
    } else if (isTRUE(grepl("_", metadata_output_format))) {
      new_list$x$metadata$data$metadata$type <- "number"
      new_list$x$metadata$data$metadata$type_id <- paste0("number$", metadata_input_format)
      new_list$x$metadata$data$metadata$output_format_id <- paste0("number$", metadata_output_format)
    } else if (isTRUE(!is.na(metadata_output_format) && isFALSE(grepl("_", metadata_output_format)) && isFALSE(grepl("^%", metadata_output_format)))) {
      new_list$x$metadata$data$metadata$type <- "string"
      new_list$x$metadata$data$metadata$type_id <- paste0("string$", metadata_input_format)
      new_list$x$metadata$data$metadata$output_format_id <- paste0("string$", metadata_output_format)
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
