#' Bind svg annotator data
#' @name bind_svg_annotator_data
#' @param data Data.
#' @param id ID. A column of IDs of elements in the uploaded SVG file. Flourish type hint: column
#' @param reveal_id Reveal layer. A column to reveal when layer is clicked. Flourish type hint: column
#' @param h1 Heading 1. A column containing the main header. Flourish type hint: column
#' @param h2 Heading 2. A column containing a secondary header. Flourish type hint: column
#' @param content Content. A column containing text or HTML to display. Flourish type hint: column
#' @param link Link. A URL that can be opened when a layer is clicked. Any reveal layers or popups will be overridden. Flourish type hint: column
#' @param metadata Info for popups. One or more columns to display in popups and panels. Flourish type hint: columns
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "svg_annotator", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_svg_annotator_data(gapminder)
#' )
#' @export

bind_svg_annotator_data <- function(
    .,
    data = NULL,
    id = NULL,
    reveal_id = NULL,
    h1 = NULL,
    h2 = NULL,
    content = NULL,
    link = NULL,
    metadata = NULL) {
  bindings_error(., "svg_annotator")

  old_list <- .
  new_list <- list()

  if (!is.null(data)) {
    columns_data <- c(paste(id), paste(reveal_id), paste(h1), paste(h2), paste(content), paste(link), paste(metadata), NULL)
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
  new_list$x$bindings$data$h1 <- h1
  new_list$x$bindings$data$h2 <- h2
  new_list$x$bindings$data$content <- content
  new_list$x$bindings$data$link <- link

  if (is.null(metadata)) {
    new_list$x$bindings$data$metadata <- "list"
  } else {
    new_list$x$bindings$data$metadata <- metadata
  }

  deep_merge(old_list, new_list)
}
