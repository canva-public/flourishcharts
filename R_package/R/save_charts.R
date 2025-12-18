#' Snapshot a Flourish graph.
#'
#' Save a graph using Flourish's API (https://developers.flourish.studio/api/introduction/).
#' @name snapshot
#' @param format Mandatory - File format of snapshot: one of "png", "jpeg", "svg". Defaults to "png".
#' @param filename Optional - If chart is downloaded to local machine, you may specify the filename. If not provided, will default to "Flourish API Image.png".
#' @param download Mandatory - Whether the template is downloaded to local machine or the image data will be passed in the callback as a data URL with base64-encoded data. If `FALSE`, copy the base-64 encoded string from the chart console log. This makes it easy to use that data as, say, the `src` attribute of an `<img>` tag. Defaults to `TRUE`.
#' @param scale Optional - You can supply a scale parameter (default: 1) to increase the resolution of the generated image.
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return The filepath to the saved graph or a data URL with base64-encoded data.
#' @examples
#' try(
#'   flourish(
#'     chart_type = "scatter", api_key = Sys.getenv("FLOURISH_API_KEY")
#'   ) |>
#'   bind_scatter_data(
#'     data = subset(gapminder, year == 2007),
#'     y = "gdpPercap", x = "lifeExp"
#'   ) |>
#'   snapshot(
#'     format = "png",
#'     scale = 1,
#'     filename = "flourish_scatterplot",
#'     download = FALSE
#'   )
#'  )
#' @export

snapshot <- function(
  .,
  format = "png",
  filename = "Flourish API Image",
  download = TRUE,
  scale = 1
) {

  old_list <- .
  new_list <- list()

  list_format <- c("png", "svg", "jpeg", "jpg")

  if (!is.null(format)) {
    if (!format %in% list_format) {
      stop("`format` must be one of: c('png', 'svg', 'jpeg', 'jpg')")
    } else {
      new_list$x$state$snapshot$format <- format
    }
  }

  list_download <- c(TRUE, FALSE)
  if (!is.null(download)) {
    if (!download %in% list_download) {
      stop("`download` must be one of: c(TRUE, FALSE)")
    } else {
      new_list$x$state$snapshot$download <- download
    }
  }
  new_list$x$state$snapshot$filename <- filename
  new_list$x$state$snapshot$scale <- scale

  deep_merge(old_list, new_list)
}
