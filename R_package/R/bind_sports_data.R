#' Bind sports data
#' @name bind_sports_data
#' @param positions_data Positions data.
#' @param info Name. A name to include on a label and/or popup. Suggested data type hints: string, number. Flourish type hint: columns
#' @param color Color by. An optional category column to color the dots by. For example if you have two different teams. Suggested data type hints: string. Flourish type hint: column
#' @param size Size by. An optional numeric column to size the dots. Suggested data type hints: number. Flourish type hint: column
#' @param squad_number Squad numbers. An optional squad number to appear within the dot. Suggested data type hints: number, string. Flourish type hint: column
#' @param position_x X position. Use this to column to set the X position of a dot on the pitch when creating shot charts. This column is ignored when the setting Position points by is set to FormationSuggested data type hints: number. Flourish type hint: column
#' @param position_y Y position. Use this to column to set the Y position of a dot on the pitch when creating shot charts. This column is ignored when the setting Position points by is set to FormationSuggested data type hints: number. Flourish type hint: column
#' @param filter Filter by. Setting a column here will add a control to the visualization to filter the dots. For example you could filter by team. Suggested data type hints: string, number. Flourish type hint: column
#' @param photo Image. Add an image to appear in the circles. To add an image, right click on a cell and click upload file Its also possible to add a image URL. Suggested data type hints: string. Flourish type hint: column
#' @param metadata Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in popups and panels Suggested data type hints: string, number, datetime. Flourish type hint: columns
#' @param color_input_format Formats/parses dates, strings, and numbers for the color column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param color_output_format Formats/parses dates, strings, and numbers for the color column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param filter_input_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param filter_output_format Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param photo_input_format Formats/parses dates, strings, and numbers for the photo column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param photo_output_format Formats/parses dates, strings, and numbers for the photo column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param metadata_input_format Formats/parses dates, strings, and numbers for the metadata column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param metadata_output_format Formats/parses dates, strings, and numbers for the metadata column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param info_input_format Formats/parses dates, strings, and numbers for the info column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param info_output_format Formats/parses dates, strings, and numbers for the info column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param size_input_format Formats/parses dates, strings, and numbers for the size column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param size_output_format Formats/parses dates, strings, and numbers for the size column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param squad_number_input_format Formats/parses dates, strings, and numbers for the squad_number column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param squad_number_output_format Formats/parses dates, strings, and numbers for the squad_number column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param position_x_input_format Formats/parses dates, strings, and numbers for the position_x column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param position_x_output_format Formats/parses dates, strings, and numbers for the position_x column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param position_y_input_format Formats/parses dates, strings, and numbers for the position_y column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param position_y_output_format Formats/parses dates, strings, and numbers for the position_y column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "sports", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_sports_data(gapminder)
#' )
#' @export

