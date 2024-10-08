% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set_quiz_details.R
\name{set_quiz_details}
\alias{set_quiz_details}
\title{Set quiz chart details}
\usage{
set_quiz_details(
  .,
  color_primary = NULL,
  color_neutral = NULL,
  color_correct = NULL,
  block_text_color = NULL,
  text_border_color = NULL,
  block_text_size = NULL,
  block_text_size_custom = NULL,
  block_background = NULL,
  block_padding = NULL,
  block_border_width = NULL,
  block_border_color = NULL,
  block_border_radius = NULL,
  block_shadow = NULL,
  block_shadow_blur = NULL,
  block_shadow_opacity = NULL,
  block_btn_text_color = NULL,
  block_btn_text_size = NULL,
  block_btn_text_size_custom = NULL,
  show_all_questions = NULL,
  slider_handle_fill = NULL,
  slider_handle_radius = NULL,
  slider_handle_stroke = NULL,
  slider_channel_fill = NULL,
  slider_channel_height = NULL,
  slider_comparison_opacity = NULL,
  slider_range_type = NULL,
  slider_range_min = NULL,
  slider_range_max = NULL,
  slider_range_step = NULL,
  slider_range_custom = NULL,
  chart_number_date_format_prefix = NULL,
  chart_number_date_format_suffix = NULL,
  chart_number_date_format_n_dec = NULL,
  chart_number_date_format_advanced = NULL,
  chart_number_date_format_negative_sign = NULL,
  chart_number_date_format_strip_zeros = NULL,
  chart_number_date_format_strip_separator = NULL,
  chart_number_date_format_transform_labels = NULL,
  chart_number_date_format_transform = NULL,
  chart_number_date_format_multiply_divide_constant = NULL,
  chart_number_date_format_exponentiate_constant = NULL,
  mc_background = NULL,
  mc_border_color = NULL,
  mc_border_width = NULL,
  mc_border_radius = NULL,
  dropdown = NULL,
  dropdown_default_label = NULL,
  dropdown_label_color = NULL,
  slider_advanced_scoring = NULL,
  slider_score_zone_percent = NULL,
  slider_correct_zone_percent = NULL,
  end_result_default_text = NULL,
  text_your_answer = NULL,
  text_submit = NULL,
  text_dropdown_label = NULL,
  chart_number_localization_input_decimal_separator = NULL,
  chart_number_localization_output_separators = NULL,
  chart_layout_body_font = NULL,
  chart_layout_font_color = NULL,
  chart_layout_background_color_enabled = NULL,
  chart_layout_background_image_enabled = NULL,
  chart_layout_background_color = NULL,
  chart_layout_background_image_src = NULL,
  chart_layout_background_image_size = NULL,
  chart_layout_background_image_position = NULL,
  chart_layout_max_width_target = NULL,
  chart_layout_max_width = NULL,
  chart_layout_max_width_align = NULL,
  chart_layout_layout_order = NULL,
  chart_layout_space_between_sections = NULL,
  chart_layout_space_between_sections_custom = NULL,
  chart_layout_margin_top = NULL,
  chart_layout_margin_right = NULL,
  chart_layout_margin_bottom = NULL,
  chart_layout_margin_left = NULL,
  chart_layout_border_enabled = NULL,
  chart_layout_border_top_width = NULL,
  chart_layout_border_top_style = NULL,
  chart_layout_border_top_color = NULL,
  chart_layout_border_right_width = NULL,
  chart_layout_border_right_style = NULL,
  chart_layout_border_right_color = NULL,
  chart_layout_border_bottom_width = NULL,
  chart_layout_border_bottom_style = NULL,
  chart_layout_border_bottom_color = NULL,
  chart_layout_border_left_width = NULL,
  chart_layout_border_left_style = NULL,
  chart_layout_border_left_color = NULL,
  chart_layout_read_direction = NULL,
  chart_layout_font_size_mobile_small = NULL,
  chart_layout_font_size_mobile_big = NULL,
  chart_layout_font_size_tablet = NULL,
  chart_layout_font_size_desktop = NULL,
  chart_layout_font_size_big_screen = NULL,
  chart_layout_breakpoint_mobile_small = NULL,
  chart_layout_breakpoint_mobile_big = NULL,
  chart_layout_breakpoint_tablet = NULL,
  chart_layout_breakpoint_desktop = NULL,
  chart_layout_breakpoint_big_screen = NULL,
  chart_layout_header_align = NULL,
  chart_layout_title = NULL,
  chart_layout_title_styling = NULL,
  chart_layout_title_font = NULL,
  chart_layout_title_size = NULL,
  chart_layout_title_size_custom = NULL,
  chart_layout_title_weight = NULL,
  chart_layout_title_color = NULL,
  chart_layout_title_line_height = NULL,
  chart_layout_title_space_above = NULL,
  chart_layout_title_space_above_custom = NULL,
  chart_layout_subtitle = NULL,
  chart_layout_subtitle_styling = NULL,
  chart_layout_subtitle_font = NULL,
  chart_layout_subtitle_size = NULL,
  chart_layout_subtitle_size_custom = NULL,
  chart_layout_subtitle_weight = NULL,
  chart_layout_subtitle_color = NULL,
  chart_layout_subtitle_line_height = NULL,
  chart_layout_subtitle_space_above = NULL,
  chart_layout_subtitle_space_above_custom = NULL,
  chart_layout_header_text = NULL,
  chart_layout_header_text_styling = NULL,
  chart_layout_header_text_size = NULL,
  chart_layout_header_text_size_custom = NULL,
  chart_layout_header_text_weight = NULL,
  chart_layout_header_text_color = NULL,
  chart_layout_header_text_line_height = NULL,
  chart_layout_header_text_space_above = NULL,
  chart_layout_header_text_space_above_custom = NULL,
  chart_layout_header_border = NULL,
  chart_layout_header_border_width = NULL,
  chart_layout_header_border_color = NULL,
  chart_layout_header_border_style = NULL,
  chart_layout_header_border_space = NULL,
  chart_layout_header_logo_enabled = NULL,
  chart_layout_header_logo_src = NULL,
  chart_layout_header_logo_alt = NULL,
  chart_layout_header_logo_link_url = NULL,
  chart_layout_header_logo_height = NULL,
  chart_layout_header_logo_align = NULL,
  chart_layout_header_logo_position_inside = NULL,
  chart_layout_header_logo_position_outside = NULL,
  chart_layout_header_logo_margin_top = NULL,
  chart_layout_header_logo_margin_right = NULL,
  chart_layout_header_logo_margin_bottom = NULL,
  chart_layout_header_logo_margin_left = NULL,
  chart_layout_footer_align = NULL,
  chart_layout_footer_text_size = NULL,
  chart_layout_footer_text_color = NULL,
  chart_layout_footer_styling = NULL,
  chart_layout_footer_font = NULL,
  chart_layout_footer_text_weight = NULL,
  chart_layout_source_name = NULL,
  chart_layout_source_url = NULL,
  chart_layout_multiple_sources = NULL,
  chart_layout_source_name_2 = NULL,
  chart_layout_source_url_2 = NULL,
  chart_layout_source_name_3 = NULL,
  chart_layout_source_url_3 = NULL,
  chart_layout_source_label = NULL,
  chart_layout_footer_note = NULL,
  chart_layout_footer_note_secondary = NULL,
  chart_layout_advanced_note_styling = NULL,
  chart_layout_footer_timestamp_format = NULL,
  chart_layout_footer_logo_enabled = NULL,
  chart_layout_footer_logo_src = NULL,
  chart_layout_footer_logo_src_light = NULL,
  chart_layout_footer_logo_alt = NULL,
  chart_layout_footer_logo_link_url = NULL,
  chart_layout_footer_logo_height = NULL,
  chart_layout_footer_logo_margin = NULL,
  chart_layout_footer_logo_order = NULL,
  chart_layout_footer_align_vertical = NULL,
  chart_layout_footer_border = NULL,
  chart_layout_footer_border_width = NULL,
  chart_layout_footer_border_color = NULL,
  chart_layout_footer_border_style = NULL,
  chart_layout_footer_border_space = NULL,
  chart_layout_screenreader_text_primary = NULL,
  chart_layout_screenreader_label = NULL,
  chart_layout_screenreader_hide_primary = NULL
)
}
\arguments{
\item{.}{The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).}

