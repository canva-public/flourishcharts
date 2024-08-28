#' Bind tournament data
#' @name bind_tournament_data
#' @param matches_data Matches data. teams.
#' @param round Stage. The stage of the tournament, for example "Round of 16" or "Semifinals". Flourish type hint: column
#' @param team_a Participant A. The first participant or team in this match. Flourish type hint: column
#' @param team_b Participant B. The second participant or team in this match. Flourish type hint: column
#' @param winner Winner. The winning participant or team in this match. Must match the name of either Participant A or Participant B. If left blank, the template will assume that the match is upcoming. Flourish type hint: column
#' @param score_a Participant A score. The score of Participant A in this match. Will appear along with the participants name in the box. Suggested data type hints: string, number. Flourish type hint: column
#' @param score_b Participant B score. The score of Participant B in this match. Will appear along with the participants name in the box. Suggested data type hints: string, number. Flourish type hint: column
#' @param metadata Info for popups. One or more columns of information (text,  image URLs ,  embedded charts  etc) to include in  popups and panels Suggested data type hints: string, number, datetime. Flourish type hint: columns
#' @param id ID. Participant ID. Should match a participants name from the Matches sheet. Flourish type hint: column
#' @param image Image. Image to render in the participant box. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
#' @param metadata_input_format Formats/parses dates, strings, and numbers for the metadata column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param metadata_output_format Formats/parses dates, strings, and numbers for the metadata column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "%Y-%m-%dT%H:%M:%S.%LZ", "%d/%m/%Y", "%d %b", "%-I%p", "Q%q %Y", "%Y Q%q", and so on. All available formats noted in Flourish documentation: [https://developers.flourish.studio/api/create-visualisation/](https://developers.flourish.studio/api/create-visualisation/).. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param team_a_input_format Formats/parses dates, strings, and numbers for the team_a column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param team_a_output_format Formats/parses dates, strings, and numbers for the team_a column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param score_a_input_format Formats/parses dates, strings, and numbers for the score_a column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param score_a_output_format Formats/parses dates, strings, and numbers for the score_a column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param team_b_input_format Formats/parses dates, strings, and numbers for the team_b column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param team_b_output_format Formats/parses dates, strings, and numbers for the team_b column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param score_b_input_format Formats/parses dates, strings, and numbers for the score_b column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param score_b_output_format Formats/parses dates, strings, and numbers for the score_b column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param round_input_format Formats/parses dates, strings, and numbers for the round column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param round_output_format Formats/parses dates, strings, and numbers for the round column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param winner_input_format Formats/parses dates, strings, and numbers for the winner column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param winner_output_format Formats/parses dates, strings, and numbers for the winner column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param id_input_format Formats/parses dates, strings, and numbers for the id column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param id_output_format Formats/parses dates, strings, and numbers for the id column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param image_input_format Formats/parses dates, strings, and numbers for the image column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param image_output_format Formats/parses dates, strings, and numbers for the image column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "tournament", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_tournament_data(gapminder)
#' )
#' @export

