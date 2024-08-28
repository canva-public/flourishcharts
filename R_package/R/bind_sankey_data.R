#' Bind sankey diagram data
#' @name bind_sankey_data
#' @param data Data.
#' @param source Source. Suggested data type hints: string. Flourish type hint: column
#' @param target Target. Suggested data type hints: string. Flourish type hint: column
#' @param value Value of link. A numerical value used to set the thickness of the links. Suggested data type hints: number. Flourish type hint: column
#' @param filter Filter. Suggested data type hints: string, number, datetime. Flourish type hint: column
#' @param facet Grid of charts. Suggested data type hints: string. Flourish type hint: column
#' @param step_from Step from. An integer(whole number) used to indicate where a link starts from (used only in Alluvial mode). Suggested data type hints: number. Flourish type hint: column
#' @param step_to Step to. An integer(whole number) used to indicate where a link goes to (used only in Alluvial mode). Suggested data type hints: number. Flourish type hint: column
#' @param metadata Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in popups and panels Suggested data type hints: number, datetime, string. Flourish type hint: columns
#' @param filter_input_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param filter_output_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param facet_input_format Formats/parses dates, strings, and numbers for the facet column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param facet_output_format Formats/parses dates, strings, and numbers for the facet column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param metadata_input_format Formats/parses dates, strings, and numbers for the metadata column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param metadata_output_format Formats/parses dates, strings, and numbers for the metadata column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param source_input_format Formats/parses dates, strings, and numbers for the source column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param source_output_format Formats/parses dates, strings, and numbers for the source column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param step_from_input_format Formats/parses dates, strings, and numbers for the step_from column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param step_from_output_format Formats/parses dates, strings, and numbers for the step_from column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param step_to_input_format Formats/parses dates, strings, and numbers for the step_to column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param step_to_output_format Formats/parses dates, strings, and numbers for the step_to column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param target_input_format Formats/parses dates, strings, and numbers for the target column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param target_output_format Formats/parses dates, strings, and numbers for the target column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param value_input_format Formats/parses dates, strings, and numbers for the value column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param value_output_format Formats/parses dates, strings, and numbers for the value column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "sankey", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_sankey_data(gapminder)
#' )
#' @export

