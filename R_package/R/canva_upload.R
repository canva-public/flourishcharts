#' Set up function for uploading graphs to canva.com. Only available for internal use.
#' @name canva_upload
#' @param graph Plot object.
#' @param name File name or description to appear in Canva's object panel.
#' @param live_update_id An ID or string (set by the user) to update an existing flourishcharts graph in Canva that also has the same ID.
#' @param api_key API key - grab from the flourishcharts content app on canva.com
#' @param width default width of plot in pixels
#' @param height default height of plot in pixels
#' @return A string stating whether the upload to canva.com was successful.
#' @examples 
#' try(
#'   chart <- flourish(
#'     chart_type = "scatter", api_key = Sys.getenv("FLOURISH_API_KEY")
#'   ) |> 
#'   bind_scatter_data(
#'     data = subset(gapminder, year == 2007), 
#'     y = "gdpPercap", x = "lifeExp"
#'   )
#'   canva_upload(
#'     graph = chart, name = "Scatterplot - gapminder 2007"
#'   )
#'  )
#' @noRd
canva_upload <- function(graph,
                         name = NULL,
                         live_update_id = NULL,
                         api_key = Sys.getenv("FLOURISH_CHARTS_API_KEY"),
                         width = "640",
                         height = "640") {
  local_file <- tempfile(fileext = paste0(".json"), tmpdir = "~")
  graph$x <- graph$x[-which(sapply(graph$x, is.null))]
  write(jsonlite::toJSON(graph$x, auto_unbox = T), file = local_file)

  b <- httr::POST(
    url = paste0("https://canviz.canva-corp.com/upload"),
    body = list(
      name = name,
      external_id = live_update_id,
      file = httr::upload_file(
        path = local_file,
        type = "application/json"
      ),
      width = width,
      height = height
    ),
    httr::add_headers(Authorization = api_key)
  )


  file_path <- b$request$fields$file$path
  if (file.exists(file_path)) {
    file.remove(file_path)
  }

  flourish_charts_api_warning_continue(b)
}
