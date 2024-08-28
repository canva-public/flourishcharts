#' Bind pictogram data
#' @name bind_pictogram_data
#' @param data Data.
#' @param icons_data Icons data.
#' @param main_category Main category. The (categorical) column that defines the categories along the main axis. Flourish type hint: column
#' @param sub_category Subcategory. The (categorical) column that defines the categories within each bar. Flourish type hint: column
#' @param values Values. (Optional) Choose the numeric columns to determine the size of each bar.  If more than 1 is chosen, a dropdown will appear in the visualization, which lets the user choose. Flourish type hint: columns
#' @param icon_id Icon ID. IDs for joining icons in the Icons datasheet.  Must contain IDs that match Icon ID values in Icons Set to the same column as the Main category or Subcategory. Flourish type hint: column
#' @param color Color. The (categorical) column which determines the icon color. Set to the same column as the Main category or Subcategory. Flourish type hint: column
#' @param metadata Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in popups and panels Flourish type hint: columns
#' @param icons_id Icon ID. Unique ID for joining icon path strings. Must contain IDs that match the Icon ID values in DataFlourish type hint: column
#' @param icons_path_string Icon. Icon path string (e.g. "M10,10 l80,0 l0,80 l-80,0 z") or the name of a built-in icon (e.g. "female"). Flourish type hint: column
#' @param icons_width Icon width. Icon width (in pixels). Flourish type hint: column
#' @param icons_height Icon height. Icon height (in pixels). Flourish type hint: column
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "pictogram", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_pictogram_data(gapminder)
#' )
#' @export


bind_pictogram_data <- function(
    .,
    data = NULL,
    icons_data = NULL,
    main_category = NULL,
    sub_category = NULL,
    values = NULL,
    icon_id = NULL,
    color = NULL,
    metadata = NULL,
    icons_id = NULL,
    icons_path_string = NULL,
    icons_width = NULL,
    icons_height = NULL) {
  bindings_error(., "pictogram")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(main_category), paste(sub_category), paste(values), paste(icon_id), paste(color), paste(metadata), NULL)
    columns_data <- columns_data[!sapply(columns_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_data, split = ",", fixed = TRUE),
      data = data
    )
    int_columns_data <- sapply(data, is.integer)
    data[, int_columns_data] <- lapply(data[, int_columns_data], as.character)
  }
  if (!is.null(icons_data)) {
    columns_icons_data <- c(paste(icons_id), paste(icons_path_string), paste(icons_width), paste(icons_height), NULL)
    columns_icons_data <- columns_icons_data[!sapply(columns_icons_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_icons_data, split = ",", fixed = TRUE),
      data = icons_data
    )
    int_columns_icons_data <- sapply(icons_data, is.integer)
    icons_data[, int_columns_icons_data] <- lapply(icons_data[, int_columns_icons_data], as.character)
  }
  new_list$x$data$data <- data
  new_list$x$data$icons <- icons_data
  new_list$x$bindings$data$main_category <- main_category
  new_list$x$bindings$data$sub_category <- sub_category

  if (is.null(values)) {
    new_list$x$bindings$data$values <- "list"
  } else {
    new_list$x$bindings$data$values <- values
  }

  new_list$x$bindings$data$icon_id <- icon_id
  new_list$x$bindings$data$color <- color

  if (is.null(metadata)) {
    new_list$x$bindings$data$metadata <- "list"
  } else {
    new_list$x$bindings$data$metadata <- metadata
  }

  new_list$x$bindings$icons$id <- icons_id
  new_list$x$bindings$icons$path_string <- icons_path_string
  new_list$x$bindings$icons$width <- icons_width
  new_list$x$bindings$icons$height <- icons_height
  deep_merge(old_list, new_list)
}
