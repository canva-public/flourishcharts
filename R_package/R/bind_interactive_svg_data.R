#' Bind interactive svg data
#' @name bind_interactive_svg_data
#' @param data Data.
#' @param id ID. A column of IDs of elements in the uploaded SVG file. Flourish type hint: column
#' @param reveal_id Reveal layer. A column to reveal when layer is clicked. Flourish type hint: column
#' @param h3 Heading 1. A column containing the main header. Flourish type hint: column
#' @param h4 Heading 2. A column containing a secondary header. Flourish type hint: column
#' @param content Content. A column containing text or HTML to display. Flourish type hint: column
#' @param link Link. A URL that can be opened when a layer is clicked. Any reveal layers or popups will be overridden. Flourish type hint: column
#' @param metadata Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in custom  popups and panels Flourish type hint: columns
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "interactive_svg", api_key = Sys.getenv("FLOURISH_API_KEY")) |>
#'   bind_interactive_svg_data(gapminder)
#' )
#' @export

bind_interactive_svg_data <- function(
    .,
    data = NULL,
    id = NULL,
    reveal_id = NULL,
    h3 = NULL,
    h4 = NULL,
    content = NULL,
    link = NULL,
    metadata = NULL) {
  bindings_error(., "interactive_svg")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(id), paste(reveal_id), paste(h3), paste(h4), paste(content), paste(link), paste(metadata), NULL)
    columns_data <- columns_data[!sapply(columns_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_data, split = ",", fixed = TRUE),
      data = data
    )
    int_columns_data <- sapply(data, is.integer)
    data[, int_columns_data] <- lapply(data[, int_columns_data], as.character)
  }
  new_list$x$data$data <- data
  new_list$x$bindings$data$id <- id
  new_list$x$bindings$data$reveal_id <- reveal_id
  new_list$x$bindings$data$h3 <- h3
  new_list$x$bindings$data$h4 <- h4
  new_list$x$bindings$data$content <- content
  new_list$x$bindings$data$link <- link

  if (is.null(metadata)) {
    new_list$x$bindings$data$metadata <- "list"
  } else {
    new_list$x$bindings$data$metadata <- metadata
  }

  deep_merge(old_list, new_list)
}