\item{color_primary}{User input. Flourish type hint: color, defaults to \code{NULL}}

\item{color_neutral}{Neutral. Flourish type hint: color, defaults to \code{NULL}}

\item{color_correct}{Correct. Flourish type hint: color, defaults to \code{NULL}}

\item{block_text_color}{Color. Flourish type hint: color, defaults to \code{NULL}}

\item{text_border_color}{Border color. Flourish type hint: color, defaults to \code{NULL}}

\item{block_text_size}{Size. Choices: 1.2, 1.4, 1.6, custom. Flourish type hint: string, defaults to \code{NULL}}

\item{block_text_size_custom}{Custom. Specify a custom responsive font size. Best results will be with values between 1.2 and 3. Flourish type hint: number, defaults to \code{NULL}}

\item{block_background}{Background. Flourish type hint: color, defaults to \code{NULL}}

\item{block_padding}{Padding. Flourish type hint: number, defaults to \code{NULL}}

\item{block_border_width}{Width. Flourish type hint: number, defaults to \code{NULL}}

\item{block_border_color}{Color. Flourish type hint: color, defaults to \code{NULL}}

\item{block_border_radius}{Radius. Flourish type hint: number, defaults to \code{NULL}}

\item{block_shadow}{Enabled. Choices: \code{TRUE}, \code{FALSE}. Flourish type hint: boolean, defaults to \code{NULL}}

