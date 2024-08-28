#' Bind scatter data
#' @name bind_scatter_data
#' @param data Data.
#' @param x X values. Suggested data type hints: number, string, datetime. Flourish type hint: column
#' @param y Y values. Suggested data type hints: number, string, datetime. Flourish type hint: column
#' @param name Name. Select multiple columns if required to make a unique name. Suggested data type hints: string. Flourish type hint: columns
#' @param color Color. Colors the dots based on numbers or categories. Suggested data type hints: string, number. Flourish type hint: column
#' @param size Size. Sizes the dots based on the numbers. Suggested data type hints: number, string. Flourish type hint: column
#' @param shape Shape. Sets the shape of the dots based on numbers or categories. Suggested data type hints: string. Flourish type hint: column
#' @param facet Grid of charts (facet). Creates a mini chart for each value in the selected column. Suggested data type hints: string. Flourish type hint: column
#' @param slider Time. Creates a time slider and connects/animates dots with the same name. Suggested data type hints: datetime, string, number. Flourish type hint: column
#' @param series Series (connect with line). Group dots into series based on the contents of a column. Suggested data type hints: string. Flourish type hint: column
#' @param filter Filter control. Creates a control based on the contents of any column. Suggested data type hints: string, number, datetime. Flourish type hint: column
#' @param metadata Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in popups and panelsSuggested data type hints: string, number, datetime. Flourish type hint: columns
#' @param color_input_format Formats/parses dates, strings, and numbers for the color column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param color_output_format Formats/parses dates, strings, and numbers for the color column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param filter_input_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param filter_output_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param facet_input_format Formats/parses dates, strings, and numbers for the facet column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param facet_output_format Formats/parses dates, strings, and numbers for the facet column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param metadata_input_format Formats/parses dates, strings, and numbers for the metadata column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param metadata_output_format Formats/parses dates, strings, and numbers for the metadata column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param name_input_format Formats/parses dates, strings, and numbers for the name column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param name_output_format Formats/parses dates, strings, and numbers for the name column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param series_input_format Formats/parses dates, strings, and numbers for the series column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param series_output_format Formats/parses dates, strings, and numbers for the series column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param shape_input_format Formats/parses dates, strings, and numbers for the shape column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param shape_output_format Formats/parses dates, strings, and numbers for the shape column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param size_input_format Formats/parses dates, strings, and numbers for the size column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param size_output_format Formats/parses dates, strings, and numbers for the size column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param slider_input_format Formats/parses dates, strings, and numbers for the slider column. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param slider_output_format Formats/parses dates, strings, and numbers for the slider column. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param x_input_format Formats/parses dates, strings, and numbers for the x column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param x_output_format Formats/parses dates, strings, and numbers for the x column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param y_input_format Formats/parses dates, strings, and numbers for the y column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param y_output_format Formats/parses dates, strings, and numbers for the y column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "scatter", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_scatter_data(gapminder)
#' )
#' @export