bind_sankey_data <- function(
    .,
    data = NULL,
    source = NULL,
    target = NULL,
    value = NULL,
    filter = NULL,
    facet = NULL,
    step_from = NULL,
    step_to = NULL,
    metadata = NULL,
    filter_input_format = NULL,
    filter_output_format = NULL,
    facet_input_format = NULL,
    facet_output_format = NULL,
    metadata_input_format = NULL,
    metadata_output_format = NULL,
    source_input_format = NULL,
    source_output_format = NULL,
    step_from_input_format = NULL,
    step_from_output_format = NULL,
    step_to_input_format = NULL,
    step_to_output_format = NULL,
    target_input_format = NULL,
    target_output_format = NULL,
    value_input_format = NULL,
    value_output_format = NULL) {
  bindings_error(., "sankey")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(source), paste(target), paste(value), paste(filter), paste(facet), paste(step_from), paste(step_to), paste(metadata), NULL)
    columns_data <- columns_data[!sapply(columns_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_data, split = ",", fixed = TRUE),
      data = data
    )
    int_columns_data <- sapply(data, is.integer)
    data[, int_columns_data] <- lapply(data[, int_columns_data], as.character)
  }
  new_list$x$data$data <- data
  new_list$x$bindings$data$source <- source
  new_list$x$bindings$data$target <- target
  new_list$x$bindings$data$value <- value
  new_list$x$bindings$data$filter <- filter
  new_list$x$bindings$data$facet <- facet
  new_list$x$bindings$data$step_from <- step_from
  new_list$x$bindings$data$step_to <- step_to

  if (is.null(metadata)) {
    new_list$x$bindings$data$metadata <- "list"
  } else {
    new_list$x$bindings$data$metadata <- metadata
  }



  if (!is.null(source_output_format) && !is.null(source_input_format)) {
    if (isTRUE(grepl("^%", source_output_format))) {
      new_list$x$metadata$data$source$type <- "datetime"
      new_list$x$metadata$data$source$type_id <- paste0("datetime$", source_input_format)
      new_list$x$metadata$data$source$output_format_id <- paste0("datetime$", source_output_format)
    } else if (isTRUE(grepl("_", source_output_format))) {
      new_list$x$metadata$data$source$type <- "number"
      new_list$x$metadata$data$source$type_id <- paste0("number$", source_input_format)
      new_list$x$metadata$data$source$output_format_id <- paste0("number$", source_output_format)
    } else if (isTRUE(!is.na(source_output_format) && isFALSE(grepl("_", source_output_format)) && isFALSE(grepl("^%", source_output_format)))) {
      new_list$x$metadata$data$source$type <- "string"
      new_list$x$metadata$data$source$type_id <- paste0("string$", source_input_format)
      new_list$x$metadata$data$source$output_format_id <- paste0("string$", source_output_format)
    }
    if (is.na(source_input_format) && !is.na(source_output_format)) {
      "[source_input_format] and [source_output_format] must both be defined."
    }
    if (!is.na(source_input_format) && is.na(source_output_format)) {
      "[source_input_format] and [source_output_format] must both be defined."
    }
  }


  if (!is.null(target_output_format) && !is.null(target_input_format)) {
    if (isTRUE(grepl("^%", target_output_format))) {
      new_list$x$metadata$data$target$type <- "datetime"
      new_list$x$metadata$data$target$type_id <- paste0("datetime$", target_input_format)
      new_list$x$metadata$data$target$output_format_id <- paste0("datetime$", target_output_format)
    } else if (isTRUE(grepl("_", target_output_format))) {
      new_list$x$metadata$data$target$type <- "number"
      new_list$x$metadata$data$target$type_id <- paste0("number$", target_input_format)
      new_list$x$metadata$data$target$output_format_id <- paste0("number$", target_output_format)
    } else if (isTRUE(!is.na(target_output_format) && isFALSE(grepl("_", target_output_format)) && isFALSE(grepl("^%", target_output_format)))) {
      new_list$x$metadata$data$target$type <- "string"
      new_list$x$metadata$data$target$type_id <- paste0("string$", target_input_format)
      new_list$x$metadata$data$target$output_format_id <- paste0("string$", target_output_format)
    }
    if (is.na(target_input_format) && !is.na(target_output_format)) {
      "[target_input_format] and [target_output_format] must both be defined."
    }
    if (!is.na(target_input_format) && is.na(target_output_format)) {
      "[target_input_format] and [target_output_format] must both be defined."
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


  if (!is.null(step_from_output_format) && !is.null(step_from_input_format)) {
    if (isTRUE(grepl("^%", step_from_output_format))) {
      new_list$x$metadata$data$step_from$type <- "datetime"
      new_list$x$metadata$data$step_from$type_id <- paste0("datetime$", step_from_input_format)
      new_list$x$metadata$data$step_from$output_format_id <- paste0("datetime$", step_from_output_format)
    } else if (isTRUE(grepl("_", step_from_output_format))) {
      new_list$x$metadata$data$step_from$type <- "number"
      new_list$x$metadata$data$step_from$type_id <- paste0("number$", step_from_input_format)
      new_list$x$metadata$data$step_from$output_format_id <- paste0("number$", step_from_output_format)
    } else if (isTRUE(!is.na(step_from_output_format) && isFALSE(grepl("_", step_from_output_format)) && isFALSE(grepl("^%", step_from_output_format)))) {
      new_list$x$metadata$data$step_from$type <- "string"
      new_list$x$metadata$data$step_from$type_id <- paste0("string$", step_from_input_format)
      new_list$x$metadata$data$step_from$output_format_id <- paste0("string$", step_from_output_format)
    }
    if (is.na(step_from_input_format) && !is.na(step_from_output_format)) {
      "[step_from_input_format] and [step_from_output_format] must both be defined."
    }
    if (!is.na(step_from_input_format) && is.na(step_from_output_format)) {
      "[step_from_input_format] and [step_from_output_format] must both be defined."
    }
  }


  if (!is.null(step_to_output_format) && !is.null(step_to_input_format)) {
    if (isTRUE(grepl("^%", step_to_output_format))) {
      new_list$x$metadata$data$step_to$type <- "datetime"
      new_list$x$metadata$data$step_to$type_id <- paste0("datetime$", step_to_input_format)
      new_list$x$metadata$data$step_to$output_format_id <- paste0("datetime$", step_to_output_format)
    } else if (isTRUE(grepl("_", step_to_output_format))) {
      new_list$x$metadata$data$step_to$type <- "number"
      new_list$x$metadata$data$step_to$type_id <- paste0("number$", step_to_input_format)
      new_list$x$metadata$data$step_to$output_format_id <- paste0("number$", step_to_output_format)
    } else if (isTRUE(!is.na(step_to_output_format) && isFALSE(grepl("_", step_to_output_format)) && isFALSE(grepl("^%", step_to_output_format)))) {
      new_list$x$metadata$data$step_to$type <- "string"
      new_list$x$metadata$data$step_to$type_id <- paste0("string$", step_to_input_format)
      new_list$x$metadata$data$step_to$output_format_id <- paste0("string$", step_to_output_format)
    }
    if (is.na(step_to_input_format) && !is.na(step_to_output_format)) {
      "[step_to_input_format] and [step_to_output_format] must both be defined."
    }
    if (!is.na(step_to_input_format) && is.na(step_to_output_format)) {
      "[step_to_input_format] and [step_to_output_format] must both be defined."
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