\item{block_shadow_blur}{Blur. Flourish type hint: number, defaults to \code{NULL}}

\item{block_shadow_opacity}{Opacity. Flourish type hint: number, defaults to \code{NULL}}

\item{block_btn_text_color}{Text color. Flourish type hint: color, defaults to \code{NULL}}

\item{block_btn_text_size}{Size. Choices: 1.1, 1.2, 1.4, custom. Flourish type hint: string, defaults to \code{NULL}}

\item{block_btn_text_size_custom}{Custom. Specify a custom responsive font size. Best results will be with values between 1.2 and 3. Flourish type hint: number, defaults to \code{NULL}}

\item{show_all_questions}{Show unanswered questions. Flourish type hint: boolean, defaults to \code{NULL}}

\item{slider_handle_fill}{Color. Flourish type hint: color, defaults to \code{NULL}}

\item{slider_handle_radius}{Radius. Flourish type hint: number, defaults to \code{NULL}}

\item{slider_handle_stroke}{Border. Flourish type hint: number, defaults to \code{NULL}}

\item{slider_channel_fill}{Color. Flourish type hint: color, defaults to \code{NULL}}

\item{slider_channel_height}{Height. Flourish type hint: number, defaults to \code{NULL}}

\item{slider_comparison_opacity}{Comparison opacity. Flourish type hint: number, defaults to \code{NULL}}

\item{slider_range_type}{Slider range. Choices: auto, fixed, custom. In Auto mode, the range will go from 0 to the nearest power of 10.  In Fixed mode, you can set a fixed range for every question.  In Custom mode, you can set a range for each individual question. Flourish type hint: string, defaults to \code{NULL}}

\item{slider_range_min}{Min. Flourish type hint: number, defaults to \code{NULL}}

\item{slider_range_max}{Max. Flourish type hint: number, defaults to \code{NULL}}

\item{slider_range_step}{Step. Flourish type hint: number, defaults to \code{NULL}}