bind_scatter_data <- function(
    .,
    data = NULL,
    x = NULL,
    y = NULL,
    name = NULL,
    color = NULL,
    size = NULL,
    shape = NULL,
    facet = NULL,
    slider = NULL,
    series = NULL,
    filter = NULL,
    metadata = NULL,
    color_input_format = NULL,
    color_output_format = NULL,
    filter_input_format = NULL,
    filter_output_format = NULL,
    facet_input_format = NULL,
    facet_output_format = NULL,
    metadata_input_format = NULL,
    metadata_output_format = NULL,
    name_input_format = NULL,
    name_output_format = NULL,
    series_input_format = NULL,
    series_output_format = NULL,
    shape_input_format = NULL,
    shape_output_format = NULL,
    size_input_format = NULL,
    size_output_format = NULL,
    slider_input_format = NULL,
    slider_output_format = NULL,
    x_input_format = NULL,
    x_output_format = NULL,
    y_input_format = NULL,
    y_output_format = NULL) {
  bindings_error(., "scatter")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(x), paste(y), paste(name), paste(color), paste(size), paste(shape), paste(facet), paste(slider), paste(series), paste(filter), paste(metadata), NULL)
    columns_data <- columns_data[!sapply(columns_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_data, split = ",", fixed = TRUE),
      data = data
    )
    int_columns_data <- sapply(data, is.integer)
    data[, int_columns_data] <- lapply(data[, int_columns_data], as.character)
  }
  new_list$x$data$data <- data
  new_list$x$bindings$data$x <- x
  new_list$x$bindings$data$y <- y

  if (is.null(name)) {
    new_list$x$bindings$data$name <- "list"
  } else {
    new_list$x$bindings$data$name <- name
  }

  new_list$x$bindings$data$color <- color
  new_list$x$bindings$data$size <- size
  new_list$x$bindings$data$shape <- shape
  new_list$x$bindings$data$facet <- facet
  new_list$x$bindings$data$slider <- slider
  new_list$x$bindings$data$series <- series
  new_list$x$bindings$data$filter <- filter

  if (is.null(metadata)) {
    new_list$x$bindings$data$metadata <- "list"
  } else {
    new_list$x$bindings$data$metadata <- metadata
  }



  if (!is.null(x_output_format) && !is.null(x_input_format)) {
    if (isTRUE(grepl("^%", x_output_format))) {
      new_list$x$metadata$data$x$type <- "datetime"
      new_list$x$metadata$data$x$type_id <- paste0("datetime$", x_input_format)
      new_list$x$metadata$data$x$output_format_id <- paste0("datetime$", x_output_format)
    } else if (isTRUE(grepl("_", x_output_format))) {
      new_list$x$metadata$data$x$type <- "number"
      new_list$x$metadata$data$x$type_id <- paste0("number$", x_input_format)
      new_list$x$metadata$data$x$output_format_id <- paste0("number$", x_output_format)
    } else if (isTRUE(!is.na(x_output_format) && isFALSE(grepl("_", x_output_format)) && isFALSE(grepl("^%", x_output_format)))) {
      new_list$x$metadata$data$x$type <- "string"
      new_list$x$metadata$data$x$type_id <- paste0("string$", x_input_format)
      new_list$x$metadata$data$x$output_format_id <- paste0("string$", x_output_format)
    }
    if (is.na(x_input_format) && !is.na(x_output_format)) {
      "[x_input_format] and [x_output_format] must both be defined."
    }
    if (!is.na(x_input_format) && is.na(x_output_format)) {
      "[x_input_format] and [x_output_format] must both be defined."
    }
  }


  if (!is.null(y_output_format) && !is.null(y_input_format)) {
    if (isTRUE(grepl("^%", y_output_format))) {
      new_list$x$metadata$data$y$type <- "datetime"
      new_list$x$metadata$data$y$type_id <- paste0("datetime$", y_input_format)
      new_list$x$metadata$data$y$output_format_id <- paste0("datetime$", y_output_format)
    } else if (isTRUE(grepl("_", y_output_format))) {
      new_list$x$metadata$data$y$type <- "number"
      new_list$x$metadata$data$y$type_id <- paste0("number$", y_input_format)
      new_list$x$metadata$data$y$output_format_id <- paste0("number$", y_output_format)
    } else if (isTRUE(!is.na(y_output_format) && isFALSE(grepl("_", y_output_format)) && isFALSE(grepl("^%", y_output_format)))) {
      new_list$x$metadata$data$y$type <- "string"
      new_list$x$metadata$data$y$type_id <- paste0("string$", y_input_format)
      new_list$x$metadata$data$y$output_format_id <- paste0("string$", y_output_format)
    }
    if (is.na(y_input_format) && !is.na(y_output_format)) {
      "[y_input_format] and [y_output_format] must both be defined."
    }
    if (!is.na(y_input_format) && is.na(y_output_format)) {
      "[y_input_format] and [y_output_format] must both be defined."
    }
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


  if (!is.null(color_output_format) && !is.null(color_input_format)) {
    if (isTRUE(grepl("^%", color_output_format))) {
      new_list$x$metadata$data$color$type <- "datetime"
      new_list$x$metadata$data$color$type_id <- paste0("datetime$", color_input_format)
      new_list$x$metadata$data$color$output_format_id <- paste0("datetime$", color_output_format)
    } else if (isTRUE(grepl("_", color_output_format))) {
      new_list$x$metadata$data$color$type <- "number"
      new_list$x$metadata$data$color$type_id <- paste0("number$", color_input_format)
      new_list$x$metadata$data$color$output_format_id <- paste0("number$", color_output_format)
    } else if (isTRUE(!is.na(color_output_format) && isFALSE(grepl("_", color_output_format)) && isFALSE(grepl("^%", color_output_format)))) {
      new_list$x$metadata$data$color$type <- "string"
      new_list$x$metadata$data$color$type_id <- paste0("string$", color_input_format)
      new_list$x$metadata$data$color$output_format_id <- paste0("string$", color_output_format)
    }
    if (is.na(color_input_format) && !is.na(color_output_format)) {
      "[color_input_format] and [color_output_format] must both be defined."
    }
    if (!is.na(color_input_format) && is.na(color_output_format)) {
      "[color_input_format] and [color_output_format] must both be defined."
    }
  }


  if (!is.null(size_output_format) && !is.null(size_input_format)) {
    if (isTRUE(grepl("^%", size_output_format))) {
      new_list$x$metadata$data$size$type <- "datetime"
      new_list$x$metadata$data$size$type_id <- paste0("datetime$", size_input_format)
      new_list$x$metadata$data$size$output_format_id <- paste0("datetime$", size_output_format)
    } else if (isTRUE(grepl("_", size_output_format))) {
      new_list$x$metadata$data$size$type <- "number"
      new_list$x$metadata$data$size$type_id <- paste0("number$", size_input_format)
      new_list$x$metadata$data$size$output_format_id <- paste0("number$", size_output_format)
    } else if (isTRUE(!is.na(size_output_format) && isFALSE(grepl("_", size_output_format)) && isFALSE(grepl("^%", size_output_format)))) {
      new_list$x$metadata$data$size$type <- "string"
      new_list$x$metadata$data$size$type_id <- paste0("string$", size_input_format)
      new_list$x$metadata$data$size$output_format_id <- paste0("string$", size_output_format)
    }
    if (is.na(size_input_format) && !is.na(size_output_format)) {
      "[size_input_format] and [size_output_format] must both be defined."
    }
    if (!is.na(size_input_format) && is.na(size_output_format)) {
      "[size_input_format] and [size_output_format] must both be defined."
    }
  }


  if (!is.null(shape_output_format) && !is.null(shape_input_format)) {
    if (isTRUE(grepl("^%", shape_output_format))) {
      new_list$x$metadata$data$shape$type <- "datetime"
      new_list$x$metadata$data$shape$type_id <- paste0("datetime$", shape_input_format)
      new_list$x$metadata$data$shape$output_format_id <- paste0("datetime$", shape_output_format)
    } else if (isTRUE(grepl("_", shape_output_format))) {
      new_list$x$metadata$data$shape$type <- "number"
      new_list$x$metadata$data$shape$type_id <- paste0("number$", shape_input_format)
      new_list$x$metadata$data$shape$output_format_id <- paste0("number$", shape_output_format)
    } else if (isTRUE(!is.na(shape_output_format) && isFALSE(grepl("_", shape_output_format)) && isFALSE(grepl("^%", shape_output_format)))) {
      new_list$x$metadata$data$shape$type <- "string"
      new_list$x$metadata$data$shape$type_id <- paste0("string$", shape_input_format)
      new_list$x$metadata$data$shape$output_format_id <- paste0("string$", shape_output_format)
    }
    if (is.na(shape_input_format) && !is.na(shape_output_format)) {
      "[shape_input_format] and [shape_output_format] must both be defined."
    }
    if (!is.na(shape_input_format) && is.na(shape_output_format)) {
      "[shape_input_format] and [shape_output_format] must both be defined."
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


  if (!is.null(slider_output_format) && !is.null(slider_input_format)) {
    if (isTRUE(grepl("^%", slider_output_format))) {
      new_list$x$metadata$data$slider$type <- "datetime"
      new_list$x$metadata$data$slider$type_id <- paste0("datetime$", slider_input_format)
      new_list$x$metadata$data$slider$output_format_id <- paste0("datetime$", slider_output_format)
    } else if (isTRUE(grepl("_", slider_output_format))) {
      new_list$x$metadata$data$slider$type <- "number"
      new_list$x$metadata$data$slider$type_id <- paste0("number$", slider_input_format)
      new_list$x$metadata$data$slider$output_format_id <- paste0("number$", slider_output_format)
    } else if (isTRUE(!is.na(slider_output_format) && isFALSE(grepl("_", slider_output_format)) && isFALSE(grepl("^%", slider_output_format)))) {
      new_list$x$metadata$data$slider$type <- "string"
      new_list$x$metadata$data$slider$type_id <- paste0("string$", slider_input_format)
      new_list$x$metadata$data$slider$output_format_id <- paste0("string$", slider_output_format)
    }
    if (is.na(slider_input_format) && !is.na(slider_output_format)) {
      "[slider_input_format] and [slider_output_format] must both be defined."
    }
    if (!is.na(slider_input_format) && is.na(slider_output_format)) {
      "[slider_input_format] and [slider_output_format] must both be defined."
    }
  }


  if (!is.null(series_output_format) && !is.null(series_input_format)) {
    if (isTRUE(grepl("^%", series_output_format))) {
      new_list$x$metadata$data$series$type <- "datetime"
      new_list$x$metadata$data$series$type_id <- paste0("datetime$", series_input_format)
      new_list$x$metadata$data$series$output_format_id <- paste0("datetime$", series_output_format)
    } else if (isTRUE(grepl("_", series_output_format))) {
      new_list$x$metadata$data$series$type <- "number"
      new_list$x$metadata$data$series$type_id <- paste0("number$", series_input_format)
      new_list$x$metadata$data$series$output_format_id <- paste0("number$", series_output_format)
    } else if (isTRUE(!is.na(series_output_format) && isFALSE(grepl("_", series_output_format)) && isFALSE(grepl("^%", series_output_format)))) {
      new_list$x$metadata$data$series$type <- "string"
      new_list$x$metadata$data$series$type_id <- paste0("string$", series_input_format)
      new_list$x$metadata$data$series$output_format_id <- paste0("string$", series_output_format)
    }
    if (is.na(series_input_format) && !is.na(series_output_format)) {
      "[series_input_format] and [series_output_format] must both be defined."
    }
    if (!is.na(series_input_format) && is.na(series_output_format)) {
      "[series_input_format] and [series_output_format] must both be defined."
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
