#' flourishcharts API warning
#' @param post_call The HTTR POST call to the API
#' @noRd
flourish_charts_api_warning <- function(post_call) {
  post_call_message <- httr::http_status(post_call)[["message"]]
  post_call_content <- httr::content(post_call, "text")
  post_call_error <- httr::http_error(post_call)
  post_call_ct <- post_call$headers$`content-type`

  if (isTRUE(post_call_error) && post_call_ct == "text/html; charset=UTF-8") {
    return(paste0(post_call_message, ". We currently do not support HTML uploads to Canva."))
  } else if (isTRUE(post_call_error) && post_call_ct != "text/html; charset=UTF-8") {
    return(paste0(post_call_message, ". Your image file cannot be uploaded. Please try again."))
  } else if (isFALSE(post_call_error)) {
    return(paste0("Success! Please go to canva.com / canva.cn and open the flourishcharts Canva content app."))
  }
}


#' flourishcharts API warning continue
#' @param x HTTR POST call
#' @noRd
flourish_charts_api_warning_continue <- function(x) {
  withCallingHandlers(
    expr = flourish_charts_api_warning(x),
    warning = function(w) {
      if (inherits(x = w)) {
        utils::str(w)
        tryInvokeRestart("muffleWarning")
        return(flourish_charts_api_warning(x))
      }
    }
  )
}


#' Check that the data binding strings match the columns in the data frame
#' @param strings Strings to match
#' @param data Dataset to match
#' @noRd

check_col_names_in_data <- function(strings = NULL,
                                    data = NULL,
                                    data_name = NULL) {
  function_args <- list()
  function_args$data <- data
  function_args$strings <- strings
  result <- all(function_args$strings %in% colnames(function_args$data))
  if (isFALSE(result)) {
    warning(paste0("Your data binding columns do not match the column names in the `", data_name, "` dataset used in this graph. Please double check your spelling."))
  }
}


#' Spelling check column names.
#' @param strings Strings
#' @param data Data frame
#' @noRd

spelling_check_column_names <- function(strings,
                                        data) {
  strings <- strings

  data_name <- deparse(substitute(data))

  if (!is.null(data)) {
    check_col_names_in_data(
      strings = strings,
      data = data,
      data_name = data_name
    )
  }
}

# Internal functions for Flourish.
# Ideally, not visible to end-user.

#' Deep merge two lists
#' @param list1 First list
#' @param list2 Second list
#' @noRd

deep_merge <- function(list1, list2) {
  return(utils::modifyList(list1, list2[intersect(names(list2), names(list1))]))
  rm(list1)
  rm(list2)
}

#' Default layout for a Flourish graph
#' @param chart_description Set chart description for screenreader
#' @param ... Set additional layout parameters
#' @noRd

flourish_default_layout <- function(chart_description = NULL,
                                    ...) {
  x <- list()

  # accessibility
  if (is.null(chart_description)) {
    x$layout$screenreader_hide_primary <- TRUE
  } else if (!is.null(chart_description)) {
    x$layout$screenreader_hide_primary <- FALSE
    x$layout$screenreader_text_primary <- chart_description
  }

  return(x)
}

#' Base coalesce helper function
#' @noRd
base_coalesce_chart_type <- function(template_version, chart_type_1 = NULL, chart_type_2 = NULL) {
  if (isTRUE(is.null(chart_type_1) && template_version == "@flourish/line-bar-pie")) {
    chart_type_1 <- "line"
  }
  if (isTRUE(is.null(chart_type_2) && template_version == "@flourish/hierarchy")) {
    chart_type_2 <- "treemap"
  }
  apply(cbind(chart_type_1, chart_type_2), 1, function(x) {
    x[which(!is.na(x))[1]]
  })
}

#' Base coalesce helper function
#' @noRd
base_coalesce <- function(...) {
  apply(cbind(...), 1, function(x) {
    x[which(!is.na(x))[1]]
  })
}

#' Bindings error function
#' @param chart Flourish chart
#' @param template_function Template function name
#' @description Throw an error if the user attempts to apply the wrong binding function for a chart template.
#' @noRd

bindings_error <- function(chart, template_function) {
  if (chart$x$template != paste0("@flourish/", gsub("_", "-", template_function)) && !is.null(chart$x$template)) {
    stop(paste0("`bind_", template_function, "_data()` is not supported for this chart template: ", chart$x$template))
  }
}


#' Details error function
#' @param chart Flourish chart
#' @param template_function Template function name
#' @description Throw an error if the user attempts to apply the wrong details function for a chart template.
#' @noRd

details_error <- function(chart, template_function) {
  if (chart$x$template != paste0("@flourish/", gsub("_", "-", template_function)) && !is.null(chart$x$template)) {
    stop(paste0("`set_", template_function, "_details()` is not supported for this chart template: ", chart$x$template))
  }
}