\item{slider_range_custom}{Custom. Set a custom range for each question. Write a new range on each line with the following format:  \verb{question text :: range minimum :: range maximum :: range step}. <  For example:  \verb{How many people live in London? :: 1000000 :: 20000000 :: 1000} Flourish type hint: text, defaults to \code{NULL}}

\item{chart_number_date_format_prefix}{Prefix. Text to place in front of number. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_number_date_format_suffix}{Suffix. Text to place after number. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_number_date_format_n_dec}{Decimal places. Enter a negative integer to round to a whole number with that many zeros. For example, -2 will round to the nearest hundred. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_number_date_format_advanced}{Advanced. Flourish type hint: boolean, defaults to \code{NULL}}

\item{chart_number_date_format_negative_sign}{Styling of negative numbers. Choices: -$nk, $-nk, ($nk), $(n)k, none. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_number_date_format_strip_zeros}{Remove trailing zeros. Flourish type hint: boolean, defaults to \code{NULL}}

\item{chart_number_date_format_strip_separator}{Hide thousands separator below 10,000. Turn off if you want four-digit numbers to include a separator, e.g. 1,234 rather than 1234. Flourish type hint: boolean, defaults to \code{NULL}}

\item{chart_number_date_format_transform_labels}{Multiply/divide values. Flourish type hint: boolean, defaults to \code{NULL}}

\item{chart_number_date_format_transform}{Choices: multiply, divide, exponentiate. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_number_date_format_multiply_divide_constant}{Flourish type hint: number, defaults to \code{NULL}}

\item{chart_number_date_format_exponentiate_constant}{Flourish type hint: number, defaults to \code{NULL}}

\item{mc_background}{Background. Flourish type hint: color, defaults to \code{NULL}}

\item{mc_border_color}{Color. Flourish type hint: color, defaults to \code{NULL}}

\item{mc_border_width}{Width. Flourish type hint: number, defaults to \code{NULL}}

\item{mc_border_radius}{Radius. Flourish type hint: number, defaults to \code{NULL}}

\item{dropdown}{Choices: \code{TRUE}, \code{FALSE}. Flourish type hint: boolean, defaults to \code{NULL}}

\item{dropdown_default_label}{Default comparison. Type in an answer thats selected as a default when you load the visualization. Flourish type hint: string, defaults to \code{NULL}}

\item{dropdown_label_color}{Text color. Flourish type hint: color, defaults to \code{NULL}}

\item{slider_advanced_scoring}{Linear scores for slider questions. Rather than a slider answer just being "right" or "wrong", change this setting to get a higher score the closer you are to the correct answer. Flourish type hint: boolean, defaults to \code{NULL}}

\item{slider_score_zone_percent}{Scoring zone (\%). Defines how close (as a percentage of the slider range) the input needs to be to the correct answer to produce a score.  For example, for a slider range of 0 to 200, a correct answer of 45, and a scoring zone of 10\%, the score is non-zero if the input is between 25 and 65 (because 10\% of the slider range is 20).  The score increases linearly from 0 at the scoring zone boundary to a score of 1 at the correct answer. Flourish type hint: number, defaults to \code{NULL}}

\item{slider_correct_zone_percent}{Correct zone (\%). Defines how close (as a percentage of the scoring zone) the input needs to be to the correct answer to produce a full score of 1.  For example, for a slider range of 0 to 200, a correct answer of 45, a scoring zone of 10\%, and a correct zone of 50\%, the score is 1 if the input is between 35 and 55 (because 50\% of the scoring zone is 10).  The score increases linearly from the scoring zone boundary to the correct zone boundary. For example, inputs of 20, 25, 30, 35, or 40 scores 0, 0, 0.5, 1, or 1, respectively. Flourish type hint: number, defaults to \code{NULL}}

\item{end_result_default_text}{Default end result text. This is the text that shows up after youve finished the quiz. You can add custom end result text for specific score ranges in the Data tab, inside the End result sheet. Flourish type hint: text, defaults to \code{NULL}}

