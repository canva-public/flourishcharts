#' Bind network graph data
#' @name bind_network_graph_data
#' @param links_data Links data.
#' @param nodes_data Nodes data.
#' @param links_source Links source
#' @param links_target Links target
#' @param links_value Size by. A numerical value used to set the thickness of the links. Flourish type hint: column
#' @param nodes_id ID. A unique identifier for each point in the network. If not specified, point information will be extracted from the links sheet. Flourish type hint: column
#' @param nodes_group Color by. A group to which the point belongs. If set, can be used to color the points. Ignored if ID not set. Flourish type hint: column
#' @param nodes_size Size by. A numerical value used to size the points. Ignored if ID not set. Flourish type hint: column
#' @param nodes_image Image. An image to go into the circle. Flourish type hint: column
#' @param nodes_metadata Info for popups. One or more columns of information (text,  image URLs ,  embedded charts  etc) to include in  popups and panels Ignored if ID not set. Flourish type hint: columns
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "network", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_network_graph_data(gapminder)
#' )
#' @export

bind_network_graph_data <- function(
    .,
    links_data = NULL,
    nodes_data = NULL,
    links_source = NULL,
    links_target = NULL,
    links_value = NULL,
    nodes_id = NULL,
    nodes_group = NULL,
    nodes_size = NULL,
    nodes_image = NULL,
    nodes_metadata = NULL) {
  bindings_error(., "network_graph")

  old_list <- .
  new_list <- list()

  if (!is.null(links_data)) {
    columns_links_data <- c(paste(links_source), paste(links_target), paste(links_value), NULL)
    columns_links_data <- columns_links_data[!sapply(columns_links_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_links_data, split = ",", fixed = TRUE),
      data = links_data
    )
    int_columns_links_data <- sapply(links_data, is.integer)
    links_data[, int_columns_links_data] <- lapply(links_data[, int_columns_links_data], as.character)
  }
  if (!is.null(nodes_data)) {
    columns_nodes_data <- c(paste(nodes_id), paste(nodes_group), paste(nodes_size), paste(nodes_image), paste(nodes_metadata), NULL)
    columns_nodes_data <- columns_nodes_data[!sapply(columns_nodes_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_nodes_data, split = ",", fixed = TRUE),
      data = nodes_data
    )
    int_columns_nodes_data <- sapply(nodes_data, is.integer)
    nodes_data[, int_columns_nodes_data] <- lapply(nodes_data[, int_columns_nodes_data], as.character)
  }
  new_list$x$data$links <- links_data
  new_list$x$data$nodes <- nodes_data
  new_list$x$bindings$links$source <- links_source
  new_list$x$bindings$links$target <- links_target
  new_list$x$bindings$links$value <- links_value
  new_list$x$bindings$nodes$id <- nodes_id
  new_list$x$bindings$nodes$group <- nodes_group
  new_list$x$bindings$nodes$size <- nodes_size
  new_list$x$bindings$nodes$image <- nodes_image

  if (is.null(nodes_metadata)) {
    new_list$x$bindings$nodes$metadata <- "list"
  } else {
    new_list$x$bindings$nodes$metadata <- nodes_metadata
  }

  deep_merge(old_list, new_list)
}
