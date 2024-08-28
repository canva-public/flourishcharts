#' Bind marimekko data
#' @name bind_marimekko_data
#' @param data Data.
#' @param name Name
#' @param unstacked_value Unstacked value
#' @param stacked_values Secondary metric. One or more numeric columns. Each column will form a segment of a stacked bar. Flourish type hint: columns
#' @param facet Facet
#' @param category Color category. Suggested data type hints: string. Flourish type hint: column
#' @param filter Filter by. (Optional) Choose a categorical column to filter by. A dropdown will appear in the visualization. Suggested data type hints: string, number, datetime. Flourish type hint: column
#' @param metadata Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in popups and panels Suggested data type hints: number, string, datetime. Flourish type hint: columns
#' @param category_input_format Formats/parses dates, strings, and numbers for the category column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param category_output_format Formats/parses dates, strings, and numbers for the category column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param filter_input_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param filter_output_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param facet_input_format Formats/parses dates, strings, and numbers for the facet column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param facet_output_format Formats/parses dates, strings, and numbers for the facet column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param metadata_input_format Formats/parses dates, strings, and numbers for the metadata column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param metadata_output_format Formats/parses dates, strings, and numbers for the metadata column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param name_input_format Formats/parses dates, strings, and numbers for the name column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param name_output_format Formats/parses dates, strings, and numbers for the name column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param unstacked_value_input_format Formats/parses dates, strings, and numbers for the unstacked_value column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param unstacked_value_output_format Formats/parses dates, strings, and numbers for the unstacked_value column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param stacked_values_input_format Formats/parses dates, strings, and numbers for the stacked_values column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param stacked_values_output_format Formats/parses dates, strings, and numbers for the stacked_values column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "marimekko", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_marimekko_data(gapminder)
#' )
#' @export

bind_marimekko_data <- function(
    .,
    data = NULL,
    name = NULL,
    unstacked_value = NULL,
    stacked_values = NULL,
    facet = NULL,
    category = NULL,
    filter = NULL,
    metadata = NULL,
    category_input_format = NULL,
    category_output_format = NULL,
    filter_input_format = NULL,
    filter_output_format = NULL,
    facet_input_format = NULL,
    facet_output_format = NULL,
    metadata_input_format = NULL,
    metadata_output_format = NULL,
    name_input_format = NULL,
    name_output_format = NULL,
    unstacked_value_input_format = NULL,
    unstacked_value_output_format = NULL,
    stacked_values_input_format = NULL,
    stacked_values_output_format = NULL) {
  bindings_error(., "marimekko")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(name), paste(unstacked_value), paste(stacked_values), paste(facet), paste(category), paste(filter), paste(metadata), NULL)
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
  new_list$x$bindings$data$unstacked_value <- unstacked_value

  if (is.null(stacked_values)) {
    new_list$x$bindings$data$stacked_values <- "list"
  } else {
    new_list$x$bindings$data$stacked_values <- stacked_values
  }

  new_list$x$bindings$data$facet <- facet
  new_list$x$bindings$data$category <- category
  new_list$x$bindings$data$filter <- filter

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


  if (!is.null(unstacked_value_output_format) && !is.null(unstacked_value_input_format)) {
    if (isTRUE(grepl("^%", unstacked_value_output_format))) {
      new_list$x$metadata$data$unstacked_value$type <- "datetime"
      new_list$x$metadata$data$unstacked_value$type_id <- paste0("datetime$", unstacked_value_input_format)
      new_list$x$metadata$data$unstacked_value$output_format_id <- paste0("datetime$", unstacked_value_output_format)
    } else if (isTRUE(grepl("_", unstacked_value_output_format))) {
      new_list$x$metadata$data$unstacked_value$type <- "number"
      new_list$x$metadata$data$unstacked_value$type_id <- paste0("number$", unstacked_value_input_format)
      new_list$x$metadata$data$unstacked_value$output_format_id <- paste0("number$", unstacked_value_output_format)
    } else if (isTRUE(!is.na(unstacked_value_output_format) && isFALSE(grepl("_", unstacked_value_output_format)) && isFALSE(grepl("^%", unstacked_value_output_format)))) {
      new_list$x$metadata$data$unstacked_value$type <- "string"
      new_list$x$metadata$data$unstacked_value$type_id <- paste0("string$", unstacked_value_input_format)
      new_list$x$metadata$data$unstacked_value$output_format_id <- paste0("string$", unstacked_value_output_format)
    }
    if (is.na(unstacked_value_input_format) && !is.na(unstacked_value_output_format)) {
      "[unstacked_value_input_format] and [unstacked_value_output_format] must both be defined."
    }
    if (!is.na(unstacked_value_input_format) && is.na(unstacked_value_output_format)) {
      "[unstacked_value_input_format] and [unstacked_value_output_format] must both be defined."
    }
  }


  if (!is.null(stacked_values_output_format) && !is.null(stacked_values_input_format)) {
    if (isTRUE(grepl("^%", stacked_values_output_format))) {
      new_list$x$metadata$data$stacked_values$type <- "datetime"
      new_list$x$metadata$data$stacked_values$type_id <- paste0("datetime$", stacked_values_input_format)
      new_list$x$metadata$data$stacked_values$output_format_id <- paste0("datetime$", stacked_values_output_format)
    } else if (isTRUE(grepl("_", stacked_values_output_format))) {
      new_list$x$metadata$data$stacked_values$type <- "number"
      new_list$x$metadata$data$stacked_values$type_id <- paste0("number$", stacked_values_input_format)
      new_list$x$metadata$data$stacked_values$output_format_id <- paste0("number$", stacked_values_output_format)
    } else if (isTRUE(!is.na(stacked_values_output_format) && isFALSE(grepl("_", stacked_values_output_format)) && isFALSE(grepl("^%", stacked_values_output_format)))) {
      new_list$x$metadata$data$stacked_values$type <- "string"
      new_list$x$metadata$data$stacked_values$type_id <- paste0("string$", stacked_values_input_format)
      new_list$x$metadata$data$stacked_values$output_format_id <- paste0("string$", stacked_values_output_format)
    }
    if (is.na(stacked_values_input_format) && !is.na(stacked_values_output_format)) {
      "[stacked_values_input_format] and [stacked_values_output_format] must both be defined."
    }
    if (!is.na(stacked_values_input_format) && is.na(stacked_values_output_format)) {
      "[stacked_values_input_format] and [stacked_values_output_format] must both be defined."
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