\item{text_your_answer}{Slider your answer. Flourish type hint: string, defaults to \code{NULL}}

\item{text_submit}{Submit button. Flourish type hint: string, defaults to \code{NULL}}

\item{text_dropdown_label}{Dropdown label. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_number_localization_input_decimal_separator}{Decimal separator in data sheet. Choices: ., ,. Used for interpreting your data. Only change if data is not displaying on the chart as expected. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_number_localization_output_separators}{Number format to display. Choices: ,., .,, ., ,, ., ,. How the numbers should appear on chart labels. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_body_font}{Main font. This font will apply to the whole graphic by default. You can optionally change the font for the title, subtitle, footer, etc in the Header and Footer settings panels. Flourish type hint: font, defaults to \code{NULL}}

\item{chart_layout_font_color}{Text color. This color will apply to the whole graphic by default, You can optionally change the color for individual text elements, in other settings panels. Flourish type hint: color, defaults to \code{NULL}}

\item{chart_layout_background_color_enabled}{Color. Choices: \code{TRUE}, \code{FALSE}. Flourish type hint: boolean, defaults to \code{NULL}}

\item{chart_layout_background_image_enabled}{Image. Choices: \code{TRUE}, \code{FALSE}. Flourish type hint: boolean, defaults to \code{NULL}}

\item{chart_layout_background_color}{Background color. Flourish type hint: color, defaults to \code{NULL}}

\item{chart_layout_background_image_src}{Image URL. Flourish type hint: url, defaults to \code{NULL}}

\item{chart_layout_background_image_size}{Size. Choices: cover, contain, auto, 100\% 100\%. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_background_image_position}{Position. Choices: top left, top center, top right, center left, center center, center right, bottom left, bottom center, bottom right. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_max_width_target}{Maximum width. Choices: none, wrapper, primary. Apply a maximum width to just the main graphic or everything (main graphic plus header, footer, etc). Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_max_width}{Maximum width. Leave blank to stretch to container width. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_max_width_align}{Align. Choices: left, center, right. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_layout_order}{Layout order. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_space_between_sections}{Space between sections. Choices: 0.5, 1, 1.5, custom. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_space_between_sections_custom}{Custom. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_margin_top}{Top. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_margin_right}{Right. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_margin_bottom}{Bottom. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_margin_left}{Left. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_border_enabled}{Show borders around visualisation. Flourish type hint: boolean, defaults to \code{NULL}}

\item{chart_layout_border_top_width}{Top. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_border_top_style}{Style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_border_top_color}{Color. Flourish type hint: color, defaults to \code{NULL}}

\item{chart_layout_border_right_width}{Right. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_border_right_style}{Style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_border_right_color}{Color. Flourish type hint: color, defaults to \code{NULL}}

\item{chart_layout_border_bottom_width}{Bottom. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_border_bottom_style}{Style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_border_bottom_color}{Color. Flourish type hint: color, defaults to \code{NULL}}

\item{chart_layout_border_left_width}{Left. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_border_left_style}{Style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_border_left_color}{Color. Flourish type hint: color, defaults to \code{NULL}}

\item{chart_layout_read_direction}{Read direction. Choices: ltr, rtl. This will change the reading direction of the main text elements on the page. Its not possible to adjust this on all elements, such as axes.  Note that when direction is set to right to left any alignment icons will be reversed. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_font_size_mobile_small}{Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_font_size_mobile_big}{Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_font_size_tablet}{Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_font_size_desktop}{Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_font_size_big_screen}{Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_breakpoint_mobile_small}{Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_breakpoint_mobile_big}{Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_breakpoint_tablet}{Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_breakpoint_desktop}{Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_breakpoint_big_screen}{Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_header_align}{Alignment. Choices: left, center, right. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_title}{Flourish type hint: html, defaults to \code{NULL}}

\item{chart_layout_title_styling}{Styling. Flourish type hint: boolean, defaults to \code{NULL}}

