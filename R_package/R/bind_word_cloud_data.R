#' Bind word cloud data
#' @name bind_word_cloud_data
#' @param words_data Words data.
#' @param word Word
#' @param value Value
#' @param category Category
#' @param metadata Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in popups and panels Flourish type hint: columns
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "word_cloud", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_word_cloud_data(gapminder)
#' )
#' @export

bind_word_cloud_data <- function(
    .,
    words_data = NULL,
    word = NULL,
    value = NULL,
    category = NULL,
    metadata = NULL) {
  bindings_error(., "word_cloud")

  old_list <- .
  new_list <- list()

  if (!is.null(words_data)) {
    columns_words_data <- c(paste(word), paste(value), paste(category), paste(metadata), NULL)
    columns_words_data <- columns_words_data[!sapply(columns_words_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_words_data, split = ",", fixed = TRUE),
      data = words_data
    )
    int_columns_words_data <- sapply(words_data, is.integer)
    words_data[, int_columns_words_data] <- lapply(words_data[, int_columns_words_data], as.character)
  }
  new_list$x$data$words <- words_data
  new_list$x$bindings$words$word <- word
  new_list$x$bindings$words$value <- value
  new_list$x$bindings$words$category <- category

  if (is.null(metadata)) {
    new_list$x$bindings$words$metadata <- "list"
  } else {
    new_list$x$bindings$words$metadata <- metadata
  }

  deep_merge(old_list, new_list)
}
