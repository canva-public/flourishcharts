#' Bind calculator data
#' @name bind_calculator_data
#' @param questions_data Questions data.
#' @param question_text Question text. The question text. Flourish type hint: column
#' @param question_type Question type. The type of question. Choose from number input, text input, single response buttons, multi response buttons, dropdown, single date picker, range date picker, multi date picker, rating, single slider or range slider. Leave empty to just display text. Flourish type hint: column
#' @param context_text Question context. Additional information. Flourish type hint: column
#' @param image Image. Question background image. Add an image URL or right-click on a cell to upload an image. Flourish type hint: column
#' @param answers_raw Answers. Answer values separated by "::". Required for single and multi-response buttons, dropdown and rating questions. Rating answers can take optional labels per value noted as "Value >> Label" - for example, "1 >> Bad :: 2 :: 3 >> Good". Number inputs can take range specifications in the format "min: 0 :: max: 50 :: step: 2". Slider inputs can take slider specifications in the format "min: 0 :: max: 100 :: value: 10". Use two comma separated values for range sliders, eg.: "value: 1, 100". See the templates documentation for additional info. Flourish type hint: column
#' @param fallback_value Fallback value. Fallback value to fill the answer input if left empty by the user. Works for all question types but sliders, which will always show the initial value. Flourish type hint: column
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "calculator", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_calculator_data(gapminder)
#' )
#' @export

bind_calculator_data <- function(
    .,
    questions_data = NULL,
    question_text = NULL,
    question_type = NULL,
    context_text = NULL,
    image = NULL,
    answers_raw = NULL,
    fallback_value = NULL) {
  bindings_error(., "calculator")

  old_list <- .
  new_list <- list()

  if (!is.null(questions_data)) {
    columns_questions_data <- c(paste(question_text), paste(question_type), paste(context_text), paste(image), paste(answers_raw), paste(fallback_value), NULL)
    columns_questions_data <- columns_questions_data[!sapply(columns_questions_data, is.null)]
    spelling_check_column_names(
      strings = strsplit(columns_questions_data, split = ",", fixed = TRUE),
      data = questions_data
    )
    int_columns_questions_data <- sapply(questions_data, is.integer)
    questions_data[, int_columns_questions_data] <- lapply(questions_data[, int_columns_questions_data], as.character)
  }
  new_list$x$data$questions <- questions_data
  new_list$x$bindings$questions$question_text <- question_text
  new_list$x$bindings$questions$question_type <- question_type
  new_list$x$bindings$questions$context_text <- context_text
  new_list$x$bindings$questions$image <- image
  new_list$x$bindings$questions$answers_raw <- answers_raw
  new_list$x$bindings$questions$fallback_value <- fallback_value
  deep_merge(old_list, new_list)
}