\item{chart_layout_title_font}{Title Font. Flourish type hint: font, defaults to \code{NULL}}

\item{chart_layout_title_size}{Size. Choices: 1.4, 1.6, 2, custom. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_title_size_custom}{Custom. Specify a custom responsive font size in rems The best results will be with values between 1.2 and 3. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_title_weight}{Weight. Choices: bold, normal. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_title_color}{Color. Flourish type hint: color, defaults to \code{NULL}}

\item{chart_layout_title_line_height}{Line height. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_title_space_above}{Space above. Choices: 0, 0.5, 1, custom. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_title_space_above_custom}{Custom. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_subtitle}{Flourish type hint: html, defaults to \code{NULL}}

\item{chart_layout_subtitle_styling}{Styling. Flourish type hint: boolean, defaults to \code{NULL}}

\item{chart_layout_subtitle_font}{Subtitle Font. Flourish type hint: font, defaults to \code{NULL}}

\item{chart_layout_subtitle_size}{Size. Choices: 1.4, 1.6, 2, custom. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_subtitle_size_custom}{Custom. Specify a custom responsive font size in rems The best results will be with values between 1.2 and 3. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_subtitle_weight}{Weight. Choices: bold, normal. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_subtitle_color}{Color. Flourish type hint: color, defaults to \code{NULL}}

\item{chart_layout_subtitle_line_height}{Line height. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_subtitle_space_above}{Space above. Choices: 0, 0.5, 1, custom. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_subtitle_space_above_custom}{Custom. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_header_text}{Flourish type hint: html, defaults to \code{NULL}}

\item{chart_layout_header_text_styling}{Styling. Flourish type hint: boolean, defaults to \code{NULL}}

\item{chart_layout_header_text_size}{Size. Choices: 1.2, 1.4, 1.6, custom. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_header_text_size_custom}{Custom. Specify a custom responsive font size in rems The best results will be with values between 1.2 and 3. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_header_text_weight}{Weight. Choices: bold, normal. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_header_text_color}{Color. Flourish type hint: color, defaults to \code{NULL}}

\item{chart_layout_header_text_line_height}{Line height. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_header_text_space_above}{Space above. Choices: 0, 0.5, 1, custom. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_header_text_space_above_custom}{Custom. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_header_border}{Choices: top, bottom, top_and_bottom, none. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_header_border_width}{Width. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_header_border_color}{Color. Flourish type hint: color, defaults to \code{NULL}}

\item{chart_layout_header_border_style}{Style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_header_border_space}{Space. Space between border and header text. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_header_logo_enabled}{Choices: \code{TRUE}, \code{FALSE}. Flourish type hint: boolean, defaults to \code{NULL}}

\item{chart_layout_header_logo_src}{Image. Flourish type hint: url, defaults to \code{NULL}}

\item{chart_layout_header_logo_alt}{Alt text. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_header_logo_link_url}{Link. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_header_logo_height}{Height. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_header_logo_align}{Align. Choices: inside, outside. Align logo inside either the header or the main visualization container. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_header_logo_position_inside}{Position. Choices: top, left, right. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_header_logo_position_outside}{Position. Choices: left, right. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_header_logo_margin_top}{Top. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_header_logo_margin_right}{Right. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_header_logo_margin_bottom}{Bottom. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_header_logo_margin_left}{Left. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_footer_align}{Alignment. Choices: left, center, right, justify. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_footer_text_size}{Size. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_footer_text_color}{Color. Flourish type hint: color, defaults to \code{NULL}}

\item{chart_layout_footer_styling}{Advanced footer styles. Flourish type hint: boolean, defaults to \code{NULL}}

\item{chart_layout_footer_font}{Font. Flourish type hint: font, defaults to \code{NULL}}

\item{chart_layout_footer_text_weight}{Weight. Choices: bold, normal. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_source_name}{Source name. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_source_url}{Source url. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_multiple_sources}{Multiple sources. Flourish type hint: boolean, defaults to \code{NULL}}

