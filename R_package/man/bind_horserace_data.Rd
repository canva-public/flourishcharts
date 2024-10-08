% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bind_horserace_data.R
\name{bind_horserace_data}
\alias{bind_horserace_data}
\title{Bind line chart race data}
\usage{
bind_horserace_data(
  .,
  horserace_data = NULL,
  captions_data = NULL,
  horserace_name = NULL,
  horserace_stages = NULL,
  horserace_category = NULL,
  horserace_pic = NULL,
  horserace_filter = NULL,
  captions_from = NULL,
  captions_to = NULL,
  captions_text = NULL,
  captions_image = NULL,
  captions_image_input_format = NULL,
  captions_image_output_format = NULL,
  captions_to_input_format = NULL,
  captions_to_output_format = NULL,
  captions_from_input_format = NULL,
  captions_from_output_format = NULL,
  captions_text_input_format = NULL,
  captions_text_output_format = NULL,
  horserace_category_input_format = NULL,
  horserace_category_output_format = NULL,
  horserace_filter_input_format = NULL,
  horserace_filter_output_format = NULL,
  horserace_pic_input_format = NULL,
  horserace_pic_output_format = NULL,
  horserace_name_input_format = NULL,
  horserace_name_output_format = NULL,
  horserace_stages_input_format = NULL,
  horserace_stages_output_format = NULL
)
}
\arguments{
\item{.}{The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).}

\item{horserace_data}{Horserace data.}

\item{captions_data}{Captions data.}

\item{horserace_name}{Label. The name of each entrant. Suggested data type hints: string. Flourish type hint: column}

\item{horserace_stages}{Values. Raw scores, which will be automatically converted to ranks. Column names will be used to populate the X axis of the chart. Suggested data type hints: number. Flourish type hint: columns}

\item{horserace_category}{Color by. Select a column to color the lines by. If omitted, colors will be assigned per name. Suggested data type hints: string. Flourish type hint: column}

\item{horserace_pic}{Image. Add an image URL or right-click on a cell to upload an image. Suggested data type hints: string. Flourish type hint: column}

\item{horserace_filter}{Filter. Hide/show entrants based on the values in this column. Suggested data type hints: string, number, datetime. Flourish type hint: column}

\item{captions_from}{Stage to show. Must match the column headers in the main datasheet. Suggested data type hints: string. Flourish type hint: column}

\item{captions_to}{Stage to hide. Must match the column headers in the main datasheet. Suggested data type hints: string. Flourish type hint: column}

\item{captions_text}{Text. Text or HTML to show. Suggested data type hints: string. Flourish type hint: column}

\item{captions_image}{Image. Image to show. Suggested data type hints: string. Flourish type hint: column}

\item{captions_image_input_format}{Formats/parses dates, strings, and numbers for the image column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{captions_image_output_format}{Formats/parses dates, strings, and numbers for the image column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{captions_to_input_format}{Formats/parses dates, strings, and numbers for the to column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{captions_to_output_format}{Formats/parses dates, strings, and numbers for the to column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{captions_from_input_format}{Formats/parses dates, strings, and numbers for the from column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{captions_from_output_format}{Formats/parses dates, strings, and numbers for the from column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{captions_text_input_format}{Formats/parses dates, strings, and numbers for the text column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{captions_text_output_format}{Formats/parses dates, strings, and numbers for the text column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{horserace_category_input_format}{Formats/parses dates, strings, and numbers for the category column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{horserace_category_output_format}{Formats/parses dates, strings, and numbers for the category column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{horserace_filter_input_format}{Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "\%Y-\%m-\%dT\%H:\%M:\%S.\%LZ", "\%d/\%m/\%Y", "\%d \%b", "\%-I\%p", "Q\%q \%Y", "\%Y Q\%q", and so on. All available formats noted in Flourish documentation: \url{https://developers.flourish.studio/api/create-visualisation/}.. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{horserace_filter_output_format}{Formats/parses dates, strings, and numbers for the filter column. If string: any arbritrary string. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. If date-time: A date-time format such as "\%Y-\%m-\%dT\%H:\%M:\%S.\%LZ", "\%d/\%m/\%Y", "\%d \%b", "\%-I\%p", "Q\%q \%Y", "\%Y Q\%q", and so on. All available formats noted in Flourish documentation: \url{https://developers.flourish.studio/api/create-visualisation/}.. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{horserace_pic_input_format}{Formats/parses dates, strings, and numbers for the pic column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{horserace_pic_output_format}{Formats/parses dates, strings, and numbers for the pic column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{horserace_name_input_format}{Formats/parses dates, strings, and numbers for the name column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{horserace_name_output_format}{Formats/parses dates, strings, and numbers for the name column. If string: any arbritrary string. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{horserace_stages_input_format}{Formats/parses dates, strings, and numbers for the stages column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}

\item{horserace_stages_output_format}{Formats/parses dates, strings, and numbers for the stages column. If number: 'comma_point', 'space_point', 'point_comma', 'space_comma', 'none_point', 'none_comma'. Note: column metadata is optional, and the API will interpret your data for you if you do not specify it. A typical example of when specifying metadata can be useful is when column(s) in your data contain numbers or dates that you wish to format visually (e.g. to display a column containing MM/DD/YYYY dates in DD/MM/YYYY format).}
}
\value{
A Flourish chart
}
\description{
Bind line chart race data
}
\examples{
try(
  flourish(chart_type = "horserace", api_key = Sys.getenv("FLOURISH_API_KEY")) |>
  bind_horserace_data(gapminder)
)
}
