#' Plot a Flourish graph.
#'
#' Create a graph using Flourish's API (https://developers.flourish.studio/api/introduction/).
#' @name flourish
#' @param chart_type Required - a chart type string for each graph in Flourish's library. Preferred usage compared to `template_id` and `template_version`.
#' @param base_visualisation_id Optional - provide the numerical ID of an existing public (published) Flourish visualisation to reference it's configuration
#' @param template_id Optional - the Flourish template ID, found at https://app.flourish.studio/@flourish. Use if you cannot use `chart_type`.
#' @param template_version_number Optional - the template's version number. Also found at https://app.flourish.studio/@flourish. Use if you cannot use `chart_type`.
#' @param chart_description Optional - a screen-reader description. A text alternative to the visual content that will only be visible to screen-readers, e.g. “The line chart shows China consistently higher than the other countries since 1990”. Do no replicate your title, since that will also be read by screenreaders.
#' @param api_key Required - our API key which can be generated within your profile account. Defaults to Sys.getenv("FLOURISH_API_KEY").
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(
#'     chart_type = "scatter", api_key = Sys.getenv("FLOURISH_API_KEY")
#'   ) |> 
#'   bind_scatter_data(
#'     data = subset(gapminder, year == 2007), 
#'     y = "gdpPercap", x = "lifeExp"
#'   )
#'  )
#' @export

flourish <- function(chart_type = NULL,
                     chart_description = NULL,
                     base_visualisation_id = NULL,
                     template_id = NULL,
                     template_version_number = NULL,
                     api_key = Sys.getenv("FLOURISH_API_KEY")) {
  api_version <- "5.1.0"
  templates_chart_type_data <- templates_private[templates_private$chart_type == chart_type, ]
  if (!is.null(base_visualisation_id)) {
    base_visualisation_data_format <- "object"
    # download the base visualisation's configuration to get template_id/version to setup the iframe
    base_visualisation_url <- sprintf("https://public.flourish.studio/visualisation/%d/visualisation-object.json", base_visualisation_id)
    resp <- httr::GET(base_visualisation_url)
    if (resp$status_code == 403) {
      stop(paste("Access denied accessing base visualisation ", base_visualisation_url, " - please ensure it is published for public use"))
    }
    jsonRespParsed <- httr::content(resp, as = "parsed")
    template_id <- jsonRespParsed$template
    template_version <- jsonRespParsed$version
    # The Flourish Live API now supports array of objects, so let's convert them as it's just easier to work with data frames in R:
    # loop through datasets (there might be multiple, depending on template)
    for (i in seq_along(jsonRespParsed$data)) {
      # Convert the list of lists to a data frame
      df <- as.data.frame(do.call(rbind, jsonRespParsed$data[[i]]))
      # Assign the modified data frame back to the original list
      jsonRespParsed$data[[i]] <- df
    }
    for (i in seq_along(jsonRespParsed$data)) {
      list_element <- jsonRespParsed$metadata[[i]]
      for (col_name in names(jsonRespParsed$data[[i]])) {
        if (list_element[[col_name]]$type == "string") {
          jsonRespParsed$data[[i]][[col_name]][jsonRespParsed$data[[i]][[col_name]] == "NA"] <- ""
          jsonRespParsed$data[[i]][[col_name]] <- as.character(jsonRespParsed$data[[i]][[col_name]])
        } else if (list_element[[col_name]]$type == "number") {
          jsonRespParsed$data[[i]][[col_name]][jsonRespParsed$data[[i]][[col_name]] == "NA"] <- ""
          jsonRespParsed$data[[i]][[col_name]] <- suppressWarnings(as.numeric(jsonRespParsed$data[[i]][[col_name]]))
        } else if (list_element[[col_name]]$type == "datetime") {
          jsonRespParsed$data[[i]][[col_name]][jsonRespParsed$data[[i]][[col_name]] == "NA"] <- ""
          jsonRespParsed$data[[i]][[col_name]] <- as.character(jsonRespParsed$data[[i]][[col_name]])
        }
      }
    }
    if (jsonRespParsed$template %in% c("@flourish/line-bar-pie", "@flourish/hierarchy")) {
      base_viz_chart_type <- base_coalesce_chart_type(jsonRespParsed$template, jsonRespParsed$state$chart_type, jsonRespParsed$state$hierarchy_layout)
    } else {
      base_viz_chart_type <- chart_type
    }
    base_bindings <- jsonRespParsed$bindings
    base_data <- jsonRespParsed$data
    base_state <- jsonRespParsed$state
    base_metadata <- jsonRespParsed$metadata
  } else {
    base_bindings <- NULL
    base_data <- NULL
    base_state <- NULL
    base_metadata <- NULL
    base_visualisation_data_format <- NULL
  }

  if (!is.null(chart_type) && nrow(templates_chart_type_data) > 0) {
    template_id <- templates_chart_type_data$template_id
    template_version <- templates_chart_type_data$template_version
    base_viz_chart_type <- templates_chart_type_data$chart_type
    if (!is.null(base_visualisation_id)) {
      base_viz_chart_type <- NULL
    }
  } else if (is.null(chart_type) && is.null(base_visualisation_id) && is.null(template_id)) {
    stop("Error: please enter a chart type, template ID and version number, or the base visualisation ID of an existing published Flourish graph, if available.")
  } else if (!is.null(base_visualisation_id)) {
    template_id <- jsonRespParsed$template
    template_version <- jsonRespParsed$version
  } else if (is.null(chart_type) && !is.null(template_id) && !is.null(template_version_number)) {
    template_id <- template_id
    template_version <- template_version_number
  } else if (!is.null(chart_type) && !is.null(template_id) && !is.null(template_version_number)) {
    stop("Error: specify only a chart type or a template ID and version number.")
  } else if (!is.null(template_id) && is.null(template_version_number)) {
    stop("Error: please specify a template version number.")
  } else if (is.null(template_id) && !is.null(template_version_number)) {
    stop("Error: please specify a template ID or a chart type.")
  } else if (!is.null(chart_type) && nrow(templates_chart_type_data) < 1) {
    stop("Error: your chart type string is not an exact match with Flourish's available graphs.")
  } else if (grepl("(^map_.*$)|(^globe_.*)", chart_type)) {
    stop("Error: we do not currently support visualizing map templates via the chart type parameter.")
  }

  # generate an ID for the div
  random_string <- c(
    sample(LETTERS, 5, replace = TRUE),
    sample(0:9, 9, replace = TRUE),
    sample(LETTERS, 7, replace = TRUE)
  )
  random_string_value <- paste0(random_string, collapse = "")

  elementId <- sprintf(
    "htmlwidget-%s",
    random_string_value
  )
  chartId <- sprintf(
    "chart-%s",
    random_string_value
  )
  if (isTRUE(knitr::is_html_output())) {
    iframe_src <- paste0("https://flourish-api.com/api/v1/live/template?api_key=", api_key, "&template=", template_id, "&api_version=", api_version, "&version=", template_version)
    iframe_height <- "575px"
  } else {
    iframe_src <- paste0("https://flourish-api.com/api/v1/live/template?api_key=", api_key, "&template=", template_id, "&api_version=", api_version, "&version=", template_version)
    iframe_height <- "100%"
  }

  # forward options using x
  x <- list(
    chart_id = chartId,
    template = template_id,
    version = template_version,
    api_key = api_key,
    chart_type = base_viz_chart_type,
    state = c(flourish_default_layout(chart_description),
      chart_type = base_viz_chart_type,
      hierarchy_layout = base_viz_chart_type
    ),
    elementId = paste0("#", elementId),
    data = NULL,
    base_visualisation_id = base_visualisation_id,
    base_state = dplyr::coalesce(base_state, flourish_default_layout(chart_description)),
    base_bindings = base_bindings,
    base_data = base_data,
    base_metadata = base_metadata,
    base_visualisation_data_format = base_visualisation_data_format
  )

  # create widget
  htmlwidgets::prependContent(
    htmlwidgets::createWidget(
      name = "flourish-live",
      elementId = elementId,
      x,
      package = "flourishcharts",
      sizingPolicy = htmlwidgets::sizingPolicy(
        viewer.padding = 0,
        viewer.fill = TRUE,
        browser.fill = TRUE,
        viewer.defaultWidth = "100%",
        knitr.defaultWidth = "100%"
      )
    ),
    htmltools::tags$iframe(
      id = chartId,
      width = "100%",
      height = iframe_height,
      seamless = "seamless",
      scrolling = "no",
      frameborder = "2",
      title = "Interactive or visual content",
      sandbox = "allow-same-origin allow-forms allow-scripts allow-downloads allow-popups allow-popups-to-escape-sandbox allow-top-navigation-by-user-activation",
      src = iframe_src
    )
  )
}
