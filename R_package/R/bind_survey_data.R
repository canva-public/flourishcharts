#' Bind survey data
#' @name bind_survey_data
#' @param questions_data Questions data. The main data sheet. Each row in this table will become a dot in the graphic..
#' @param order_data Order data. Groups by default appear in size or alphabetical order. You can override these with the "Group order" sheet..
#' @param labels_data Labels data. Allows you to change how any phrase in the main data sheet is displayed in the graphic. Useful for shortening long questions, translating, etc..
#' @param colors_data Colors data. Use this extra table if you want to specify specific colors in the context of specific questions. E.g. to make a red to green scale from "strongly diagree" to "strongly agree"..
#' @param places_data Places data. A table of places found in the geographic columns of the main data sheet, each with latitude and longitude to plot it on the map.
#' @param answer_groups_data Answer groups data. Grouped questions, in the form "Which of the following apply?", are made by combining mutiple yes/no columns in the main data sheet..
#' @param questions_categorical Categorical columns. Each of these columns appears in the Group by, Shade by and Compare dropdowns. Flourish type hint: columns
#' @param questions_continuous Continuous columns. Must contain numbers. Each of these columns appears in the Size by dropdown. Flourish type hint: columns
#' @param questions_geo Geographic columns. Must contain place names matching those specified in the Places sheet. Set to blank to disable the map mode. Flourish type hint: columns
#' @param questions_label Label. A column containing text (e.g. names or emoji) to write on the dots. Not recommended for datasets with more than a few hundred dots. Flourish type hint: column
#' @param questions_column_filter Slider or menu. Add a time slider or menu to filter the data based on the contents of a single column. Flourish type hint: column
#' @param questions_id Unique name/ID. Specify to allow animations between multiple occurrences of the same person or thing e.g. when using a time slider. Flourish type hint: column
#' @param questions_metadata Info for popups. One or more columns of information (text, image URLs, embedded charts etc) to include in popups and panelsFlourish type hint: columns
#' @param order_categories Order of answers. Use one column for each question or metric. Put the column header from the main data sheet at the top (e.g. "Do you agree?"), followed by the answers in the order you want (e.g. "disagree", "neutral", "agree"). Flourish type hint: columns
#' @param labels_label Label. A column containing phrases from the main data sheet. Flourish type hint: column
#' @param labels_replacement Replacement. A column containing the phrase to display. Flourish type hint: column
#' @param colors_question Question. The column header (e.g. a survey question) exactly as it appears in the main data sheet. Flourish type hint: column
#' @param colors_answer Answer. Use one column for each question or metric. Put the column header from the main datasheet at the top (e.g. "Do you agree?"), followed by the answers in the order you want (e.g. "disagree", "neutral", "agree"). Flourish type hint: column
#' @param colors_color Color. A color name (e.g. orange, red) or code (e.g. #ff3300, #ff0000). Flourish type hint: column
#' @param places_latitude Latitude. A column of latitude values. Flourish type hint: column
#' @param places_longitude Longitude. A column of longitude values. Flourish type hint: column
#' @param places_names Names. One or more columns of place names matching those in the main data sheet. Flourish type hint: columns
#' @param answer_groups_group Group name. This column will contain the name of the grouped question Flourish type hint: column
#' @param answer_groups_question Question. A question that matches exactly one of the questions in the datasheet. Flourish type hint: column
#' @param answer_groups_display_as Display answer as. This will be the new text for the question. Flourish type hint: column
#' @param answer_groups_affirmative_answers Answers to include. The respondent is included in the group if their answer to the question is one of the answers listed in these columns. Flourish type hint: columns
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "survey", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_survey_data(gapminder)
#' )
#' @export