bind_tournament_data <- function(
    .,
    matches_data = NULL,
    round = NULL,
    team_a = NULL,
    team_b = NULL,
    winner = NULL,
    score_a = NULL,
    score_b = NULL,
    metadata = NULL,
    id = NULL,
    image = NULL,
    metadata_input_format = NULL,
    metadata_output_format = NULL,
    team_a_input_format = NULL,
    team_a_output_format = NULL,
    score_a_input_format = NULL,
    score_a_output_format = NULL,
    team_b_input_format = NULL,
    team_b_output_format = NULL,
    score_b_input_format = NULL,
    score_b_output_format = NULL,
    round_input_format = NULL,
    round_output_format = NULL,
    winner_input_format = NULL,
    winner_output_format = NULL,
    id_input_format = NULL,
    id_output_format = NULL,
    image_input_format = NULL,
    image_output_format = NULL) {
  bindings_error(., "tournament")

  old_list <- .
  new_list <- list()

  if (!is.null(matches_data)) {
    columns_matches_data <- c(paste(round), paste(team_a), paste(team_b), paste(winner), paste(score_a), paste(score_b), paste(metadata), NULL)
    columns_matches_data <- columns_matches_data[!sapply(columns_matches_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_matches_data, split = ",", fixed = TRUE),
      data = matches_data
    )
    int_columns_matches_data <- sapply(matches_data, is.integer)
    matches_data[, int_columns_matches_data] <- lapply(matches_data[, int_columns_matches_data], as.character)
  }
  new_list$x$data$matches <- matches_data
  new_list$x$bindings$matches$round <- round
  new_list$x$bindings$matches$team_a <- team_a
  new_list$x$bindings$matches$team_b <- team_b
  new_list$x$bindings$matches$winner <- winner
  new_list$x$bindings$matches$score_a <- score_a
  new_list$x$bindings$matches$score_b <- score_b

  if (is.null(metadata)) {
    new_list$x$bindings$matches$metadata <- "list"
  } else {
    new_list$x$bindings$matches$metadata <- metadata
  }

  new_list$x$bindings$teams$id <- id
  new_list$x$bindings$teams$image <- image


  if (!is.null(round_output_format) && !is.null(round_input_format)) {
    if (isTRUE(grepl("^%", round_output_format))) {
      new_list$x$metadata$matches$round$type <- "datetime"
      new_list$x$metadata$matches$round$type_id <- paste0("datetime$", round_input_format)
      new_list$x$metadata$matches$round$output_format_id <- paste0("datetime$", round_output_format)
    } else if (isTRUE(grepl("_", round_output_format))) {
      new_list$x$metadata$matches$round$type <- "number"
      new_list$x$metadata$matches$round$type_id <- paste0("number$", round_input_format)
      new_list$x$metadata$matches$round$output_format_id <- paste0("number$", round_output_format)
    } else if (isTRUE(!is.na(round_output_format) && isFALSE(grepl("_", round_output_format)) && isFALSE(grepl("^%", round_output_format)))) {
      new_list$x$metadata$matches$round$type <- "string"
      new_list$x$metadata$matches$round$type_id <- paste0("string$", round_input_format)
      new_list$x$metadata$matches$round$output_format_id <- paste0("string$", round_output_format)
    }
    if (is.na(round_input_format) && !is.na(round_output_format)) {
      "[round_input_format] and [round_output_format] must both be defined."
    }
    if (!is.na(round_input_format) && is.na(round_output_format)) {
      "[round_input_format] and [round_output_format] must both be defined."
    }
  }


  if (!is.null(team_a_output_format) && !is.null(team_a_input_format)) {
    if (isTRUE(grepl("^%", team_a_output_format))) {
      new_list$x$metadata$matches$team_a$type <- "datetime"
      new_list$x$metadata$matches$team_a$type_id <- paste0("datetime$", team_a_input_format)
      new_list$x$metadata$matches$team_a$output_format_id <- paste0("datetime$", team_a_output_format)
    } else if (isTRUE(grepl("_", team_a_output_format))) {
      new_list$x$metadata$matches$team_a$type <- "number"
      new_list$x$metadata$matches$team_a$type_id <- paste0("number$", team_a_input_format)
      new_list$x$metadata$matches$team_a$output_format_id <- paste0("number$", team_a_output_format)
    } else if (isTRUE(!is.na(team_a_output_format) && isFALSE(grepl("_", team_a_output_format)) && isFALSE(grepl("^%", team_a_output_format)))) {
      new_list$x$metadata$matches$team_a$type <- "string"
      new_list$x$metadata$matches$team_a$type_id <- paste0("string$", team_a_input_format)
      new_list$x$metadata$matches$team_a$output_format_id <- paste0("string$", team_a_output_format)
    }
    if (is.na(team_a_input_format) && !is.na(team_a_output_format)) {
      "[team_a_input_format] and [team_a_output_format] must both be defined."
    }
    if (!is.na(team_a_input_format) && is.na(team_a_output_format)) {
      "[team_a_input_format] and [team_a_output_format] must both be defined."
    }
  }


  if (!is.null(team_b_output_format) && !is.null(team_b_input_format)) {
    if (isTRUE(grepl("^%", team_b_output_format))) {
      new_list$x$metadata$matches$team_b$type <- "datetime"
      new_list$x$metadata$matches$team_b$type_id <- paste0("datetime$", team_b_input_format)
      new_list$x$metadata$matches$team_b$output_format_id <- paste0("datetime$", team_b_output_format)
    } else if (isTRUE(grepl("_", team_b_output_format))) {
      new_list$x$metadata$matches$team_b$type <- "number"
      new_list$x$metadata$matches$team_b$type_id <- paste0("number$", team_b_input_format)
      new_list$x$metadata$matches$team_b$output_format_id <- paste0("number$", team_b_output_format)
    } else if (isTRUE(!is.na(team_b_output_format) && isFALSE(grepl("_", team_b_output_format)) && isFALSE(grepl("^%", team_b_output_format)))) {
      new_list$x$metadata$matches$team_b$type <- "string"
      new_list$x$metadata$matches$team_b$type_id <- paste0("string$", team_b_input_format)
      new_list$x$metadata$matches$team_b$output_format_id <- paste0("string$", team_b_output_format)
    }
    if (is.na(team_b_input_format) && !is.na(team_b_output_format)) {
      "[team_b_input_format] and [team_b_output_format] must both be defined."
    }
    if (!is.na(team_b_input_format) && is.na(team_b_output_format)) {
      "[team_b_input_format] and [team_b_output_format] must both be defined."
    }
  }


  if (!is.null(winner_output_format) && !is.null(winner_input_format)) {
    if (isTRUE(grepl("^%", winner_output_format))) {
      new_list$x$metadata$matches$winner$type <- "datetime"
      new_list$x$metadata$matches$winner$type_id <- paste0("datetime$", winner_input_format)
      new_list$x$metadata$matches$winner$output_format_id <- paste0("datetime$", winner_output_format)
    } else if (isTRUE(grepl("_", winner_output_format))) {
      new_list$x$metadata$matches$winner$type <- "number"
      new_list$x$metadata$matches$winner$type_id <- paste0("number$", winner_input_format)
      new_list$x$metadata$matches$winner$output_format_id <- paste0("number$", winner_output_format)
    } else if (isTRUE(!is.na(winner_output_format) && isFALSE(grepl("_", winner_output_format)) && isFALSE(grepl("^%", winner_output_format)))) {
      new_list$x$metadata$matches$winner$type <- "string"
      new_list$x$metadata$matches$winner$type_id <- paste0("string$", winner_input_format)
      new_list$x$metadata$matches$winner$output_format_id <- paste0("string$", winner_output_format)
    }
    if (is.na(winner_input_format) && !is.na(winner_output_format)) {
      "[winner_input_format] and [winner_output_format] must both be defined."
    }
    if (!is.na(winner_input_format) && is.na(winner_output_format)) {
      "[winner_input_format] and [winner_output_format] must both be defined."
    }
  }


  if (!is.null(score_a_output_format) && !is.null(score_a_input_format)) {
    if (isTRUE(grepl("^%", score_a_output_format))) {
      new_list$x$metadata$matches$score_a$type <- "datetime"
      new_list$x$metadata$matches$score_a$type_id <- paste0("datetime$", score_a_input_format)
      new_list$x$metadata$matches$score_a$output_format_id <- paste0("datetime$", score_a_output_format)
    } else if (isTRUE(grepl("_", score_a_output_format))) {
      new_list$x$metadata$matches$score_a$type <- "number"
      new_list$x$metadata$matches$score_a$type_id <- paste0("number$", score_a_input_format)
      new_list$x$metadata$matches$score_a$output_format_id <- paste0("number$", score_a_output_format)
    } else if (isTRUE(!is.na(score_a_output_format) && isFALSE(grepl("_", score_a_output_format)) && isFALSE(grepl("^%", score_a_output_format)))) {
      new_list$x$metadata$matches$score_a$type <- "string"
      new_list$x$metadata$matches$score_a$type_id <- paste0("string$", score_a_input_format)
      new_list$x$metadata$matches$score_a$output_format_id <- paste0("string$", score_a_output_format)
    }
    if (is.na(score_a_input_format) && !is.na(score_a_output_format)) {
      "[score_a_input_format] and [score_a_output_format] must both be defined."
    }
    if (!is.na(score_a_input_format) && is.na(score_a_output_format)) {
      "[score_a_input_format] and [score_a_output_format] must both be defined."
    }
  }


  if (!is.null(score_b_output_format) && !is.null(score_b_input_format)) {
    if (isTRUE(grepl("^%", score_b_output_format))) {
      new_list$x$metadata$matches$score_b$type <- "datetime"
      new_list$x$metadata$matches$score_b$type_id <- paste0("datetime$", score_b_input_format)
      new_list$x$metadata$matches$score_b$output_format_id <- paste0("datetime$", score_b_output_format)
    } else if (isTRUE(grepl("_", score_b_output_format))) {
      new_list$x$metadata$matches$score_b$type <- "number"
      new_list$x$metadata$matches$score_b$type_id <- paste0("number$", score_b_input_format)
      new_list$x$metadata$matches$score_b$output_format_id <- paste0("number$", score_b_output_format)
    } else if (isTRUE(!is.na(score_b_output_format) && isFALSE(grepl("_", score_b_output_format)) && isFALSE(grepl("^%", score_b_output_format)))) {
      new_list$x$metadata$matches$score_b$type <- "string"
      new_list$x$metadata$matches$score_b$type_id <- paste0("string$", score_b_input_format)
      new_list$x$metadata$matches$score_b$output_format_id <- paste0("string$", score_b_output_format)
    }
    if (is.na(score_b_input_format) && !is.na(score_b_output_format)) {
      "[score_b_input_format] and [score_b_output_format] must both be defined."
    }
    if (!is.na(score_b_input_format) && is.na(score_b_output_format)) {
      "[score_b_input_format] and [score_b_output_format] must both be defined."
    }
  }


  if (!is.null(metadata_output_format) && !is.null(metadata_input_format)) {
    if (isTRUE(grepl("^%", metadata_output_format))) {
      new_list$x$metadata$matches$metadata$type <- "datetime"
      new_list$x$metadata$matches$metadata$type_id <- paste0("datetime$", metadata_input_format)
      new_list$x$metadata$matches$metadata$output_format_id <- paste0("datetime$", metadata_output_format)
    } else if (isTRUE(grepl("_", metadata_output_format))) {
      new_list$x$metadata$matches$metadata$type <- "number"
      new_list$x$metadata$matches$metadata$type_id <- paste0("number$", metadata_input_format)
      new_list$x$metadata$matches$metadata$output_format_id <- paste0("number$", metadata_output_format)
    } else if (isTRUE(!is.na(metadata_output_format) && isFALSE(grepl("_", metadata_output_format)) && isFALSE(grepl("^%", metadata_output_format)))) {
      new_list$x$metadata$matches$metadata$type <- "string"
      new_list$x$metadata$matches$metadata$type_id <- paste0("string$", metadata_input_format)
      new_list$x$metadata$matches$metadata$output_format_id <- paste0("string$", metadata_output_format)
    }
    if (is.na(metadata_input_format) && !is.na(metadata_output_format)) {
      "[metadata_input_format] and [metadata_output_format] must both be defined."
    }
    if (!is.na(metadata_input_format) && is.na(metadata_output_format)) {
      "[metadata_input_format] and [metadata_output_format] must both be defined."
    }
  }


  if (!is.null(id_output_format) && !is.null(id_input_format)) {
    if (isTRUE(grepl("^%", id_output_format))) {
      new_list$x$metadata$teams$id$type <- "datetime"
      new_list$x$metadata$teams$id$type_id <- paste0("datetime$", id_input_format)
      new_list$x$metadata$teams$id$output_format_id <- paste0("datetime$", id_output_format)
    } else if (isTRUE(grepl("_", id_output_format))) {
      new_list$x$metadata$teams$id$type <- "number"
      new_list$x$metadata$teams$id$type_id <- paste0("number$", id_input_format)
      new_list$x$metadata$teams$id$output_format_id <- paste0("number$", id_output_format)
    } else if (isTRUE(!is.na(id_output_format) && isFALSE(grepl("_", id_output_format)) && isFALSE(grepl("^%", id_output_format)))) {
      new_list$x$metadata$teams$id$type <- "string"
      new_list$x$metadata$teams$id$type_id <- paste0("string$", id_input_format)
      new_list$x$metadata$teams$id$output_format_id <- paste0("string$", id_output_format)
    }
    if (is.na(id_input_format) && !is.na(id_output_format)) {
      "[id_input_format] and [id_output_format] must both be defined."
    }
    if (!is.na(id_input_format) && is.na(id_output_format)) {
      "[id_input_format] and [id_output_format] must both be defined."
    }
  }


  if (!is.null(image_output_format) && !is.null(image_input_format)) {
    if (isTRUE(grepl("^%", image_output_format))) {
      new_list$x$metadata$teams$image$type <- "datetime"
      new_list$x$metadata$teams$image$type_id <- paste0("datetime$", image_input_format)
      new_list$x$metadata$teams$image$output_format_id <- paste0("datetime$", image_output_format)
    } else if (isTRUE(grepl("_", image_output_format))) {
      new_list$x$metadata$teams$image$type <- "number"
      new_list$x$metadata$teams$image$type_id <- paste0("number$", image_input_format)
      new_list$x$metadata$teams$image$output_format_id <- paste0("number$", image_output_format)
    } else if (isTRUE(!is.na(image_output_format) && isFALSE(grepl("_", image_output_format)) && isFALSE(grepl("^%", image_output_format)))) {
      new_list$x$metadata$teams$image$type <- "string"
      new_list$x$metadata$teams$image$type_id <- paste0("string$", image_input_format)
      new_list$x$metadata$teams$image$output_format_id <- paste0("string$", image_output_format)
    }
    if (is.na(image_input_format) && !is.na(image_output_format)) {
      "[image_input_format] and [image_output_format] must both be defined."
    }
    if (!is.na(image_input_format) && is.na(image_output_format)) {
      "[image_input_format] and [image_output_format] must both be defined."
    }
  }
  deep_merge(old_list, new_list)
}