bind_sports_data <- function(
    .,
    positions_data = NULL,
    info = NULL,
    color = NULL,
    size = NULL,
    squad_number = NULL,
    position_x = NULL,
    position_y = NULL,
    filter = NULL,
    photo = NULL,
    metadata = NULL,
    color_input_format = NULL,
    color_output_format = NULL,
    filter_input_format = NULL,
    filter_output_format = NULL,
    photo_input_format = NULL,
    photo_output_format = NULL,
    metadata_input_format = NULL,
    metadata_output_format = NULL,
    info_input_format = NULL,
    info_output_format = NULL,
    size_input_format = NULL,
    size_output_format = NULL,
    squad_number_input_format = NULL,
    squad_number_output_format = NULL,
    position_x_input_format = NULL,
    position_x_output_format = NULL,
    position_y_input_format = NULL,
    position_y_output_format = NULL) {
  bindings_error(., "sports")

  old_list <- .
  new_list <- list()

  if (!is.null(positions_data)) {
    columns_positions_data <- c(paste(info), paste(color), paste(size), paste(squad_number), paste(position_x), paste(position_y), paste(filter), paste(photo), paste(metadata), NULL)
    columns_positions_data <- columns_positions_data[!sapply(columns_positions_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_positions_data, split = ",", fixed = TRUE),
      data = positions_data
    )
    int_columns_positions_data <- sapply(positions_data, is.integer)
    positions_data[, int_columns_positions_data] <- lapply(positions_data[, int_columns_positions_data], as.character)
  }
  new_list$x$data$positions <- positions_data

  if (is.null(info)) {
    new_list$x$bindings$positions$info <- "list"
  } else {
    new_list$x$bindings$positions$info <- info
  }

  new_list$x$bindings$positions$color <- color
  new_list$x$bindings$positions$size <- size
  new_list$x$bindings$positions$squad_number <- squad_number
  new_list$x$bindings$positions$position_x <- position_x
  new_list$x$bindings$positions$position_y <- position_y
  new_list$x$bindings$positions$filter <- filter
  new_list$x$bindings$positions$photo <- photo

  if (is.null(metadata)) {
    new_list$x$bindings$positions$metadata <- "list"
  } else {
    new_list$x$bindings$positions$metadata <- metadata
  }



  if (!is.null(info_output_format) && !is.null(info_input_format)) {
    if (isTRUE(grepl("^%", info_output_format))) {
      new_list$x$metadata$positions$info$type <- "datetime"
      new_list$x$metadata$positions$info$type_id <- paste0("datetime$", info_input_format)
      new_list$x$metadata$positions$info$output_format_id <- paste0("datetime$", info_output_format)
    } else if (isTRUE(grepl("_", info_output_format))) {
      new_list$x$metadata$positions$info$type <- "number"
      new_list$x$metadata$positions$info$type_id <- paste0("number$", info_input_format)
      new_list$x$metadata$positions$info$output_format_id <- paste0("number$", info_output_format)
    } else if (isTRUE(!is.na(info_output_format) && isFALSE(grepl("_", info_output_format)) && isFALSE(grepl("^%", info_output_format)))) {
      new_list$x$metadata$positions$info$type <- "string"
      new_list$x$metadata$positions$info$type_id <- paste0("string$", info_input_format)
      new_list$x$metadata$positions$info$output_format_id <- paste0("string$", info_output_format)
    }
    if (is.na(info_input_format) && !is.na(info_output_format)) {
      "[info_input_format] and [info_output_format] must both be defined."
    }
    if (!is.na(info_input_format) && is.na(info_output_format)) {
      "[info_input_format] and [info_output_format] must both be defined."
    }
  }


  if (!is.null(color_output_format) && !is.null(color_input_format)) {
    if (isTRUE(grepl("^%", color_output_format))) {
      new_list$x$metadata$positions$color$type <- "datetime"
      new_list$x$metadata$positions$color$type_id <- paste0("datetime$", color_input_format)
      new_list$x$metadata$positions$color$output_format_id <- paste0("datetime$", color_output_format)
    } else if (isTRUE(grepl("_", color_output_format))) {
      new_list$x$metadata$positions$color$type <- "number"
      new_list$x$metadata$positions$color$type_id <- paste0("number$", color_input_format)
      new_list$x$metadata$positions$color$output_format_id <- paste0("number$", color_output_format)
    } else if (isTRUE(!is.na(color_output_format) && isFALSE(grepl("_", color_output_format)) && isFALSE(grepl("^%", color_output_format)))) {
      new_list$x$metadata$positions$color$type <- "string"
      new_list$x$metadata$positions$color$type_id <- paste0("string$", color_input_format)
      new_list$x$metadata$positions$color$output_format_id <- paste0("string$", color_output_format)
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
      new_list$x$metadata$positions$size$type <- "datetime"
      new_list$x$metadata$positions$size$type_id <- paste0("datetime$", size_input_format)
      new_list$x$metadata$positions$size$output_format_id <- paste0("datetime$", size_output_format)
    } else if (isTRUE(grepl("_", size_output_format))) {
      new_list$x$metadata$positions$size$type <- "number"
      new_list$x$metadata$positions$size$type_id <- paste0("number$", size_input_format)
      new_list$x$metadata$positions$size$output_format_id <- paste0("number$", size_output_format)
    } else if (isTRUE(!is.na(size_output_format) && isFALSE(grepl("_", size_output_format)) && isFALSE(grepl("^%", size_output_format)))) {
      new_list$x$metadata$positions$size$type <- "string"
      new_list$x$metadata$positions$size$type_id <- paste0("string$", size_input_format)
      new_list$x$metadata$positions$size$output_format_id <- paste0("string$", size_output_format)
    }
    if (is.na(size_input_format) && !is.na(size_output_format)) {
      "[size_input_format] and [size_output_format] must both be defined."
    }
    if (!is.na(size_input_format) && is.na(size_output_format)) {
      "[size_input_format] and [size_output_format] must both be defined."
    }
  }


  if (!is.null(squad_number_output_format) && !is.null(squad_number_input_format)) {
    if (isTRUE(grepl("^%", squad_number_output_format))) {
      new_list$x$metadata$positions$squad_number$type <- "datetime"
      new_list$x$metadata$positions$squad_number$type_id <- paste0("datetime$", squad_number_input_format)
      new_list$x$metadata$positions$squad_number$output_format_id <- paste0("datetime$", squad_number_output_format)
    } else if (isTRUE(grepl("_", squad_number_output_format))) {
      new_list$x$metadata$positions$squad_number$type <- "number"
      new_list$x$metadata$positions$squad_number$type_id <- paste0("number$", squad_number_input_format)
      new_list$x$metadata$positions$squad_number$output_format_id <- paste0("number$", squad_number_output_format)
    } else if (isTRUE(!is.na(squad_number_output_format) && isFALSE(grepl("_", squad_number_output_format)) && isFALSE(grepl("^%", squad_number_output_format)))) {
      new_list$x$metadata$positions$squad_number$type <- "string"
      new_list$x$metadata$positions$squad_number$type_id <- paste0("string$", squad_number_input_format)
      new_list$x$metadata$positions$squad_number$output_format_id <- paste0("string$", squad_number_output_format)
    }
    if (is.na(squad_number_input_format) && !is.na(squad_number_output_format)) {
      "[squad_number_input_format] and [squad_number_output_format] must both be defined."
    }
    if (!is.na(squad_number_input_format) && is.na(squad_number_output_format)) {
      "[squad_number_input_format] and [squad_number_output_format] must both be defined."
    }
  }


  if (!is.null(position_x_output_format) && !is.null(position_x_input_format)) {
    if (isTRUE(grepl("^%", position_x_output_format))) {
      new_list$x$metadata$positions$position_x$type <- "datetime"
      new_list$x$metadata$positions$position_x$type_id <- paste0("datetime$", position_x_input_format)
      new_list$x$metadata$positions$position_x$output_format_id <- paste0("datetime$", position_x_output_format)
    } else if (isTRUE(grepl("_", position_x_output_format))) {
      new_list$x$metadata$positions$position_x$type <- "number"
      new_list$x$metadata$positions$position_x$type_id <- paste0("number$", position_x_input_format)
      new_list$x$metadata$positions$position_x$output_format_id <- paste0("number$", position_x_output_format)
    } else if (isTRUE(!is.na(position_x_output_format) && isFALSE(grepl("_", position_x_output_format)) && isFALSE(grepl("^%", position_x_output_format)))) {
      new_list$x$metadata$positions$position_x$type <- "string"
      new_list$x$metadata$positions$position_x$type_id <- paste0("string$", position_x_input_format)
      new_list$x$metadata$positions$position_x$output_format_id <- paste0("string$", position_x_output_format)
    }
    if (is.na(position_x_input_format) && !is.na(position_x_output_format)) {
      "[position_x_input_format] and [position_x_output_format] must both be defined."
    }
    if (!is.na(position_x_input_format) && is.na(position_x_output_format)) {
      "[position_x_input_format] and [position_x_output_format] must both be defined."
    }
  }


  if (!is.null(position_y_output_format) && !is.null(position_y_input_format)) {
    if (isTRUE(grepl("^%", position_y_output_format))) {
      new_list$x$metadata$positions$position_y$type <- "datetime"
      new_list$x$metadata$positions$position_y$type_id <- paste0("datetime$", position_y_input_format)
      new_list$x$metadata$positions$position_y$output_format_id <- paste0("datetime$", position_y_output_format)
    } else if (isTRUE(grepl("_", position_y_output_format))) {
      new_list$x$metadata$positions$position_y$type <- "number"
      new_list$x$metadata$positions$position_y$type_id <- paste0("number$", position_y_input_format)
      new_list$x$metadata$positions$position_y$output_format_id <- paste0("number$", position_y_output_format)
    } else if (isTRUE(!is.na(position_y_output_format) && isFALSE(grepl("_", position_y_output_format)) && isFALSE(grepl("^%", position_y_output_format)))) {
      new_list$x$metadata$positions$position_y$type <- "string"
      new_list$x$metadata$positions$position_y$type_id <- paste0("string$", position_y_input_format)
      new_list$x$metadata$positions$position_y$output_format_id <- paste0("string$", position_y_output_format)
    }
    if (is.na(position_y_input_format) && !is.na(position_y_output_format)) {
      "[position_y_input_format] and [position_y_output_format] must both be defined."
    }
    if (!is.na(position_y_input_format) && is.na(position_y_output_format)) {
      "[position_y_input_format] and [position_y_output_format] must both be defined."
    }
  }


  if (!is.null(filter_output_format) && !is.null(filter_input_format)) {
    if (isTRUE(grepl("^%", filter_output_format))) {
      new_list$x$metadata$positions$filter$type <- "datetime"
      new_list$x$metadata$positions$filter$type_id <- paste0("datetime$", filter_input_format)
      new_list$x$metadata$positions$filter$output_format_id <- paste0("datetime$", filter_output_format)
    } else if (isTRUE(grepl("_", filter_output_format))) {
      new_list$x$metadata$positions$filter$type <- "number"
      new_list$x$metadata$positions$filter$type_id <- paste0("number$", filter_input_format)
      new_list$x$metadata$positions$filter$output_format_id <- paste0("number$", filter_output_format)
    } else if (isTRUE(!is.na(filter_output_format) && isFALSE(grepl("_", filter_output_format)) && isFALSE(grepl("^%", filter_output_format)))) {
      new_list$x$metadata$positions$filter$type <- "string"
      new_list$x$metadata$positions$filter$type_id <- paste0("string$", filter_input_format)
      new_list$x$metadata$positions$filter$output_format_id <- paste0("string$", filter_output_format)
    }
    if (is.na(filter_input_format) && !is.na(filter_output_format)) {
      "[filter_input_format] and [filter_output_format] must both be defined."
    }
    if (!is.na(filter_input_format) && is.na(filter_output_format)) {
      "[filter_input_format] and [filter_output_format] must both be defined."
    }
  }


  if (!is.null(photo_output_format) && !is.null(photo_input_format)) {
    if (isTRUE(grepl("^%", photo_output_format))) {
      new_list$x$metadata$positions$photo$type <- "datetime"
      new_list$x$metadata$positions$photo$type_id <- paste0("datetime$", photo_input_format)
      new_list$x$metadata$positions$photo$output_format_id <- paste0("datetime$", photo_output_format)
    } else if (isTRUE(grepl("_", photo_output_format))) {
      new_list$x$metadata$positions$photo$type <- "number"
      new_list$x$metadata$positions$photo$type_id <- paste0("number$", photo_input_format)
      new_list$x$metadata$positions$photo$output_format_id <- paste0("number$", photo_output_format)
    } else if (isTRUE(!is.na(photo_output_format) && isFALSE(grepl("_", photo_output_format)) && isFALSE(grepl("^%", photo_output_format)))) {
      new_list$x$metadata$positions$photo$type <- "string"
      new_list$x$metadata$positions$photo$type_id <- paste0("string$", photo_input_format)
      new_list$x$metadata$positions$photo$output_format_id <- paste0("string$", photo_output_format)
    }
    if (is.na(photo_input_format) && !is.na(photo_output_format)) {
      "[photo_input_format] and [photo_output_format] must both be defined."
    }
    if (!is.na(photo_input_format) && is.na(photo_output_format)) {
      "[photo_input_format] and [photo_output_format] must both be defined."
    }
  }


  if (!is.null(metadata_output_format) && !is.null(metadata_input_format)) {
    if (isTRUE(grepl("^%", metadata_output_format))) {
      new_list$x$metadata$positions$metadata$type <- "datetime"
      new_list$x$metadata$positions$metadata$type_id <- paste0("datetime$", metadata_input_format)
      new_list$x$metadata$positions$metadata$output_format_id <- paste0("datetime$", metadata_output_format)
    } else if (isTRUE(grepl("_", metadata_output_format))) {
      new_list$x$metadata$positions$metadata$type <- "number"
      new_list$x$metadata$positions$metadata$type_id <- paste0("number$", metadata_input_format)
      new_list$x$metadata$positions$metadata$output_format_id <- paste0("number$", metadata_output_format)
    } else if (isTRUE(!is.na(metadata_output_format) && isFALSE(grepl("_", metadata_output_format)) && isFALSE(grepl("^%", metadata_output_format)))) {
      new_list$x$metadata$positions$metadata$type <- "string"
      new_list$x$metadata$positions$metadata$type_id <- paste0("string$", metadata_input_format)
      new_list$x$metadata$positions$metadata$output_format_id <- paste0("string$", metadata_output_format)
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