\item{chart_layout_source_name_2}{Source name. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_source_url_2}{Source url. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_source_name_3}{Source name. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_source_url_3}{Source url. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_source_label}{Source label. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_footer_note}{Note. To add the time/date stamp of when the data was last updated add \code{{{data_last_updated}}}. For example, "Last updated at \code{{{data_last_updated}}}". To customize the format, use the advanced options below. Flourish type hint: html, defaults to \code{NULL}}

\item{chart_layout_footer_note_secondary}{Note (secondary). The secondary note is placed below the source and primary note. To add the time/date stamp of when the data was last updated add \code{{{data_last_updated}}}. For example, "Last updated at \code{{{data_last_updated}}}". To customize the format, use the advanced options below. Flourish type hint: html, defaults to \code{NULL}}

\item{chart_layout_advanced_note_styling}{Advanced. Flourish type hint: boolean, defaults to \code{NULL}}

\item{chart_layout_footer_timestamp_format}{Time/date stamp formatting. Choices: \%H:\%M:\%S, \%I:\%M \%p, \%H:\%M, \%H:\%M \%p, \%H:\%M:\%S, \%d \%b \%Y, \%H:\%M, \%d \%b \%Y, \%H:\%M, \%d/\%m/\%Y, \%H:\%M, \%m/\%d/\%Y, \%H:\%M, \%d-\%m-\%Y, \%H:\%M, \%m-\%d-\%Y, \%d \%b \%Y, \%m/\%d/\%Y, \%d/\%m/\%Y, \%m-\%d-\%Y, \%d-\%m-\%Y, \%Y-\%m-\%d, \%Y-\%m-\%d \%H:\%M:\%S. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_footer_logo_enabled}{Image. Choices: \code{TRUE}, \code{FALSE}. Flourish type hint: boolean, defaults to \code{NULL}}

\item{chart_layout_footer_logo_src}{Image. Flourish type hint: url, defaults to \code{NULL}}

\item{chart_layout_footer_logo_src_light}{Image (light version). If provided this version will be used whenever the background color is dark. Flourish type hint: hidden, defaults to \code{NULL}}

\item{chart_layout_footer_logo_alt}{Alt text. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_footer_logo_link_url}{Link. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_footer_logo_height}{Height. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_footer_logo_margin}{Margin. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_footer_logo_order}{Position. Choices: left, right. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_footer_align_vertical}{V. align. Choices: flex-start, center, flex-end. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_footer_border}{Choices: top, bottom, top_and_bottom, none. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_footer_border_width}{Width. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_footer_border_color}{Color. Flourish type hint: color, defaults to \code{NULL}}

\item{chart_layout_footer_border_style}{Style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_footer_border_space}{Space. Space between border and footer text. Flourish type hint: number, defaults to \code{NULL}}

\item{chart_layout_screenreader_text_primary}{Screenreader description. A text alternative to the visual content that will only be visible to screenreaders, e.g. The line chart shows China consistently higher than the other countries since 1990.  Do not replicate your title, since that will also be read by screenreaders. Flourish type hint: text, defaults to \code{NULL}}

\item{chart_layout_screenreader_label}{Screenreader label. A short text label given to the main Flourish embed wrapper to provide an accessible name that is only visible to screenreaders Added in the form of an "aria-label". Flourish type hint: string, defaults to \code{NULL}}

\item{chart_layout_screenreader_hide_primary}{Screenreader mode for main visual container. Choices: \code{TRUE}, \code{FALSE}. Whether the main visual container is visible to screenreaders (Text in the header and footer are always available to screenreaders.). Flourish type hint: boolean, defaults to \code{NULL}}
}
\value{
A Flourish chart
}
\description{
Set quiz chart details
}
\examples{
try(
  flourish(chart_type = "quiz", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
  bind_quiz_data(gapminder) |> 
  set_quiz_details()
)
}