bind_survey_data <- function(
    .,
    questions_data = NULL,
    order_data = NULL,
    labels_data = NULL,
    colors_data = NULL,
    places_data = NULL,
    answer_groups_data = NULL,
    questions_categorical = NULL,
    questions_continuous = NULL,
    questions_geo = NULL,
    questions_label = NULL,
    questions_column_filter = NULL,
    questions_id = NULL,
    questions_metadata = NULL,
    order_categories = NULL,
    labels_label = NULL,
    labels_replacement = NULL,
    colors_question = NULL,
    colors_answer = NULL,
    colors_color = NULL,
    places_latitude = NULL,
    places_longitude = NULL,
    places_names = NULL,
    answer_groups_group = NULL,
    answer_groups_question = NULL,
    answer_groups_display_as = NULL,
    answer_groups_affirmative_answers = NULL) {
  bindings_error(., "survey")

  old_list <- .
  new_list <- list()

  if (!is.null(questions_data)) {
    columns_questions_data <- c(paste(questions_categorical), paste(questions_continuous), paste(questions_geo), paste(questions_label), paste(questions_column_filter), paste(questions_id), paste(questions_metadata), NULL)
    columns_questions_data <- columns_questions_data[!sapply(columns_questions_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_questions_data, split = ",", fixed = TRUE),
      data = questions_data
    )
    int_columns_questions_data <- sapply(questions_data, is.integer)
    questions_data[, int_columns_questions_data] <- lapply(questions_data[, int_columns_questions_data], as.character)
  }
  if (!is.null(order_data)) {
    columns_order_data <- c(paste(order_categories), NULL)
    columns_order_data <- columns_order_data[!sapply(columns_order_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_order_data, split = ",", fixed = TRUE),
      data = order_data
    )
    int_columns_order_data <- sapply(order_data, is.integer)
    order_data[, int_columns_order_data] <- lapply(order_data[, int_columns_order_data], as.character)
  }
  if (!is.null(labels_data)) {
    columns_labels_data <- c(paste(labels_label), paste(labels_replacement), NULL)
    columns_labels_data <- columns_labels_data[!sapply(columns_labels_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_labels_data, split = ",", fixed = TRUE),
      data = labels_data
    )
    int_columns_labels_data <- sapply(labels_data, is.integer)
    labels_data[, int_columns_labels_data] <- lapply(labels_data[, int_columns_labels_data], as.character)
  }
  if (!is.null(colors_data)) {
    columns_colors_data <- c(paste(colors_question), paste(colors_answer), paste(colors_color), NULL)
    columns_colors_data <- columns_colors_data[!sapply(columns_colors_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_colors_data, split = ",", fixed = TRUE),
      data = colors_data
    )
    int_columns_colors_data <- sapply(colors_data, is.integer)
    colors_data[, int_columns_colors_data] <- lapply(colors_data[, int_columns_colors_data], as.character)
  }
  if (!is.null(places_data)) {
    columns_places_data <- c(paste(places_latitude), paste(places_longitude), paste(places_names), NULL)
    columns_places_data <- columns_places_data[!sapply(columns_places_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_places_data, split = ",", fixed = TRUE),
      data = places_data
    )
    int_columns_places_data <- sapply(places_data, is.integer)
    places_data[, int_columns_places_data] <- lapply(places_data[, int_columns_places_data], as.character)
  }
  if (!is.null(answer_groups_data)) {
    columns_answer_groups_data <- c(paste(answer_groups_group), paste(answer_groups_question), paste(answer_groups_display_as), paste(answer_groups_affirmative_answers), NULL)
    columns_answer_groups_data <- columns_answer_groups_data[!sapply(columns_answer_groups_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_answer_groups_data, split = ",", fixed = TRUE),
      data = answer_groups_data
    )
    int_columns_answer_groups_data <- sapply(answer_groups_data, is.integer)
    answer_groups_data[, int_columns_answer_groups_data] <- lapply(answer_groups_data[, int_columns_answer_groups_data], as.character)
  }
  new_list$x$data$questions <- questions_data
  new_list$x$data$order <- order_data
  new_list$x$data$labels <- labels_data
  new_list$x$data$colors <- colors_data
  new_list$x$data$places <- places_data
  new_list$x$data$answer_groups <- answer_groups_data

  if (is.null(questions_categorical)) {
    new_list$x$bindings$questions$categorical <- "list"
  } else {
    new_list$x$bindings$questions$categorical <- questions_categorical
  }


  if (is.null(questions_continuous)) {
    new_list$x$bindings$questions$continuous <- "list"
  } else {
    new_list$x$bindings$questions$continuous <- questions_continuous
  }


  if (is.null(questions_geo)) {
    new_list$x$bindings$questions$geo <- "list"
  } else {
    new_list$x$bindings$questions$geo <- questions_geo
  }

  new_list$x$bindings$questions$label <- questions_label
  new_list$x$bindings$questions$column_filter <- questions_column_filter
  new_list$x$bindings$questions$id <- questions_id

  if (is.null(questions_metadata)) {
    new_list$x$bindings$questions$metadata <- "list"
  } else {
    new_list$x$bindings$questions$metadata <- questions_metadata
  }


  if (is.null(order_categories)) {
    new_list$x$bindings$order$categories <- "list"
  } else {
    new_list$x$bindings$order$categories <- order_categories
  }

  new_list$x$bindings$labels$label <- labels_label
  new_list$x$bindings$labels$replacement <- labels_replacement
  new_list$x$bindings$colors$question <- colors_question
  new_list$x$bindings$colors$answer <- colors_answer
  new_list$x$bindings$colors$color <- colors_color
  new_list$x$bindings$places$latitude <- places_latitude
  new_list$x$bindings$places$longitude <- places_longitude

  if (is.null(places_names)) {
    new_list$x$bindings$places$names <- "list"
  } else {
    new_list$x$bindings$places$names <- places_names
  }

  new_list$x$bindings$answer_groups$group <- answer_groups_group
  new_list$x$bindings$answer_groups$question <- answer_groups_question
  new_list$x$bindings$answer_groups$display_as <- answer_groups_display_as

  if (is.null(answer_groups_affirmative_answers)) {
    new_list$x$bindings$answer_groups$affirmative_answers <- "list"
  } else {
    new_list$x$bindings$answer_groups$affirmative_answers <- answer_groups_affirmative_answers
  }

  deep_merge(old_list, new_list)
}
