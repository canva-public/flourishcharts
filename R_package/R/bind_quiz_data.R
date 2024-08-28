#' Bind quiz data
#' @name bind_quiz_data
#' @param questions_data Questions data.
#' @param scores_data Scores data.
#' @param results_data Results data.
#' @param questions_text Text. Question text. Flourish type hint: column
#' @param questions_explanation Explanation. A short text explanation accompanying the question. Flourish type hint: column
#' @param questions_input_type Input type. Type of answer input, choose between slider or multiple choice Flourish type hint: column
#' @param questions_answers Answers. The correct answer to the question. The score will be decided by the difference between this answer and your input.  Its possible to select multiple columns with answers; this will create a dropdown list above the quiz where you can select which answer to compare to. Flourish type hint: columns
#' @param questions_suffix Slider input suffix. Add a suffix after the value, eg. "%" or "people" (only for slider input type). Flourish type hint: column
#' @param questions_choices Multiple choice options. Options to show in multiple choice questions. Divide using "::" (eg. "Cat :: Dog :: Sheep :: Badger"). Flourish type hint: column
#' @param scores_question Question. Question that the answer belongs to. Flourish type hint: column
#' @param scores_range Answer. The answer to the question. This can be text for multiple choice questions. For slider answers, you can use numbers or number ranges, values could be "0-10" or "4" or "*" to select all answers.  You can also add multiple rows with score ranges per question; the more specific scores will take priority (e.g. it will choose "4" over "0-10" over "*"). Flourish type hint: column
#' @param scores_explanation Text. Text to show after answering question. Flourish type hint: column
#' @param scores_media Media. Picture to show after answering question. Flourish type hint: column
#' @param results_range Points range. A range of points youre targeting. You can use numbers or number ranges, values could be "0-10" or "4" or "*" to select all answers.  You can also add multiple rows with score ranges per question; the more specific scores will take priority (e.g. it will choose "4" over "0-10" over "*"). Flourish type hint: column
#' @param results_text Results text
#' @param results_media Media. An image to show with the result. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "quiz", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_quiz_data(gapminder)
#' )
#' @export

bind_quiz_data <- function(
    .,
    questions_data = NULL,
    scores_data = NULL,
    results_data = NULL,
    questions_text = NULL,
    questions_explanation = NULL,
    questions_input_type = NULL,
    questions_answers = NULL,
    questions_suffix = NULL,
    questions_choices = NULL,
    scores_question = NULL,
    scores_range = NULL,
    scores_explanation = NULL,
    scores_media = NULL,
    results_range = NULL,
    results_text = NULL,
    results_media = NULL) {
  bindings_error(., "quiz")

  old_list <- .
  new_list <- list()

  if (!is.null(questions_data)) {
    columns_questions_data <- c(paste(questions_text), paste(questions_explanation), paste(questions_input_type), paste(questions_answers), paste(questions_suffix), paste(questions_choices), NULL)
    columns_questions_data <- columns_questions_data[!sapply(columns_questions_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_questions_data, split = ",", fixed = TRUE),
      data = questions_data
    )
    int_columns_questions_data <- sapply(questions_data, is.integer)
    questions_data[, int_columns_questions_data] <- lapply(questions_data[, int_columns_questions_data], as.character)
  }
  if (!is.null(scores_data)) {
    columns_scores_data <- c(paste(scores_question), paste(scores_range), paste(scores_explanation), paste(scores_media), NULL)
    columns_scores_data <- columns_scores_data[!sapply(columns_scores_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_scores_data, split = ",", fixed = TRUE),
      data = scores_data
    )
    int_columns_scores_data <- sapply(scores_data, is.integer)
    scores_data[, int_columns_scores_data] <- lapply(scores_data[, int_columns_scores_data], as.character)
  }
  if (!is.null(results_data)) {
    columns_results_data <- c(paste(results_range), paste(results_text), paste(results_media), NULL)
    columns_results_data <- columns_results_data[!sapply(columns_results_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_results_data, split = ",", fixed = TRUE),
      data = results_data
    )
    int_columns_results_data <- sapply(results_data, is.integer)
    results_data[, int_columns_results_data] <- lapply(results_data[, int_columns_results_data], as.character)
  }
  new_list$x$data$questions <- questions_data
  new_list$x$data$scores <- scores_data
  new_list$x$data$results <- results_data
  new_list$x$bindings$questions$text <- questions_text
  new_list$x$bindings$questions$explanation <- questions_explanation
  new_list$x$bindings$questions$input_type <- questions_input_type

  if (is.null(questions_answers)) {
    new_list$x$bindings$questions$answers <- "list"
  } else {
    new_list$x$bindings$questions$answers <- questions_answers
  }

  new_list$x$bindings$questions$suffix <- questions_suffix
  new_list$x$bindings$questions$choices <- questions_choices
  new_list$x$bindings$scores$question <- scores_question
  new_list$x$bindings$scores$range <- scores_range
  new_list$x$bindings$scores$explanation <- scores_explanation
  new_list$x$bindings$scores$media <- scores_media
  new_list$x$bindings$results$range <- results_range
  new_list$x$bindings$results$text <- results_text
  new_list$x$bindings$results$media <- results_media
  deep_merge(old_list, new_list)
}
