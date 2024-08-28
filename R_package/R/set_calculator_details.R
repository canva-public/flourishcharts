#' Set calculator chart details
#' @name set_calculator_details
#' @param question_flow Question flow. Choices: vertical, horizontal. Flourish type hint: string, defaults to `NULL`
#' @param design_border_type Border. Choices: border-bottom, border. Flourish type hint: string, defaults to `NULL`
#' @param design_border_color Border color. Flourish type hint: color, defaults to `NULL`
#' @param design_background Background. The background color of the cards. If not set, the background color in Layout is used. Flourish type hint: color, defaults to `NULL`
#' @param design_advanced Advanced. Flourish type hint: boolean, defaults to `NULL`
#' @param design_align_horizontal Align. Choices: start, center, end. Flourish type hint: string, defaults to `NULL`
#' @param design_align_vertical Position. Choices: start, center, flex-end. Set the vertical text position if the window height is fixed and the text doesnt stretch across the full vertical card space. Flourish type hint: string, defaults to `NULL`
#' @param design_max_width Max width (%). Flourish type hint: number, defaults to `NULL`
#' @param design_margin_vertical Vertical margins. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param design_padding_vertical Vertical padding. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param design_padding_horizontal Horizontal padding. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param design_border_width Border width. Flourish type hint: number, defaults to `NULL`
#' @param design_border_style Border style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to `NULL`
#' @param design_border_radius Roundness. Flourish type hint: number, defaults to `NULL`
#' @param design_shadow Shadow. Flourish type hint: boolean, defaults to `NULL`
#' @param design_shadow_color Shadow color. Shadow color as an RGBA value (red, green, blue, alpha). The alpha parameter is a number between 0.0 (fully transparent) and 1.0 (fully opaque). Flourish type hint: string, defaults to `NULL`
#' @param result_variables Variables.  Define variables to use in the Result field below. Set one variable per line in the format name = value Values can be:   Numbers   Text (single quotes for spaces)   Question references like q_2  with the number representing the row number of each question in the Questions datasheet  Previously defined variables (if wrapped into square   brackets ) which will resolve to the answered value   Excel functions, e.g., a = SUM(q_2, q_3)  Flourish type hint: text, defaults to `NULL`
#' @param result_input Result. Here you can compose your result view You have access to all variables you created above as well as all "q_" variables by referencing them in double curly braces like for example: `{{ my_variable }}` or `{{ q_6 }}` Flourish type hint: html, defaults to `NULL`
#' @param result_advanced Advanced. Flourish type hint: boolean, defaults to `NULL`
#' @param result_font_size Text size. Choices: 1.4, 1.6, 2, custom. Flourish type hint: string, defaults to `NULL`
#' @param result_font_size_custom Custom. Specify a custom responsive text size. Best results will be with values between 1.2 and 3. Flourish type hint: number, defaults to `NULL`
#' @param result_font_color Color. Flourish type hint: color, defaults to `NULL`
#' @param result_font_weight Text weight. Choices: normal, bold. Flourish type hint: string, defaults to `NULL`
#' @param result_font_style Text style. Choices: normal, italic. Flourish type hint: string, defaults to `NULL`
#' @param result_border_type Border. Choices: border-bottom, border. Flourish type hint: string, defaults to `NULL`
#' @param result_border_width Border width. Flourish type hint: number, defaults to `NULL`
#' @param result_border_style Border style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to `NULL`
#' @param result_border_color Border color. Flourish type hint: color, defaults to `NULL`
#' @param result_bg_type Background. Choices: color, image. Flourish type hint: string, defaults to `NULL`
#' @param result_bg_color Background color. Flourish type hint: color, defaults to `NULL`
#' @param result_bg_image_src Image URL. Flourish type hint: url, defaults to `NULL`
#' @param result_bg_image_size Image size. Choices: auto, cover, contain. Flourish type hint: string, defaults to `NULL`
#' @param design_question_font_size Text size. Choices: 1.4, 1.6, 2, custom. Flourish type hint: string, defaults to `NULL`
#' @param design_question_font_size_custom Custom. Specify a custom responsive text size. Best results will be with values between 1.2 and 3. Flourish type hint: number, defaults to `NULL`
#' @param design_question_font_color Color. The text color used for your questions. If not set, the text color in Layout is used. Flourish type hint: color, defaults to `NULL`
#' @param design_question_font_weight Text weight. Choices: normal, bold. Flourish type hint: string, defaults to `NULL`
#' @param design_question_font_style Text style. Choices: normal, italic. Flourish type hint: string, defaults to `NULL`
#' @param design_question_margin_vertical Vertical margins. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param design_question_margin_horizontal Horizontal margins. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param design_question_padding Padding. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param design_context_font_size Text size. Choices: 1.4, 1.6, 2, custom. Flourish type hint: string, defaults to `NULL`
#' @param design_context_font_size_custom Custom. Specify a custom responsive text size. Best results will be with values between 1.2 and 3. Flourish type hint: number, defaults to `NULL`
#' @param design_context_font_color Color. The text color used for your question context. If not set, the text color in Layout is used. Flourish type hint: color, defaults to `NULL`
#' @param design_context_font_weight Text weight. Choices: normal, bold. Flourish type hint: string, defaults to `NULL`
#' @param design_context_font_style Text style. Choices: normal, italic. Flourish type hint: string, defaults to `NULL`
#' @param design_context_margin_vertical Vertical margins. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param design_context_margin_horizontal Horizontal margins. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param design_question_bg_color Background color. The background color for your questions and context. To change the background color of the whole question card, go to the General design settings. Flourish type hint: color, defaults to `NULL`
#' @param design_question_bg_opacity Background opacity. The opacity of the question background color. Flourish type hint: number, defaults to `NULL`
#' @param design_question_border_radius Roundness. The roundness of the question background container. Flourish type hint: number, defaults to `NULL`
#' @param design_answer_margin_vertical Vertical margins. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param design_answer_margin_horizontal Horizontal margins. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param input_color Color. Flourish type hint: color, defaults to `NULL`
#' @param input_background_color Background color. Flourish type hint: color, defaults to `NULL`
#' @param input_width Width. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param number_input_placeholder Number input placeholder. Flourish type hint: string, defaults to `NULL`
#' @param text_input_placeholder Text input placeholder. Flourish type hint: string, defaults to `NULL`
#' @param input_input_advanced Advanced. Flourish type hint: boolean, defaults to `NULL`
#' @param input_border_color Border color. Flourish type hint: color, defaults to `NULL`
#' @param input_border_radius Roundness. Flourish type hint: number, defaults to `NULL`
#' @param input_border_width Border width. Flourish type hint: number, defaults to `NULL`
#' @param input_border_style Border style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to `NULL`
#' @param input_align Alignment. Choices: start, center, end. Flourish type hint: string, defaults to `NULL`
#' @param input_margin Margin. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param input_padding Padding. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param button_font_size Text size. Choices: 1, 1.2, 1.6, custom. Flourish type hint: string, defaults to `NULL`
#' @param button_font_size_custom Custom. Specify a custom responsive text size. Best results will be with values between 1.2 and 3. Flourish type hint: number, defaults to `NULL`
#' @param chart_button_control_style_background Background. Flourish type hint: color, defaults to `NULL`
#' @param chart_button_control_style_background_selected Selected. Flourish type hint: color, defaults to `NULL`
#' @param chart_button_control_style_background_hover Mouse over. Flourish type hint: color, defaults to `NULL`
#' @param chart_button_control_style_font_color Text color. Flourish type hint: color, defaults to `NULL`
#' @param chart_button_control_style_font_color_selected Selected. Flourish type hint: color, defaults to `NULL`
#' @param chart_button_control_style_font_color_hover Mouse over. Flourish type hint: color, defaults to `NULL`
#' @param chart_button_control_style_button_styles_advanced Advanced. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_button_control_style_border_width Border width. Flourish type hint: number, defaults to `NULL`
#' @param chart_button_control_style_border_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_button_control_style_border_transparency Transparency. Flourish type hint: number, defaults to `NULL`
#' @param chart_button_control_style_border_radius Radius. Flourish type hint: number, defaults to `NULL`
#' @param button_border_style Border style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to `NULL`
#' @param button_container_width Button group width (%). The width of the button group as a percentage of the card width. Flourish type hint: number, defaults to `NULL`
#' @param button_justify_content Align. Choices: flex-start, center, flex-end. Flourish type hint: string, defaults to `NULL`
#' @param button_margin Margin. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param button_padding_factor Padding. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param dropdown_font_size Text size. Choices: 1, 1.2, 1.6, custom. Flourish type hint: string, defaults to `NULL`
#' @param dropdown_font_size_custom Custom. Specify a custom responsive text size. Best results will be with values between 1.2 and 3. Flourish type hint: number, defaults to `NULL`
#' @param dropdown_placeholder Placeholder. Flourish type hint: string, defaults to `NULL`
#' @param chart_dropdown_control_style_background Background. Flourish type hint: color, defaults to `NULL`
#' @param chart_dropdown_control_style_font_color Text color. Flourish type hint: color, defaults to `NULL`
#' @param chart_dropdown_control_style_border_styles_advanced Advanced. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_dropdown_control_style_border_style Border style. Choices: all, bottom. Show border on all sides, or only at the bottom. Flourish type hint: string, defaults to `NULL`
#' @param chart_dropdown_control_style_border_width Border width. Flourish type hint: number, defaults to `NULL`
#' @param chart_dropdown_control_style_border_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_dropdown_control_style_border_transparency Transparency. Flourish type hint: number, defaults to `NULL`
#' @param chart_dropdown_control_style_border_radius Radius. Flourish type hint: number, defaults to `NULL`
#' @param dropdown_padding_factor Padding. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param dropdown_border_style Border look. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to `NULL`
#' @param dropdown_font_weight Text weight. Choices: normal, bold. Flourish type hint: string, defaults to `NULL`
#' @param dropdown_font_style Text style. Choices: normal, italic. Flourish type hint: string, defaults to `NULL`
#' @param dropdown_shadow Shadow. Flourish type hint: boolean, defaults to `NULL`
#' @param dropdown_shadow_color Shadow color. Flourish type hint: string, defaults to `NULL`
#' @param date_format Format. Choices: y-m-d, d/m/_y, d/m/y, j/n/_y, j/n/y, d-m-_y, d-m-y, j-n-_y, j-n-y, d.m._y, d.m.y, j.n._y, j.n.y, m/d/_y, m/d/y, n/j/_y, n/j/y, m-d-_y, m-d-y, n-j-_y, n-j-y, m j, _y, f j, _y. Flourish type hint: string, defaults to `NULL`
#' @param date_input_placeholder Placeholder. Flourish type hint: string, defaults to `NULL`
#' @param date_advanced Advanced. Flourish type hint: boolean, defaults to `NULL`
#' @param date_width Width. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param date_margin Margin. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param date_padding Padding. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param date_border_width Border width. Flourish type hint: number, defaults to `NULL`
#' @param date_border_style Border style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to `NULL`
#' @param date_border_color Border color. Flourish type hint: color, defaults to `NULL`
#' @param date_border_radius Roundness. Flourish type hint: number, defaults to `NULL`
#' @param date_align Text alignment. Choices: start, center, end. Flourish type hint: string, defaults to `NULL`
#' @param date_calendar_position_vertical Calendar vertical position. Choices: auto, above, below. Flourish type hint: string, defaults to `NULL`
#' @param date_calendar_position_horizontal Calendar horizontal position. Choices: left, center, right. Flourish type hint: string, defaults to `NULL`
#' @param rating_icon_type Choices: star, circle, check. Flourish type hint: string, defaults to `NULL`
#' @param rating_icon_fill_base Base fill color. Flourish type hint: color, defaults to `NULL`
#' @param rating_icon_stroke_base Base stroke color. Flourish type hint: color, defaults to `NULL`
#' @param rating_icon_fill_active Active fill color. Flourish type hint: color, defaults to `NULL`
#' @param rating_icon_stroke_active Active stroke color. Flourish type hint: color, defaults to `NULL`
#' @param rating_advanced Advanced. Flourish type hint: boolean, defaults to `NULL`
#' @param rating_icon_width Width. Flourish type hint: number, defaults to `NULL`
#' @param rating_icon_height Height. Flourish type hint: number, defaults to `NULL`
#' @param rating_icon_margin Vertical margin. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param rating_icon_stroke_width Stroke width (px). Flourish type hint: number, defaults to `NULL`
#' @param rating_container_width Rating group width (%). The width of the rating group as a percentage of the card width. Flourish type hint: number, defaults to `NULL`
#' @param rating_wrap_margin_vertical Vertical margins. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param rating_wrap_margin_horizontal Horizontal margins. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param rating_wrap_padding_vertical Vertical padding. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param rating_wrap_padding_horizontal Horizontal padding. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param rating_label_width Width. Flourish type hint: number, defaults to `NULL`
#' @param rating_label_color Color. Flourish type hint: color, defaults to `NULL`
#' @param rating_label_position Position. Choices: above, below. Flourish type hint: string, defaults to `NULL`
#' @param chart_slider_filter_controls_handle_color Handle color. Flourish type hint: color, defaults to `NULL`
#' @param chart_slider_filter_controls_track_active_color Track active color. Flourish type hint: color, defaults to `NULL`
#' @param chart_slider_filter_controls_track_base_color Track background color. Flourish type hint: color, defaults to `NULL`
#' @param chart_slider_filter_controls_handle_size Handle size. percentage of track height. Flourish type hint: number, defaults to `NULL`
#' @param chart_slider_filter_controls_ticks Range ticks. Display the minimum and the maximum of the range at the left and right. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_slider_filter_controls_advanced Advanced. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_slider_filter_controls_container_width Track width (%). The width of the track as a percentage of the card width. Flourish type hint: number, defaults to `NULL`
#' @param chart_slider_filter_controls_wrap_margin_vertical Vertical margins. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param chart_slider_filter_controls_wrap_margin_horizontal Horizontal margins. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param chart_slider_filter_controls_track_height Height. Flourish type hint: number, defaults to `NULL`
#' @param chart_slider_filter_controls_track_border_radius Roundness. Flourish type hint: number, defaults to `NULL`
#' @param chart_slider_filter_controls_track_border_color Border color. Flourish type hint: color, defaults to `NULL`
#' @param chart_slider_filter_controls_track_border_width Border width. The width of the border around the card, in rems Flourish type hint: number, defaults to `NULL`
#' @param chart_slider_filter_controls_handle_shape Shape. Choices: rectangle, circle. Flourish type hint: string, defaults to `NULL`
#' @param chart_slider_filter_controls_handle_width Width. % of Size (the handle height). Flourish type hint: number, defaults to `NULL`
#' @param chart_slider_filter_controls_handle_border_color Stroke color. Flourish type hint: color, defaults to `NULL`
#' @param chart_slider_filter_controls_handle_border_width Stroke width. Flourish type hint: number, defaults to `NULL`
#' @param chart_slider_filter_controls_handle_border_radius Roundness. Flourish type hint: number, defaults to `NULL`
#' @param chart_slider_filter_controls_handle_box_shadow Box shadow. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_slider_filter_controls_tooltips Tooltip. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_slider_filter_controls_tooltip_background Tooltip background. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_slider_filter_controls_tick_color Tick color. Flourish type hint: color, defaults to `NULL`
#' @param chart_slider_filter_controls_tick_padding Tick padding. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param chart_slider_filter_controls_tick_number_padding Number padding. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param submit_comment_text Submit label. Flourish type hint: text, defaults to `NULL`
#' @param submit_button_text Submit button text. Flourish type hint: string, defaults to `NULL`
#' @param submit_bg_type Background. Choices: color, image. Flourish type hint: string, defaults to `NULL`
#' @param submit_bg_color Color. Flourish type hint: color, defaults to `NULL`
#' @param submit_bg_image_src Image URL. Flourish type hint: url, defaults to `NULL`
#' @param submit_border Border. Flourish type hint: boolean, defaults to `NULL`
#' @param submit_bg_image_size Image size. Choices: auto, cover, contain. Flourish type hint: string, defaults to `NULL`
#' @param submit_advanced Advanced. Flourish type hint: boolean, defaults to `NULL`
#' @param submit_comment_font_size Label size. Choices: 1.4, 1.6, 2, custom. Flourish type hint: string, defaults to `NULL`
#' @param submit_comment_font_size_custom Custom. Specify a custom responsive text size. Best results will be with values between 1.2 and 3. Flourish type hint: number, defaults to `NULL`
#' @param submit_comment_font_weight Text weight. Choices: normal, bold. Flourish type hint: string, defaults to `NULL`
#' @param submit_comment_font_style Text style. Choices: normal, italic. Flourish type hint: string, defaults to `NULL`
#' @param submit_flex_direction Label position. Choices: column, column-reverse. Flourish type hint: string, defaults to `NULL`
#' @param submit_comment_font_color Label color. Flourish type hint: color, defaults to `NULL`
#' @param submit_comment_margin Vertical margins. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param submit_button_font_size Button text size. Choices: 1.4, 1.6, 2, custom. Flourish type hint: string, defaults to `NULL`
#' @param submit_button_font_size_custom Custom. Specify a custom responsive text size. Best results will be with values between 1.2 and 3. Flourish type hint: number, defaults to `NULL`
#' @param submit_button_font_weight Button text weight. Choices: normal, bold. Flourish type hint: string, defaults to `NULL`
#' @param submit_button_font_style Text style. Choices: normal, italic. Flourish type hint: string, defaults to `NULL`
#' @param submit_button_margin Margin. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param submit_button_padding_factor Padding. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param submit_button_box_shadow Hover shadow. Flourish type hint: boolean, defaults to `NULL`
#' @param submit_button_use_default_styles Use answer button styles. Flourish type hint: boolean, defaults to `NULL`
#' @param submit_button_bg_color Background. Flourish type hint: color, defaults to `NULL`
#' @param submit_button_bg_color_hover Mouse over. Flourish type hint: color, defaults to `NULL`
#' @param submit_button_font_color Text color. Flourish type hint: color, defaults to `NULL`
#' @param submit_button_font_color_hover Mouse over. Flourish type hint: color, defaults to `NULL`
#' @param submit_button_border_style Border style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to `NULL`
#' @param submit_button_border_color Color. Flourish type hint: color, defaults to `NULL`
#' @param submit_button_border_width Width. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param submit_button_border_transparency Transparency. Flourish type hint: number, defaults to `NULL`
#' @param submit_button_border_radius Roundness. Flourish type hint: number, defaults to `NULL`
#' @param design_controls_position Position. Choices: top_left, top_centre, top_right, bottom_left, bottom_centre, bottom_right. Flourish type hint: string, defaults to `NULL`
#' @param design_controls_button_symbol_back Back button. Flourish type hint: string, defaults to `NULL`
#' @param design_controls_button_symbol_forward Forward button. Flourish type hint: string, defaults to `NULL`
#' @param design_controls_button_font_color Color. Flourish type hint: color, defaults to `NULL`
#' @param design_controls_button_font_size Size. Flourish type hint: number, defaults to `NULL`
#' @param design_controls_advanced Advanced. Flourish type hint: boolean, defaults to `NULL`
#' @param design_controls_button_margin Margin. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param design_controls_button_padding_factor Padding. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param design_controls_button_bg_color Background color. Flourish type hint: color, defaults to `NULL`
#' @param design_controls_button_bg_opacity Background opacity. Flourish type hint: number, defaults to `NULL`
#' @param design_controls_button_font_weight Text weight. Choices: normal, bold. Flourish type hint: string, defaults to `NULL`
#' @param design_controls_button_font_style Text style. Choices: normal, italic. Flourish type hint: string, defaults to `NULL`
#' @param design_controls_button_border_width Border width. Flourish type hint: number, defaults to `NULL`
#' @param design_controls_button_border_style Border style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to `NULL`
#' @param design_controls_button_border_color Border color. Flourish type hint: color, defaults to `NULL`
#' @param design_controls_button_border_radius Roundness. Flourish type hint: number, defaults to `NULL`
#' @param design_progress_show Show progress bar. Flourish type hint: boolean, defaults to `NULL`
#' @param design_progress_position Position. Choices: top, bottom. Flourish type hint: string, defaults to `NULL`
#' @param design_progress_height Height. Flourish type hint: number, defaults to `NULL`
#' @param design_progress_margin Horizontal margins. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param design_progress_bg_color Background color. Flourish type hint: color, defaults to `NULL`
#' @param design_progress_bg_opacity Background opacity. Flourish type hint: number, defaults to `NULL`
#' @param chart_number_date_format_prefix Prefix. Text to place in front of number. Flourish type hint: string, defaults to `NULL`
#' @param chart_number_date_format_suffix Suffix. Text to place after number. Flourish type hint: string, defaults to `NULL`
#' @param chart_number_date_format_n_dec Decimal places. Enter a negative integer to round to a whole number with that many zeros. For example, -2 will round to the nearest hundred. Flourish type hint: number, defaults to `NULL`
#' @param chart_number_date_format_advanced Advanced. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_number_date_format_negative_sign Styling of negative numbers. Choices: -$nk, $-nk, ($nk), $(n)k, none. Flourish type hint: string, defaults to `NULL`
#' @param chart_number_date_format_strip_zeros Remove trailing zeros. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_number_date_format_strip_separator Hide thousands separator below 10,000. Turn off if you want four-digit numbers to include a separator, e.g. 1,234 rather than 1234. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_number_date_format_transform_labels Multiply/divide values. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_number_date_format_transform Choices: multiply, divide, exponentiate. Flourish type hint: string, defaults to `NULL`
#' @param chart_number_date_format_multiply_divide_constant Flourish type hint: number, defaults to `NULL`
#' @param chart_number_date_format_exponentiate_constant Flourish type hint: number, defaults to `NULL`
#' @param chart_number_localization_input_decimal_separator Decimal separator in data sheet. Choices: ., ,. Used for interpreting your data. Only change if data is not displaying on the chart as expected. Flourish type hint: string, defaults to `NULL`
#' @param chart_number_localization_output_separators Number format to display. Choices: ,., .,, ., ,, ., ,. How the numbers should appear on chart labels. Flourish type hint: string, defaults to `NULL`
#' @param external_write_enabled Store result data externally. Flourish type hint: boolean, defaults to `NULL`
#' @param external_write_endpoint Storage endpoint. Your external database, store, API or web app endpoint to post data to. If you were to use Google Sheets to store your data, please check the External write docs for integration help. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_body_font Main font. This font will apply to the whole graphic by default. You can optionally change the font for the title, subtitle, footer, etc in the Header and Footer settings panels. Flourish type hint: font, defaults to `NULL`
#' @param chart_layout_font_color Text color. This color will apply to the whole graphic by default, You can optionally change the color for individual text elements, in other settings panels. Flourish type hint: color, defaults to `NULL`
#' @param chart_layout_background_color_enabled Color. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_layout_background_image_enabled Image. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_layout_background_color Background color. Flourish type hint: color, defaults to `NULL`
#' @param chart_layout_background_image_src Image URL. Flourish type hint: url, defaults to `NULL`
#' @param chart_layout_background_image_size Size. Choices: cover, contain, auto, 100% 100%. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_background_image_position Position. Choices: top left, top center, top right, center left, center center, center right, bottom left, bottom center, bottom right. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_max_width_target Maximum width. Choices: none, wrapper, primary. Apply a maximum width to just the main graphic or everything (main graphic plus header, footer, etc). Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_max_width Maximum width. Leave blank to stretch to container width. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_max_width_align Align. Choices: left, center, right. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_layout_order Layout order. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_space_between_sections Space between sections. Choices: 0.5, 1, 1.5, custom. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_space_between_sections_custom Custom. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_margin_top Top. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_margin_right Right. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_margin_bottom Bottom. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_margin_left Left. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_border_enabled Show borders around visualisation. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_layout_border_top_width Top. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_border_top_style Style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_border_top_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_layout_border_right_width Right. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_border_right_style Style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_border_right_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_layout_border_bottom_width Bottom. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_border_bottom_style Style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_border_bottom_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_layout_border_left_width Left. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_border_left_style Style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_border_left_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_layout_read_direction Read direction. Choices: ltr, rtl. This will change the reading direction of the main text elements on the page. Its not possible to adjust this on all elements, such as axes.  Note that when direction is set to right to left any alignment icons will be reversed. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_font_size_mobile_small Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_font_size_mobile_big Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_font_size_tablet Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_font_size_desktop Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_font_size_big_screen Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_breakpoint_mobile_small Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_breakpoint_mobile_big Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_breakpoint_tablet Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_breakpoint_desktop Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_breakpoint_big_screen Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_header_align Alignment. Choices: left, center, right. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_title Flourish type hint: html, defaults to `NULL`
#' @param chart_layout_title_styling Styling. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_layout_title_font Title Font. Flourish type hint: font, defaults to `NULL`
#' @param chart_layout_title_size Size. Choices: 1.4, 1.6, 2, custom. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_title_size_custom Custom. Specify a custom responsive font size in rems The best results will be with values between 1.2 and 3. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_title_weight Weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_title_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_layout_title_line_height Line height. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_title_space_above Space above. Choices: 0, 0.5, 1, custom. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_title_space_above_custom Custom. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_subtitle Flourish type hint: html, defaults to `NULL`
#' @param chart_layout_subtitle_styling Styling. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_layout_subtitle_font Subtitle Font. Flourish type hint: font, defaults to `NULL`
#' @param chart_layout_subtitle_size Size. Choices: 1.4, 1.6, 2, custom. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_subtitle_size_custom Custom. Specify a custom responsive font size in rems The best results will be with values between 1.2 and 3. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_subtitle_weight Weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_subtitle_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_layout_subtitle_line_height Line height. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_subtitle_space_above Space above. Choices: 0, 0.5, 1, custom. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_subtitle_space_above_custom Custom. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_header_text Flourish type hint: html, defaults to `NULL`
#' @param chart_layout_header_text_styling Styling. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_layout_header_text_size Size. Choices: 1.2, 1.4, 1.6, custom. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_header_text_size_custom Custom. Specify a custom responsive font size in rems The best results will be with values between 1.2 and 3. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_header_text_weight Weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_header_text_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_layout_header_text_line_height Line height. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_header_text_space_above Space above. Choices: 0, 0.5, 1, custom. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_header_text_space_above_custom Custom. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_header_border Choices: top, bottom, top_and_bottom, none. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_header_border_width Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_header_border_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_layout_header_border_style Style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_header_border_space Space. Space between border and header text. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_header_logo_enabled Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_layout_header_logo_src Image. Flourish type hint: url, defaults to `NULL`
#' @param chart_layout_header_logo_alt Alt text. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_header_logo_link_url Link. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_header_logo_height Height. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_header_logo_align Align. Choices: inside, outside. Align logo inside either the header or the main visualization container. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_header_logo_position_inside Position. Choices: top, left, right. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_header_logo_position_outside Position. Choices: left, right. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_header_logo_margin_top Top. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_header_logo_margin_right Right. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_header_logo_margin_bottom Bottom. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_header_logo_margin_left Left. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_footer_align Alignment. Choices: left, center, right, justify. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_footer_text_size Size. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_footer_text_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_layout_footer_styling Advanced footer styles. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_layout_footer_font Font. Flourish type hint: font, defaults to `NULL`
#' @param chart_layout_footer_text_weight Weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_source_name Source name. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_source_url Source url. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_multiple_sources Multiple sources. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_layout_source_name_2 Source name. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_source_url_2 Source url. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_source_name_3 Source name. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_source_url_3 Source url. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_source_label Source label. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_footer_note Note. To add the time/date stamp of when the data was last updated add `{{data_last_updated}}`. For example, "Last updated at `{{data_last_updated}}`". To customize the format, use the advanced options below. Flourish type hint: html, defaults to `NULL`
#' @param chart_layout_footer_note_secondary Note (secondary). The secondary note is placed below the source and primary note. To add the time/date stamp of when the data was last updated add `{{data_last_updated}}`. For example, "Last updated at `{{data_last_updated}}`". To customize the format, use the advanced options below. Flourish type hint: html, defaults to `NULL`
#' @param chart_layout_advanced_note_styling Advanced. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_layout_footer_timestamp_format Time/date stamp formatting. Choices: %H:%M:%S, %I:%M %p, %H:%M, %H:%M %p, %H:%M:%S, %d %b %Y, %H:%M, %d %b %Y, %H:%M, %d/%m/%Y, %H:%M, %m/%d/%Y, %H:%M, %d-%m-%Y, %H:%M, %m-%d-%Y, %d %b %Y, %m/%d/%Y, %d/%m/%Y, %m-%d-%Y, %d-%m-%Y, %Y-%m-%d, %Y-%m-%d %H:%M:%S. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_footer_logo_enabled Image. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_layout_footer_logo_src Image. Flourish type hint: url, defaults to `NULL`
#' @param chart_layout_footer_logo_src_light Image (light version). If provided this version will be used whenever the background color is dark. Flourish type hint: hidden, defaults to `NULL`
#' @param chart_layout_footer_logo_alt Alt text. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_footer_logo_link_url Link. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_footer_logo_height Height. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_footer_logo_margin Margin. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_footer_logo_order Position. Choices: left, right. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_footer_align_vertical V. align. Choices: flex-start, center, flex-end. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_footer_border Choices: top, bottom, top_and_bottom, none. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_footer_border_width Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_footer_border_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_layout_footer_border_style Style. Choices: solid, dashed, dotted. Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_footer_border_space Space. Space between border and footer text. Flourish type hint: number, defaults to `NULL`
#' @param chart_layout_screenreader_text_primary Screenreader description. A text alternative to the visual content that will only be visible to screenreaders, e.g. The line chart shows China consistently higher than the other countries since 1990.  Do not replicate your title, since that will also be read by screenreaders. Flourish type hint: text, defaults to `NULL`
#' @param chart_layout_screenreader_label Screenreader label. A short text label given to the main Flourish embed wrapper to provide an accessible name that is only visible to screenreaders Added in the form of an "aria-label". Flourish type hint: string, defaults to `NULL`
#' @param chart_layout_screenreader_hide_primary Screenreader mode for main visual container. Choices: `TRUE`, `FALSE`. Whether the main visual container is visible to screenreaders (Text in the header and footer are always available to screenreaders.). Flourish type hint: boolean, defaults to `NULL`
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "calculator", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_calculator_data(gapminder) |> 
#'   set_calculator_details()
#' )
#' @export

set_calculator_details <- function(
    .,
    question_flow = NULL,
    design_border_type = NULL,
    design_border_color = NULL,
    design_background = NULL,
    design_advanced = NULL,
    design_align_horizontal = NULL,
    design_align_vertical = NULL,
    design_max_width = NULL,
    design_margin_vertical = NULL,
    design_padding_vertical = NULL,
    design_padding_horizontal = NULL,
    design_border_width = NULL,
    design_border_style = NULL,
    design_border_radius = NULL,
    design_shadow = NULL,
    design_shadow_color = NULL,
    result_variables = NULL,
    result_input = NULL,
    result_advanced = NULL,
    result_font_size = NULL,
    result_font_size_custom = NULL,
    result_font_color = NULL,
    result_font_weight = NULL,
    result_font_style = NULL,
    result_border_type = NULL,
    result_border_width = NULL,
    result_border_style = NULL,
    result_border_color = NULL,
    result_bg_type = NULL,
    result_bg_color = NULL,
    result_bg_image_src = NULL,
    result_bg_image_size = NULL,
    design_question_font_size = NULL,
    design_question_font_size_custom = NULL,
    design_question_font_color = NULL,
    design_question_font_weight = NULL,
    design_question_font_style = NULL,
    design_question_margin_vertical = NULL,
    design_question_margin_horizontal = NULL,
    design_question_padding = NULL,
    design_context_font_size = NULL,
    design_context_font_size_custom = NULL,
    design_context_font_color = NULL,
    design_context_font_weight = NULL,
    design_context_font_style = NULL,
    design_context_margin_vertical = NULL,
    design_context_margin_horizontal = NULL,
    design_question_bg_color = NULL,
    design_question_bg_opacity = NULL,
    design_question_border_radius = NULL,
    design_answer_margin_vertical = NULL,
    design_answer_margin_horizontal = NULL,
    input_color = NULL,
    input_background_color = NULL,
    input_width = NULL,
    number_input_placeholder = NULL,
    text_input_placeholder = NULL,
    input_input_advanced = NULL,
    input_border_color = NULL,
    input_border_radius = NULL,
    input_border_width = NULL,
    input_border_style = NULL,
    input_align = NULL,
    input_margin = NULL,
    input_padding = NULL,
    button_font_size = NULL,
    button_font_size_custom = NULL,
    chart_button_control_style_background = NULL,
    chart_button_control_style_background_selected = NULL,
    chart_button_control_style_background_hover = NULL,
    chart_button_control_style_font_color = NULL,
    chart_button_control_style_font_color_selected = NULL,
    chart_button_control_style_font_color_hover = NULL,
    chart_button_control_style_button_styles_advanced = NULL,
    chart_button_control_style_border_width = NULL,
    chart_button_control_style_border_color = NULL,
    chart_button_control_style_border_transparency = NULL,
    chart_button_control_style_border_radius = NULL,
    button_border_style = NULL,
    button_container_width = NULL,
    button_justify_content = NULL,
    button_margin = NULL,
    button_padding_factor = NULL,
    dropdown_font_size = NULL,
    dropdown_font_size_custom = NULL,
    dropdown_placeholder = NULL,
    chart_dropdown_control_style_background = NULL,
    chart_dropdown_control_style_font_color = NULL,
    chart_dropdown_control_style_border_styles_advanced = NULL,
    chart_dropdown_control_style_border_style = NULL,
    chart_dropdown_control_style_border_width = NULL,
    chart_dropdown_control_style_border_color = NULL,
    chart_dropdown_control_style_border_transparency = NULL,
    chart_dropdown_control_style_border_radius = NULL,
    dropdown_padding_factor = NULL,
    dropdown_border_style = NULL,
    dropdown_font_weight = NULL,
    dropdown_font_style = NULL,
    dropdown_shadow = NULL,
    dropdown_shadow_color = NULL,
    date_format = NULL,
    date_input_placeholder = NULL,
    date_advanced = NULL,
    date_width = NULL,
    date_margin = NULL,
    date_padding = NULL,
    date_border_width = NULL,
    date_border_style = NULL,
    date_border_color = NULL,
    date_border_radius = NULL,
    date_align = NULL,
    date_calendar_position_vertical = NULL,
    date_calendar_position_horizontal = NULL,
    rating_icon_type = NULL,
    rating_icon_fill_base = NULL,
    rating_icon_stroke_base = NULL,
    rating_icon_fill_active = NULL,
    rating_icon_stroke_active = NULL,
    rating_advanced = NULL,
    rating_icon_width = NULL,
    rating_icon_height = NULL,
    rating_icon_margin = NULL,
    rating_icon_stroke_width = NULL,
    rating_container_width = NULL,
    rating_wrap_margin_vertical = NULL,
    rating_wrap_margin_horizontal = NULL,
    rating_wrap_padding_vertical = NULL,
    rating_wrap_padding_horizontal = NULL,
    rating_label_width = NULL,
    rating_label_color = NULL,
    rating_label_position = NULL,
    chart_slider_filter_controls_handle_color = NULL,
    chart_slider_filter_controls_track_active_color = NULL,
    chart_slider_filter_controls_track_base_color = NULL,
    chart_slider_filter_controls_handle_size = NULL,
    chart_slider_filter_controls_ticks = NULL,
    chart_slider_filter_controls_advanced = NULL,
    chart_slider_filter_controls_container_width = NULL,
    chart_slider_filter_controls_wrap_margin_vertical = NULL,
    chart_slider_filter_controls_wrap_margin_horizontal = NULL,
    chart_slider_filter_controls_track_height = NULL,
    chart_slider_filter_controls_track_border_radius = NULL,
    chart_slider_filter_controls_track_border_color = NULL,
    chart_slider_filter_controls_track_border_width = NULL,
    chart_slider_filter_controls_handle_shape = NULL,
    chart_slider_filter_controls_handle_width = NULL,
    chart_slider_filter_controls_handle_border_color = NULL,
    chart_slider_filter_controls_handle_border_width = NULL,
    chart_slider_filter_controls_handle_border_radius = NULL,
    chart_slider_filter_controls_handle_box_shadow = NULL,
    chart_slider_filter_controls_tooltips = NULL,
    chart_slider_filter_controls_tooltip_background = NULL,
    chart_slider_filter_controls_tick_color = NULL,
    chart_slider_filter_controls_tick_padding = NULL,
    chart_slider_filter_controls_tick_number_padding = NULL,
    submit_comment_text = NULL,
    submit_button_text = NULL,
    submit_bg_type = NULL,
    submit_bg_color = NULL,
    submit_bg_image_src = NULL,
    submit_border = NULL,
    submit_bg_image_size = NULL,
    submit_advanced = NULL,
    submit_comment_font_size = NULL,
    submit_comment_font_size_custom = NULL,
    submit_comment_font_weight = NULL,
    submit_comment_font_style = NULL,
    submit_flex_direction = NULL,
    submit_comment_font_color = NULL,
    submit_comment_margin = NULL,
    submit_button_font_size = NULL,
    submit_button_font_size_custom = NULL,
    submit_button_font_weight = NULL,
    submit_button_font_style = NULL,
    submit_button_margin = NULL,
    submit_button_padding_factor = NULL,
    submit_button_box_shadow = NULL,
    submit_button_use_default_styles = NULL,
    submit_button_bg_color = NULL,
    submit_button_bg_color_hover = NULL,
    submit_button_font_color = NULL,
    submit_button_font_color_hover = NULL,
    submit_button_border_style = NULL,
    submit_button_border_color = NULL,
    submit_button_border_width = NULL,
    submit_button_border_transparency = NULL,
    submit_button_border_radius = NULL,
    design_controls_position = NULL,
    design_controls_button_symbol_back = NULL,
    design_controls_button_symbol_forward = NULL,
    design_controls_button_font_color = NULL,
    design_controls_button_font_size = NULL,
    design_controls_advanced = NULL,
    design_controls_button_margin = NULL,
    design_controls_button_padding_factor = NULL,
    design_controls_button_bg_color = NULL,
    design_controls_button_bg_opacity = NULL,
    design_controls_button_font_weight = NULL,
    design_controls_button_font_style = NULL,
    design_controls_button_border_width = NULL,
    design_controls_button_border_style = NULL,
    design_controls_button_border_color = NULL,
    design_controls_button_border_radius = NULL,
    design_progress_show = NULL,
    design_progress_position = NULL,
    design_progress_height = NULL,
    design_progress_margin = NULL,
    design_progress_bg_color = NULL,
    design_progress_bg_opacity = NULL,
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
    chart_number_localization_input_decimal_separator = NULL,
    chart_number_localization_output_separators = NULL,
    external_write_enabled = NULL,
    external_write_endpoint = NULL,
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
    chart_layout_screenreader_hide_primary = NULL) {
  details_error(., "calculator")

  old_list <- .
  new_list <- list()

  if (isTRUE(old_list$x$template != "@flourish/calculator")) {
    stop("`set_calculator_details()` is not supported for this chart type.")
  }
  list_question_flow <- c("vertical", "horizontal", NULL)
  if (!is.null(question_flow)) {
    if (!question_flow %in% list_question_flow) {
      stop("`question_flow` must be one of: c('vertical', 'horizontal')")
    } else {
      if (length(jsonlite::fromJSON('{"vertical": "vertical", "horizontal": "horizontal"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"vertical": "vertical", "horizontal": "horizontal"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && question_flow %in% names(named_list)) {
          if (is.logical(question_flow)) {
            question_flow <- as.character(question_flow)
          }
          named_list_value <- unname(named_list[question_flow])[[1]]
          new_list$x$state$question_flow <- named_list_value
        }
      }
    }
  }
  list_design_border_type <- c("border-bottom", "border", NULL)
  if (!is.null(design_border_type)) {
    if (!design_border_type %in% list_design_border_type) {
      stop("`design_border_type` must be one of: c('border-bottom', 'border')")
    } else {
      if (length(jsonlite::fromJSON('{"border-bottom": "border-bottom", "border": "border"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"border-bottom": "border-bottom", "border": "border"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && design_border_type %in% names(named_list)) {
          if (is.logical(design_border_type)) {
            design_border_type <- as.character(design_border_type)
          }
          named_list_value <- unname(named_list[design_border_type])[[1]]
          new_list$x$state$design$border_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$design$border_color <- design_border_color
  new_list$x$state$design$background <- design_background
  new_list$x$state$design$advanced <- design_advanced
  list_design_align_horizontal <- c("start", "center", "end", NULL)
  if (!is.null(design_align_horizontal)) {
    if (!design_align_horizontal %in% list_design_align_horizontal) {
      stop("`design_align_horizontal` must be one of: c('start', 'center', 'end')")
    } else {
      if (length(jsonlite::fromJSON('{"start": "start", "center": "center", "end": "end"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"start": "start", "center": "center", "end": "end"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && design_align_horizontal %in% names(named_list)) {
          if (is.logical(design_align_horizontal)) {
            design_align_horizontal <- as.character(design_align_horizontal)
          }
          named_list_value <- unname(named_list[design_align_horizontal])[[1]]
          new_list$x$state$design$align_horizontal <- named_list_value
        }
      }
    }
  }
  list_design_align_vertical <- c("start", "center", "flex-end", NULL)
  if (!is.null(design_align_vertical)) {
    if (!design_align_vertical %in% list_design_align_vertical) {
      stop("`design_align_vertical` must be one of: c('start', 'center', 'flex-end')")
    } else {
      if (length(jsonlite::fromJSON('{"start": "start", "center": "center", "flex-end": "flex-end"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"start": "start", "center": "center", "flex-end": "flex-end"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && design_align_vertical %in% names(named_list)) {
          if (is.logical(design_align_vertical)) {
            design_align_vertical <- as.character(design_align_vertical)
          }
          named_list_value <- unname(named_list[design_align_vertical])[[1]]
          new_list$x$state$design$align_vertical <- named_list_value
        }
      }
    }
  }
  new_list$x$state$design$max_width <- design_max_width
  new_list$x$state$design$margin_vertical <- design_margin_vertical
  new_list$x$state$design$padding_vertical <- design_padding_vertical
  new_list$x$state$design$padding_horizontal <- design_padding_horizontal
  new_list$x$state$design$border_width <- design_border_width
  list_design_border_style <- c("solid", "dashed", "dotted", NULL)
  if (!is.null(design_border_style)) {
    if (!design_border_style %in% list_design_border_style) {
      stop("`design_border_style` must be one of: c('solid', 'dashed', 'dotted')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && design_border_style %in% names(named_list)) {
          if (is.logical(design_border_style)) {
            design_border_style <- as.character(design_border_style)
          }
          named_list_value <- unname(named_list[design_border_style])[[1]]
          new_list$x$state$design$border_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$design$border_radius <- design_border_radius
  new_list$x$state$design$shadow <- design_shadow
  new_list$x$state$design$shadow_color <- design_shadow_color
  if (length(result_variables) > 1) {
    new_list$x$state$result$variables <- paste(result_variables, collapse = "\n")
  } else {
    new_list$x$state$result$variables <- result_variables
  }

  if (length(result_input) > 1) {
    new_list$x$state$result$input <- paste(result_input, collapse = "\n")
  } else {
    new_list$x$state$result$input <- result_input
  }

  new_list$x$state$result$advanced <- result_advanced
  list_result_font_size <- c("1.4", "1.6", "2", "custom", NULL)
  if (!is.null(result_font_size)) {
    if (!result_font_size %in% list_result_font_size) {
      stop("`result_font_size` must be one of: c('1.4', '1.6', '2', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"1.4": "1.4", "1.6": "1.6", "2": "2", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"1.4": "1.4", "1.6": "1.6", "2": "2", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && result_font_size %in% names(named_list)) {
          if (is.logical(result_font_size)) {
            result_font_size <- as.character(result_font_size)
          }
          named_list_value <- unname(named_list[result_font_size])[[1]]
          new_list$x$state$result$font_size <- named_list_value
        }
      }
    }
  }
  new_list$x$state$result$font_size_custom <- result_font_size_custom
  new_list$x$state$result$font_color <- result_font_color
  list_result_font_weight <- c("normal", "bold", NULL)
  if (!is.null(result_font_weight)) {
    if (!result_font_weight %in% list_result_font_weight) {
      stop("`result_font_weight` must be one of: c('normal', 'bold')")
    } else {
      if (length(jsonlite::fromJSON('{"normal": "normal", "bold": "bold"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"normal": "normal", "bold": "bold"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && result_font_weight %in% names(named_list)) {
          if (is.logical(result_font_weight)) {
            result_font_weight <- as.character(result_font_weight)
          }
          named_list_value <- unname(named_list[result_font_weight])[[1]]
          new_list$x$state$result$font_weight <- named_list_value
        }
      }
    }
  }
  list_result_font_style <- c("normal", "italic", NULL)
  if (!is.null(result_font_style)) {
    if (!result_font_style %in% list_result_font_style) {
      stop("`result_font_style` must be one of: c('normal', 'italic')")
    } else {
      if (length(jsonlite::fromJSON('{"normal": "normal", "italic": "italic"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"normal": "normal", "italic": "italic"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && result_font_style %in% names(named_list)) {
          if (is.logical(result_font_style)) {
            result_font_style <- as.character(result_font_style)
          }
          named_list_value <- unname(named_list[result_font_style])[[1]]
          new_list$x$state$result$font_style <- named_list_value
        }
      }
    }
  }
  list_result_border_type <- c("border-bottom", "border", NULL)
  if (!is.null(result_border_type)) {
    if (!result_border_type %in% list_result_border_type) {
      stop("`result_border_type` must be one of: c('border-bottom', 'border')")
    } else {
      if (length(jsonlite::fromJSON('{"border-bottom": "border-bottom", "border": "border"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"border-bottom": "border-bottom", "border": "border"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && result_border_type %in% names(named_list)) {
          if (is.logical(result_border_type)) {
            result_border_type <- as.character(result_border_type)
          }
          named_list_value <- unname(named_list[result_border_type])[[1]]
          new_list$x$state$result$border_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$result$border_width <- result_border_width
  list_result_border_style <- c("solid", "dashed", "dotted", NULL)
  if (!is.null(result_border_style)) {
    if (!result_border_style %in% list_result_border_style) {
      stop("`result_border_style` must be one of: c('solid', 'dashed', 'dotted')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && result_border_style %in% names(named_list)) {
          if (is.logical(result_border_style)) {
            result_border_style <- as.character(result_border_style)
          }
          named_list_value <- unname(named_list[result_border_style])[[1]]
          new_list$x$state$result$border_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$result$border_color <- result_border_color
  list_result_bg_type <- c("color", "image", NULL)
  if (!is.null(result_bg_type)) {
    if (!result_bg_type %in% list_result_bg_type) {
      stop("`result_bg_type` must be one of: c('color', 'image')")
    } else {
      if (length(jsonlite::fromJSON('{"color": "color", "image": "image"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"color": "color", "image": "image"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && result_bg_type %in% names(named_list)) {
          if (is.logical(result_bg_type)) {
            result_bg_type <- as.character(result_bg_type)
          }
          named_list_value <- unname(named_list[result_bg_type])[[1]]
          new_list$x$state$result$bg_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$result$bg_color <- result_bg_color
  new_list$x$state$result$bg_image_src <- result_bg_image_src
  list_result_bg_image_size <- c("auto", "cover", "contain", NULL)
  if (!is.null(result_bg_image_size)) {
    if (!result_bg_image_size %in% list_result_bg_image_size) {
      stop("`result_bg_image_size` must be one of: c('auto', 'cover', 'contain')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "cover": "cover", "contain": "contain"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "cover": "cover", "contain": "contain"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && result_bg_image_size %in% names(named_list)) {
          if (is.logical(result_bg_image_size)) {
            result_bg_image_size <- as.character(result_bg_image_size)
          }
          named_list_value <- unname(named_list[result_bg_image_size])[[1]]
          new_list$x$state$result$bg_image_size <- named_list_value
        }
      }
    }
  }
  list_design_question_font_size <- c("1.4", "1.6", "2", "custom", NULL)
  if (!is.null(design_question_font_size)) {
    if (!design_question_font_size %in% list_design_question_font_size) {
      stop("`design_question_font_size` must be one of: c('1.4', '1.6', '2', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"1.4": "1.4", "1.6": "1.6", "2": "2", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"1.4": "1.4", "1.6": "1.6", "2": "2", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && design_question_font_size %in% names(named_list)) {
          if (is.logical(design_question_font_size)) {
            design_question_font_size <- as.character(design_question_font_size)
          }
          named_list_value <- unname(named_list[design_question_font_size])[[1]]
          new_list$x$state$design$question$font_size <- named_list_value
        }
      }
    }
  }
  new_list$x$state$design$question$font_size_custom <- design_question_font_size_custom
  new_list$x$state$design$question$font_color <- design_question_font_color
  list_design_question_font_weight <- c("normal", "bold", NULL)
  if (!is.null(design_question_font_weight)) {
    if (!design_question_font_weight %in% list_design_question_font_weight) {
      stop("`design_question_font_weight` must be one of: c('normal', 'bold')")
    } else {
      if (length(jsonlite::fromJSON('{"normal": "normal", "bold": "bold"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"normal": "normal", "bold": "bold"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && design_question_font_weight %in% names(named_list)) {
          if (is.logical(design_question_font_weight)) {
            design_question_font_weight <- as.character(design_question_font_weight)
          }
          named_list_value <- unname(named_list[design_question_font_weight])[[1]]
          new_list$x$state$design$question$font_weight <- named_list_value
        }
      }
    }
  }
  list_design_question_font_style <- c("normal", "italic", NULL)
  if (!is.null(design_question_font_style)) {
    if (!design_question_font_style %in% list_design_question_font_style) {
      stop("`design_question_font_style` must be one of: c('normal', 'italic')")
    } else {
      if (length(jsonlite::fromJSON('{"normal": "normal", "italic": "italic"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"normal": "normal", "italic": "italic"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && design_question_font_style %in% names(named_list)) {
          if (is.logical(design_question_font_style)) {
            design_question_font_style <- as.character(design_question_font_style)
          }
          named_list_value <- unname(named_list[design_question_font_style])[[1]]
          new_list$x$state$design$question$font_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$design$question$margin_vertical <- design_question_margin_vertical
  new_list$x$state$design$question$margin_horizontal <- design_question_margin_horizontal
  new_list$x$state$design$question$padding <- design_question_padding
  list_design_context_font_size <- c("1.4", "1.6", "2", "custom", NULL)
  if (!is.null(design_context_font_size)) {
    if (!design_context_font_size %in% list_design_context_font_size) {
      stop("`design_context_font_size` must be one of: c('1.4', '1.6', '2', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"1.4": "1.4", "1.6": "1.6", "2": "2", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"1.4": "1.4", "1.6": "1.6", "2": "2", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && design_context_font_size %in% names(named_list)) {
          if (is.logical(design_context_font_size)) {
            design_context_font_size <- as.character(design_context_font_size)
          }
          named_list_value <- unname(named_list[design_context_font_size])[[1]]
          new_list$x$state$design$context$font_size <- named_list_value
        }
      }
    }
  }
  new_list$x$state$design$context$font_size_custom <- design_context_font_size_custom
  new_list$x$state$design$context$font_color <- design_context_font_color
  list_design_context_font_weight <- c("normal", "bold", NULL)
  if (!is.null(design_context_font_weight)) {
    if (!design_context_font_weight %in% list_design_context_font_weight) {
      stop("`design_context_font_weight` must be one of: c('normal', 'bold')")
    } else {
      if (length(jsonlite::fromJSON('{"normal": "normal", "bold": "bold"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"normal": "normal", "bold": "bold"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && design_context_font_weight %in% names(named_list)) {
          if (is.logical(design_context_font_weight)) {
            design_context_font_weight <- as.character(design_context_font_weight)
          }
          named_list_value <- unname(named_list[design_context_font_weight])[[1]]
          new_list$x$state$design$context$font_weight <- named_list_value
        }
      }
    }
  }
  list_design_context_font_style <- c("normal", "italic", NULL)
  if (!is.null(design_context_font_style)) {
    if (!design_context_font_style %in% list_design_context_font_style) {
      stop("`design_context_font_style` must be one of: c('normal', 'italic')")
    } else {
      if (length(jsonlite::fromJSON('{"normal": "normal", "italic": "italic"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"normal": "normal", "italic": "italic"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && design_context_font_style %in% names(named_list)) {
          if (is.logical(design_context_font_style)) {
            design_context_font_style <- as.character(design_context_font_style)
          }
          named_list_value <- unname(named_list[design_context_font_style])[[1]]
          new_list$x$state$design$context$font_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$design$context$margin_vertical <- design_context_margin_vertical
  new_list$x$state$design$context$margin_horizontal <- design_context_margin_horizontal
  new_list$x$state$design$question$bg_color <- design_question_bg_color
  new_list$x$state$design$question$bg_opacity <- design_question_bg_opacity
  new_list$x$state$design$question$border_radius <- design_question_border_radius
  new_list$x$state$design$answer$margin_vertical <- design_answer_margin_vertical
  new_list$x$state$design$answer$margin_horizontal <- design_answer_margin_horizontal
  new_list$x$state$input$color <- input_color
  new_list$x$state$input$background_color <- input_background_color
  new_list$x$state$input$width <- input_width
  new_list$x$state$number$input_placeholder <- number_input_placeholder
  new_list$x$state$text$input_placeholder <- text_input_placeholder
  new_list$x$state$input$input_advanced <- input_input_advanced
  new_list$x$state$input$border_color <- input_border_color
  new_list$x$state$input$border_radius <- input_border_radius
  new_list$x$state$input$border_width <- input_border_width
  list_input_border_style <- c("solid", "dashed", "dotted", NULL)
  if (!is.null(input_border_style)) {
    if (!input_border_style %in% list_input_border_style) {
      stop("`input_border_style` must be one of: c('solid', 'dashed', 'dotted')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && input_border_style %in% names(named_list)) {
          if (is.logical(input_border_style)) {
            input_border_style <- as.character(input_border_style)
          }
          named_list_value <- unname(named_list[input_border_style])[[1]]
          new_list$x$state$input$border_style <- named_list_value
        }
      }
    }
  }
  list_input_align <- c("start", "center", "end", NULL)
  if (!is.null(input_align)) {
    if (!input_align %in% list_input_align) {
      stop("`input_align` must be one of: c('start', 'center', 'end')")
    } else {
      if (length(jsonlite::fromJSON('{"start": "start", "center": "center", "end": "end"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"start": "start", "center": "center", "end": "end"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && input_align %in% names(named_list)) {
          if (is.logical(input_align)) {
            input_align <- as.character(input_align)
          }
          named_list_value <- unname(named_list[input_align])[[1]]
          new_list$x$state$input$align <- named_list_value
        }
      }
    }
  }
  new_list$x$state$input$margin <- input_margin
  new_list$x$state$input$padding <- input_padding
  list_button_font_size <- c("1", "1.2", "1.6", "custom", NULL)
  if (!is.null(button_font_size)) {
    if (!button_font_size %in% list_button_font_size) {
      stop("`button_font_size` must be one of: c('1', '1.2', '1.6', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"1": "1", "1.2": "1.2", "1.6": "1.6", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"1": "1", "1.2": "1.2", "1.6": "1.6", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && button_font_size %in% names(named_list)) {
          if (is.logical(button_font_size)) {
            button_font_size <- as.character(button_font_size)
          }
          named_list_value <- unname(named_list[button_font_size])[[1]]
          new_list$x$state$button$font_size <- named_list_value
        }
      }
    }
  }
  new_list$x$state$button$font_size_custom <- button_font_size_custom
  new_list$x$state$button_style$background <- chart_button_control_style_background
  new_list$x$state$button_style$background_selected <- chart_button_control_style_background_selected
  new_list$x$state$button_style$background_hover <- chart_button_control_style_background_hover
  new_list$x$state$button_style$font_color <- chart_button_control_style_font_color
  new_list$x$state$button_style$font_color_selected <- chart_button_control_style_font_color_selected
  new_list$x$state$button_style$font_color_hover <- chart_button_control_style_font_color_hover
  new_list$x$state$button_style$button_styles_advanced <- chart_button_control_style_button_styles_advanced
  new_list$x$state$button_style$border_width <- chart_button_control_style_border_width
  new_list$x$state$button_style$border_color <- chart_button_control_style_border_color
  new_list$x$state$button_style$border_transparency <- chart_button_control_style_border_transparency
  new_list$x$state$button_style$border_radius <- chart_button_control_style_border_radius
  list_button_border_style <- c("solid", "dashed", "dotted", NULL)
  if (!is.null(button_border_style)) {
    if (!button_border_style %in% list_button_border_style) {
      stop("`button_border_style` must be one of: c('solid', 'dashed', 'dotted')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && button_border_style %in% names(named_list)) {
          if (is.logical(button_border_style)) {
            button_border_style <- as.character(button_border_style)
          }
          named_list_value <- unname(named_list[button_border_style])[[1]]
          new_list$x$state$button$border_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$button$container_width <- button_container_width
  list_button_justify_content <- c("flex-start", "center", "flex-end", NULL)
  if (!is.null(button_justify_content)) {
    if (!button_justify_content %in% list_button_justify_content) {
      stop("`button_justify_content` must be one of: c('flex-start', 'center', 'flex-end')")
    } else {
      if (length(jsonlite::fromJSON('{"flex-start": "flex-start", "center": "center", "flex-end": "flex-end"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"flex-start": "flex-start", "center": "center", "flex-end": "flex-end"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && button_justify_content %in% names(named_list)) {
          if (is.logical(button_justify_content)) {
            button_justify_content <- as.character(button_justify_content)
          }
          named_list_value <- unname(named_list[button_justify_content])[[1]]
          new_list$x$state$button$justify_content <- named_list_value
        }
      }
    }
  }
  new_list$x$state$button$margin <- button_margin
  new_list$x$state$button$padding_factor <- button_padding_factor
  list_dropdown_font_size <- c("1", "1.2", "1.6", "custom", NULL)
  if (!is.null(dropdown_font_size)) {
    if (!dropdown_font_size %in% list_dropdown_font_size) {
      stop("`dropdown_font_size` must be one of: c('1', '1.2', '1.6', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"1": "1", "1.2": "1.2", "1.6": "1.6", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"1": "1", "1.2": "1.2", "1.6": "1.6", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && dropdown_font_size %in% names(named_list)) {
          if (is.logical(dropdown_font_size)) {
            dropdown_font_size <- as.character(dropdown_font_size)
          }
          named_list_value <- unname(named_list[dropdown_font_size])[[1]]
          new_list$x$state$dropdown$font_size <- named_list_value
        }
      }
    }
  }
  new_list$x$state$dropdown$font_size_custom <- dropdown_font_size_custom
  new_list$x$state$dropdown$placeholder <- dropdown_placeholder
  new_list$x$state$dropdown_style$background <- chart_dropdown_control_style_background
  new_list$x$state$dropdown_style$font_color <- chart_dropdown_control_style_font_color
  new_list$x$state$dropdown_style$border_styles_advanced <- chart_dropdown_control_style_border_styles_advanced
  list_chart_dropdown_control_style_border_style <- c("all", "bottom", NULL)
  if (!is.null(chart_dropdown_control_style_border_style)) {
    if (!chart_dropdown_control_style_border_style %in% list_chart_dropdown_control_style_border_style) {
      stop("`chart_dropdown_control_style_border_style` must be one of: c('all', 'bottom')")
    } else {
      if (length(jsonlite::fromJSON('{"all": "all", "bottom": "bottom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"all": "all", "bottom": "bottom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_dropdown_control_style_border_style %in% names(named_list)) {
          if (is.logical(chart_dropdown_control_style_border_style)) {
            chart_dropdown_control_style_border_style <- as.character(chart_dropdown_control_style_border_style)
          }
          named_list_value <- unname(named_list[chart_dropdown_control_style_border_style])[[1]]
          new_list$x$state$dropdown_style$border_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$dropdown_style$border_width <- chart_dropdown_control_style_border_width
  new_list$x$state$dropdown_style$border_color <- chart_dropdown_control_style_border_color
  new_list$x$state$dropdown_style$border_transparency <- chart_dropdown_control_style_border_transparency
  new_list$x$state$dropdown_style$border_radius <- chart_dropdown_control_style_border_radius
  new_list$x$state$dropdown$padding_factor <- dropdown_padding_factor
  list_dropdown_border_style <- c("solid", "dashed", "dotted", NULL)
  if (!is.null(dropdown_border_style)) {
    if (!dropdown_border_style %in% list_dropdown_border_style) {
      stop("`dropdown_border_style` must be one of: c('solid', 'dashed', 'dotted')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && dropdown_border_style %in% names(named_list)) {
          if (is.logical(dropdown_border_style)) {
            dropdown_border_style <- as.character(dropdown_border_style)
          }
          named_list_value <- unname(named_list[dropdown_border_style])[[1]]
          new_list$x$state$dropdown$border_style <- named_list_value
        }
      }
    }
  }
  list_dropdown_font_weight <- c("normal", "bold", NULL)
  if (!is.null(dropdown_font_weight)) {
    if (!dropdown_font_weight %in% list_dropdown_font_weight) {
      stop("`dropdown_font_weight` must be one of: c('normal', 'bold')")
    } else {
      if (length(jsonlite::fromJSON('{"normal": "normal", "bold": "bold"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"normal": "normal", "bold": "bold"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && dropdown_font_weight %in% names(named_list)) {
          if (is.logical(dropdown_font_weight)) {
            dropdown_font_weight <- as.character(dropdown_font_weight)
          }
          named_list_value <- unname(named_list[dropdown_font_weight])[[1]]
          new_list$x$state$dropdown$font_weight <- named_list_value
        }
      }
    }
  }
  list_dropdown_font_style <- c("normal", "italic", NULL)
  if (!is.null(dropdown_font_style)) {
    if (!dropdown_font_style %in% list_dropdown_font_style) {
      stop("`dropdown_font_style` must be one of: c('normal', 'italic')")
    } else {
      if (length(jsonlite::fromJSON('{"normal": "normal", "italic": "italic"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"normal": "normal", "italic": "italic"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && dropdown_font_style %in% names(named_list)) {
          if (is.logical(dropdown_font_style)) {
            dropdown_font_style <- as.character(dropdown_font_style)
          }
          named_list_value <- unname(named_list[dropdown_font_style])[[1]]
          new_list$x$state$dropdown$font_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$dropdown$shadow <- dropdown_shadow
  new_list$x$state$dropdown$shadow_color <- dropdown_shadow_color
  list_date_format <- c("y-m-d", "d/m/_y", "d/m/y", "j/n/_y", "j/n/y", "d-m-_y", "d-m-y", "j-n-_y", "j-n-y", "d.m._y", "d.m.y", "j.n._y", "j.n.y", "m/d/_y", "m/d/y", "n/j/_y", "n/j/y", "m-d-_y", "m-d-y", "n-j-_y", "n-j-y", "m j, _y", "f j, _y", NULL)
  if (!is.null(date_format)) {
    if (!date_format %in% list_date_format) {
      stop("`date_format` must be one of: c('y-m-d', 'd/m/_y', 'd/m/y', 'j/n/_y', 'j/n/y', 'd-m-_y', 'd-m-y', 'j-n-_y', 'j-n-y', 'd.m._y', 'd.m.y', 'j.n._y', 'j.n.y', 'm/d/_y', 'm/d/y', 'n/j/_y', 'n/j/y', 'm-d-_y', 'm-d-y', 'n-j-_y', 'n-j-y', 'm j, _y', 'f j, _y')")
    } else {
      if (length(jsonlite::fromJSON('{"y-m-d": "Y-m-d", "d/m/_y": "d/m/Y", "d/m/y": "d/m/y", "j/n/_y": "j/n/Y", "j/n/y": "j/n/y", "d-m-_y": "d-m-Y", "d-m-y": "d-m-y", "j-n-_y": "j-n-Y", "j-n-y": "j-n-y", "d.m._y": "d.m.Y", "d.m.y": "d.m.y", "j.n._y": "j.n.Y", "j.n.y": "j.n.y", "m/d/_y": "m/d/Y", "m/d/y": "m/d/y", "n/j/_y": "n/j/Y", "n/j/y": "n/j/y", "m-d-_y": "m-d-Y", "m-d-y": "m-d-y", "n-j-_y": "n-j-Y", "n-j-y": "n-j-y", "m j, _y": "M j, Y", "f j, _y": "F j, Y"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"y-m-d": "Y-m-d", "d/m/_y": "d/m/Y", "d/m/y": "d/m/y", "j/n/_y": "j/n/Y", "j/n/y": "j/n/y", "d-m-_y": "d-m-Y", "d-m-y": "d-m-y", "j-n-_y": "j-n-Y", "j-n-y": "j-n-y", "d.m._y": "d.m.Y", "d.m.y": "d.m.y", "j.n._y": "j.n.Y", "j.n.y": "j.n.y", "m/d/_y": "m/d/Y", "m/d/y": "m/d/y", "n/j/_y": "n/j/Y", "n/j/y": "n/j/y", "m-d-_y": "m-d-Y", "m-d-y": "m-d-y", "n-j-_y": "n-j-Y", "n-j-y": "n-j-y", "m j, _y": "M j, Y", "f j, _y": "F j, Y"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && date_format %in% names(named_list)) {
          if (is.logical(date_format)) {
            date_format <- as.character(date_format)
          }
          named_list_value <- unname(named_list[date_format])[[1]]
          new_list$x$state$date$format <- named_list_value
        }
      }
    }
  }
  new_list$x$state$date$input_placeholder <- date_input_placeholder
  new_list$x$state$date$advanced <- date_advanced
  new_list$x$state$date$width <- date_width
  new_list$x$state$date$margin <- date_margin
  new_list$x$state$date$padding <- date_padding
  new_list$x$state$date$border_width <- date_border_width
  list_date_border_style <- c("solid", "dashed", "dotted", NULL)
  if (!is.null(date_border_style)) {
    if (!date_border_style %in% list_date_border_style) {
      stop("`date_border_style` must be one of: c('solid', 'dashed', 'dotted')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && date_border_style %in% names(named_list)) {
          if (is.logical(date_border_style)) {
            date_border_style <- as.character(date_border_style)
          }
          named_list_value <- unname(named_list[date_border_style])[[1]]
          new_list$x$state$date$border_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$date$border_color <- date_border_color
  new_list$x$state$date$border_radius <- date_border_radius
  list_date_align <- c("start", "center", "end", NULL)
  if (!is.null(date_align)) {
    if (!date_align %in% list_date_align) {
      stop("`date_align` must be one of: c('start', 'center', 'end')")
    } else {
      if (length(jsonlite::fromJSON('{"start": "start", "center": "center", "end": "end"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"start": "start", "center": "center", "end": "end"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && date_align %in% names(named_list)) {
          if (is.logical(date_align)) {
            date_align <- as.character(date_align)
          }
          named_list_value <- unname(named_list[date_align])[[1]]
          new_list$x$state$date$align <- named_list_value
        }
      }
    }
  }
  list_date_calendar_position_vertical <- c("auto", "above", "below", NULL)
  if (!is.null(date_calendar_position_vertical)) {
    if (!date_calendar_position_vertical %in% list_date_calendar_position_vertical) {
      stop("`date_calendar_position_vertical` must be one of: c('auto', 'above', 'below')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "above": "above", "below": "below"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "above": "above", "below": "below"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && date_calendar_position_vertical %in% names(named_list)) {
          if (is.logical(date_calendar_position_vertical)) {
            date_calendar_position_vertical <- as.character(date_calendar_position_vertical)
          }
          named_list_value <- unname(named_list[date_calendar_position_vertical])[[1]]
          new_list$x$state$date$calendar_position$vertical <- named_list_value
        }
      }
    }
  }
  list_date_calendar_position_horizontal <- c("left", "center", "right", NULL)
  if (!is.null(date_calendar_position_horizontal)) {
    if (!date_calendar_position_horizontal %in% list_date_calendar_position_horizontal) {
      stop("`date_calendar_position_horizontal` must be one of: c('left', 'center', 'right')")
    } else {
      if (length(jsonlite::fromJSON('{"left": "left", "center": "center", "right": "right"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"left": "left", "center": "center", "right": "right"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && date_calendar_position_horizontal %in% names(named_list)) {
          if (is.logical(date_calendar_position_horizontal)) {
            date_calendar_position_horizontal <- as.character(date_calendar_position_horizontal)
          }
          named_list_value <- unname(named_list[date_calendar_position_horizontal])[[1]]
          new_list$x$state$date$calendar_position$horizontal <- named_list_value
        }
      }
    }
  }
  list_rating_icon_type <- c("star", "circle", "check", NULL)
  if (!is.null(rating_icon_type)) {
    if (!rating_icon_type %in% list_rating_icon_type) {
      stop("`rating_icon_type` must be one of: c('star', 'circle', 'check')")
    } else {
      if (length(jsonlite::fromJSON('{"star": "star", "circle": "circle", "check": "check"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"star": "star", "circle": "circle", "check": "check"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && rating_icon_type %in% names(named_list)) {
          if (is.logical(rating_icon_type)) {
            rating_icon_type <- as.character(rating_icon_type)
          }
          named_list_value <- unname(named_list[rating_icon_type])[[1]]
          new_list$x$state$rating$icon_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$rating$icon_fill_base <- rating_icon_fill_base
  new_list$x$state$rating$icon_stroke_base <- rating_icon_stroke_base
  new_list$x$state$rating$icon_fill_active <- rating_icon_fill_active
  new_list$x$state$rating$icon_stroke_active <- rating_icon_stroke_active
  new_list$x$state$rating$advanced <- rating_advanced
  new_list$x$state$rating$icon_width <- rating_icon_width
  new_list$x$state$rating$icon_height <- rating_icon_height
  new_list$x$state$rating$icon_margin <- rating_icon_margin
  new_list$x$state$rating$icon_stroke_width <- rating_icon_stroke_width
  new_list$x$state$rating$container_width <- rating_container_width
  new_list$x$state$rating$wrap_margin_vertical <- rating_wrap_margin_vertical
  new_list$x$state$rating$wrap_margin_horizontal <- rating_wrap_margin_horizontal
  new_list$x$state$rating$wrap_padding_vertical <- rating_wrap_padding_vertical
  new_list$x$state$rating$wrap_padding_horizontal <- rating_wrap_padding_horizontal
  new_list$x$state$rating$label_width <- rating_label_width
  new_list$x$state$rating$label_color <- rating_label_color
  list_rating_label_position <- c("above", "below", NULL)
  if (!is.null(rating_label_position)) {
    if (!rating_label_position %in% list_rating_label_position) {
      stop("`rating_label_position` must be one of: c('above', 'below')")
    } else {
      if (length(jsonlite::fromJSON('{"above": "above", "below": "below"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"above": "above", "below": "below"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && rating_label_position %in% names(named_list)) {
          if (is.logical(rating_label_position)) {
            rating_label_position <- as.character(rating_label_position)
          }
          named_list_value <- unname(named_list[rating_label_position])[[1]]
          new_list$x$state$rating$label_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$slider$handle_color <- chart_slider_filter_controls_handle_color
  new_list$x$state$slider$track_active_color <- chart_slider_filter_controls_track_active_color
  new_list$x$state$slider$track_base_color <- chart_slider_filter_controls_track_base_color
  new_list$x$state$slider$handle_size <- chart_slider_filter_controls_handle_size
  new_list$x$state$slider$ticks <- chart_slider_filter_controls_ticks
  new_list$x$state$slider$advanced <- chart_slider_filter_controls_advanced
  new_list$x$state$slider$container_width <- chart_slider_filter_controls_container_width
  new_list$x$state$slider$wrap_margin_vertical <- chart_slider_filter_controls_wrap_margin_vertical
  new_list$x$state$slider$wrap_margin_horizontal <- chart_slider_filter_controls_wrap_margin_horizontal
  new_list$x$state$slider$track_height <- chart_slider_filter_controls_track_height
  new_list$x$state$slider$track_border_radius <- chart_slider_filter_controls_track_border_radius
  new_list$x$state$slider$track_border_color <- chart_slider_filter_controls_track_border_color
  new_list$x$state$slider$track_border_width <- chart_slider_filter_controls_track_border_width
  list_chart_slider_filter_controls_handle_shape <- c("rectangle", "circle", NULL)
  if (!is.null(chart_slider_filter_controls_handle_shape)) {
    if (!chart_slider_filter_controls_handle_shape %in% list_chart_slider_filter_controls_handle_shape) {
      stop("`chart_slider_filter_controls_handle_shape` must be one of: c('rectangle', 'circle')")
    } else {
      if (length(jsonlite::fromJSON('{"rectangle": "rectangle", "circle": "circle"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"rectangle": "rectangle", "circle": "circle"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_slider_filter_controls_handle_shape %in% names(named_list)) {
          if (is.logical(chart_slider_filter_controls_handle_shape)) {
            chart_slider_filter_controls_handle_shape <- as.character(chart_slider_filter_controls_handle_shape)
          }
          named_list_value <- unname(named_list[chart_slider_filter_controls_handle_shape])[[1]]
          new_list$x$state$slider$handle_shape <- named_list_value
        }
      }
    }
  }
  new_list$x$state$slider$handle_width <- chart_slider_filter_controls_handle_width
  new_list$x$state$slider$handle_border_color <- chart_slider_filter_controls_handle_border_color
  new_list$x$state$slider$handle_border_width <- chart_slider_filter_controls_handle_border_width
  new_list$x$state$slider$handle_border_radius <- chart_slider_filter_controls_handle_border_radius
  new_list$x$state$slider$handle_box_shadow <- chart_slider_filter_controls_handle_box_shadow
  new_list$x$state$slider$tooltips <- chart_slider_filter_controls_tooltips
  new_list$x$state$slider$tooltip_background <- chart_slider_filter_controls_tooltip_background
  new_list$x$state$slider$tick_color <- chart_slider_filter_controls_tick_color
  new_list$x$state$slider$tick_padding <- chart_slider_filter_controls_tick_padding
  new_list$x$state$slider$tick_number_padding <- chart_slider_filter_controls_tick_number_padding
  if (length(submit_comment_text) > 1) {
    new_list$x$state$submit$comment$text <- paste(submit_comment_text, collapse = "\n")
  } else {
    new_list$x$state$submit$comment$text <- submit_comment_text
  }

  new_list$x$state$submit$button$text <- submit_button_text
  list_submit_bg_type <- c("color", "image", NULL)
  if (!is.null(submit_bg_type)) {
    if (!submit_bg_type %in% list_submit_bg_type) {
      stop("`submit_bg_type` must be one of: c('color', 'image')")
    } else {
      if (length(jsonlite::fromJSON('{"color": "color", "image": "image"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"color": "color", "image": "image"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && submit_bg_type %in% names(named_list)) {
          if (is.logical(submit_bg_type)) {
            submit_bg_type <- as.character(submit_bg_type)
          }
          named_list_value <- unname(named_list[submit_bg_type])[[1]]
          new_list$x$state$submit$bg_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$submit$bg_color <- submit_bg_color
  new_list$x$state$submit$bg_image_src <- submit_bg_image_src
  new_list$x$state$submit$border <- submit_border
  list_submit_bg_image_size <- c("auto", "cover", "contain", NULL)
  if (!is.null(submit_bg_image_size)) {
    if (!submit_bg_image_size %in% list_submit_bg_image_size) {
      stop("`submit_bg_image_size` must be one of: c('auto', 'cover', 'contain')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "cover": "cover", "contain": "contain"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "cover": "cover", "contain": "contain"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && submit_bg_image_size %in% names(named_list)) {
          if (is.logical(submit_bg_image_size)) {
            submit_bg_image_size <- as.character(submit_bg_image_size)
          }
          named_list_value <- unname(named_list[submit_bg_image_size])[[1]]
          new_list$x$state$submit$bg_image_size <- named_list_value
        }
      }
    }
  }
  new_list$x$state$submit$advanced <- submit_advanced
  list_submit_comment_font_size <- c("1.4", "1.6", "2", "custom", NULL)
  if (!is.null(submit_comment_font_size)) {
    if (!submit_comment_font_size %in% list_submit_comment_font_size) {
      stop("`submit_comment_font_size` must be one of: c('1.4', '1.6', '2', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"1.4": "1.4", "1.6": "1.6", "2": "2", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"1.4": "1.4", "1.6": "1.6", "2": "2", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && submit_comment_font_size %in% names(named_list)) {
          if (is.logical(submit_comment_font_size)) {
            submit_comment_font_size <- as.character(submit_comment_font_size)
          }
          named_list_value <- unname(named_list[submit_comment_font_size])[[1]]
          new_list$x$state$submit$comment$font_size <- named_list_value
        }
      }
    }
  }
  new_list$x$state$submit$comment$font_size_custom <- submit_comment_font_size_custom
  list_submit_comment_font_weight <- c("normal", "bold", NULL)
  if (!is.null(submit_comment_font_weight)) {
    if (!submit_comment_font_weight %in% list_submit_comment_font_weight) {
      stop("`submit_comment_font_weight` must be one of: c('normal', 'bold')")
    } else {
      if (length(jsonlite::fromJSON('{"normal": "normal", "bold": "bold"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"normal": "normal", "bold": "bold"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && submit_comment_font_weight %in% names(named_list)) {
          if (is.logical(submit_comment_font_weight)) {
            submit_comment_font_weight <- as.character(submit_comment_font_weight)
          }
          named_list_value <- unname(named_list[submit_comment_font_weight])[[1]]
          new_list$x$state$submit$comment$font_weight <- named_list_value
        }
      }
    }
  }
  list_submit_comment_font_style <- c("normal", "italic", NULL)
  if (!is.null(submit_comment_font_style)) {
    if (!submit_comment_font_style %in% list_submit_comment_font_style) {
      stop("`submit_comment_font_style` must be one of: c('normal', 'italic')")
    } else {
      if (length(jsonlite::fromJSON('{"normal": "normal", "italic": "italic"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"normal": "normal", "italic": "italic"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && submit_comment_font_style %in% names(named_list)) {
          if (is.logical(submit_comment_font_style)) {
            submit_comment_font_style <- as.character(submit_comment_font_style)
          }
          named_list_value <- unname(named_list[submit_comment_font_style])[[1]]
          new_list$x$state$submit$comment$font_style <- named_list_value
        }
      }
    }
  }
  list_submit_flex_direction <- c("column", "column-reverse", NULL)
  if (!is.null(submit_flex_direction)) {
    if (!submit_flex_direction %in% list_submit_flex_direction) {
      stop("`submit_flex_direction` must be one of: c('column', 'column-reverse')")
    } else {
      if (length(jsonlite::fromJSON('{"column": "column", "column-reverse": "column-reverse"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"column": "column", "column-reverse": "column-reverse"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && submit_flex_direction %in% names(named_list)) {
          if (is.logical(submit_flex_direction)) {
            submit_flex_direction <- as.character(submit_flex_direction)
          }
          named_list_value <- unname(named_list[submit_flex_direction])[[1]]
          new_list$x$state$submit$flex_direction <- named_list_value
        }
      }
    }
  }
  new_list$x$state$submit$comment$font_color <- submit_comment_font_color
  new_list$x$state$submit$comment$margin <- submit_comment_margin
  list_submit_button_font_size <- c("1.4", "1.6", "2", "custom", NULL)
  if (!is.null(submit_button_font_size)) {
    if (!submit_button_font_size %in% list_submit_button_font_size) {
      stop("`submit_button_font_size` must be one of: c('1.4', '1.6', '2', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"1.4": "1.4", "1.6": "1.6", "2": "2", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"1.4": "1.4", "1.6": "1.6", "2": "2", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && submit_button_font_size %in% names(named_list)) {
          if (is.logical(submit_button_font_size)) {
            submit_button_font_size <- as.character(submit_button_font_size)
          }
          named_list_value <- unname(named_list[submit_button_font_size])[[1]]
          new_list$x$state$submit$button$font_size <- named_list_value
        }
      }
    }
  }
  new_list$x$state$submit$button$font_size_custom <- submit_button_font_size_custom
  list_submit_button_font_weight <- c("normal", "bold", NULL)
  if (!is.null(submit_button_font_weight)) {
    if (!submit_button_font_weight %in% list_submit_button_font_weight) {
      stop("`submit_button_font_weight` must be one of: c('normal', 'bold')")
    } else {
      if (length(jsonlite::fromJSON('{"normal": "normal", "bold": "bold"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"normal": "normal", "bold": "bold"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && submit_button_font_weight %in% names(named_list)) {
          if (is.logical(submit_button_font_weight)) {
            submit_button_font_weight <- as.character(submit_button_font_weight)
          }
          named_list_value <- unname(named_list[submit_button_font_weight])[[1]]
          new_list$x$state$submit$button$font_weight <- named_list_value
        }
      }
    }
  }
  list_submit_button_font_style <- c("normal", "italic", NULL)
  if (!is.null(submit_button_font_style)) {
    if (!submit_button_font_style %in% list_submit_button_font_style) {
      stop("`submit_button_font_style` must be one of: c('normal', 'italic')")
    } else {
      if (length(jsonlite::fromJSON('{"normal": "normal", "italic": "italic"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"normal": "normal", "italic": "italic"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && submit_button_font_style %in% names(named_list)) {
          if (is.logical(submit_button_font_style)) {
            submit_button_font_style <- as.character(submit_button_font_style)
          }
          named_list_value <- unname(named_list[submit_button_font_style])[[1]]
          new_list$x$state$submit$button$font_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$submit$button$margin <- submit_button_margin
  new_list$x$state$submit$button$padding_factor <- submit_button_padding_factor
  new_list$x$state$submit$button$box_shadow <- submit_button_box_shadow
  new_list$x$state$submit$button$use_default_styles <- submit_button_use_default_styles
  new_list$x$state$submit$button$bg_color <- submit_button_bg_color
  new_list$x$state$submit$button$bg_color_hover <- submit_button_bg_color_hover
  new_list$x$state$submit$button$font_color <- submit_button_font_color
  new_list$x$state$submit$button$font_color_hover <- submit_button_font_color_hover
  list_submit_button_border_style <- c("solid", "dashed", "dotted", NULL)
  if (!is.null(submit_button_border_style)) {
    if (!submit_button_border_style %in% list_submit_button_border_style) {
      stop("`submit_button_border_style` must be one of: c('solid', 'dashed', 'dotted')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && submit_button_border_style %in% names(named_list)) {
          if (is.logical(submit_button_border_style)) {
            submit_button_border_style <- as.character(submit_button_border_style)
          }
          named_list_value <- unname(named_list[submit_button_border_style])[[1]]
          new_list$x$state$submit$button$border_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$submit$button$border_color <- submit_button_border_color
  new_list$x$state$submit$button$border_width <- submit_button_border_width
  new_list$x$state$submit$button$border_transparency <- submit_button_border_transparency
  new_list$x$state$submit$button$border_radius <- submit_button_border_radius
  list_design_controls_position <- c("top_left", "top_centre", "top_right", "bottom_left", "bottom_centre", "bottom_right", NULL)
  if (!is.null(design_controls_position)) {
    if (!design_controls_position %in% list_design_controls_position) {
      stop("`design_controls_position` must be one of: c('top_left', 'top_centre', 'top_right', 'bottom_left', 'bottom_centre', 'bottom_right')")
    } else {
      if (length(jsonlite::fromJSON('{"top_left": "top_left", "top_centre": "top_centre", "top_right": "top_right", "bottom_left": "bottom_left", "bottom_centre": "bottom_centre", "bottom_right": "bottom_right"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"top_left": "top_left", "top_centre": "top_centre", "top_right": "top_right", "bottom_left": "bottom_left", "bottom_centre": "bottom_centre", "bottom_right": "bottom_right"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && design_controls_position %in% names(named_list)) {
          if (is.logical(design_controls_position)) {
            design_controls_position <- as.character(design_controls_position)
          }
          named_list_value <- unname(named_list[design_controls_position])[[1]]
          new_list$x$state$design$controls$position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$design$controls$button$symbol_back <- design_controls_button_symbol_back
  new_list$x$state$design$controls$button$symbol_forward <- design_controls_button_symbol_forward
  new_list$x$state$design$controls$button$font_color <- design_controls_button_font_color
  new_list$x$state$design$controls$button$font_size <- design_controls_button_font_size
  new_list$x$state$design$controls$advanced <- design_controls_advanced
  new_list$x$state$design$controls$button$margin <- design_controls_button_margin
  new_list$x$state$design$controls$button$padding_factor <- design_controls_button_padding_factor
  new_list$x$state$design$controls$button$bg_color <- design_controls_button_bg_color
  new_list$x$state$design$controls$button$bg_opacity <- design_controls_button_bg_opacity
  list_design_controls_button_font_weight <- c("normal", "bold", NULL)
  if (!is.null(design_controls_button_font_weight)) {
    if (!design_controls_button_font_weight %in% list_design_controls_button_font_weight) {
      stop("`design_controls_button_font_weight` must be one of: c('normal', 'bold')")
    } else {
      if (length(jsonlite::fromJSON('{"normal": "normal", "bold": "bold"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"normal": "normal", "bold": "bold"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && design_controls_button_font_weight %in% names(named_list)) {
          if (is.logical(design_controls_button_font_weight)) {
            design_controls_button_font_weight <- as.character(design_controls_button_font_weight)
          }
          named_list_value <- unname(named_list[design_controls_button_font_weight])[[1]]
          new_list$x$state$design$controls$button$font_weight <- named_list_value
        }
      }
    }
  }
  list_design_controls_button_font_style <- c("normal", "italic", NULL)
  if (!is.null(design_controls_button_font_style)) {
    if (!design_controls_button_font_style %in% list_design_controls_button_font_style) {
      stop("`design_controls_button_font_style` must be one of: c('normal', 'italic')")
    } else {
      if (length(jsonlite::fromJSON('{"normal": "normal", "italic": "italic"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"normal": "normal", "italic": "italic"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && design_controls_button_font_style %in% names(named_list)) {
          if (is.logical(design_controls_button_font_style)) {
            design_controls_button_font_style <- as.character(design_controls_button_font_style)
          }
          named_list_value <- unname(named_list[design_controls_button_font_style])[[1]]
          new_list$x$state$design$controls$button$font_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$design$controls$button$border_width <- design_controls_button_border_width
  list_design_controls_button_border_style <- c("solid", "dashed", "dotted", NULL)
  if (!is.null(design_controls_button_border_style)) {
    if (!design_controls_button_border_style %in% list_design_controls_button_border_style) {
      stop("`design_controls_button_border_style` must be one of: c('solid', 'dashed', 'dotted')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && design_controls_button_border_style %in% names(named_list)) {
          if (is.logical(design_controls_button_border_style)) {
            design_controls_button_border_style <- as.character(design_controls_button_border_style)
          }
          named_list_value <- unname(named_list[design_controls_button_border_style])[[1]]
          new_list$x$state$design$controls$button$border_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$design$controls$button$border_color <- design_controls_button_border_color
  new_list$x$state$design$controls$button$border_radius <- design_controls_button_border_radius
  new_list$x$state$design$progress$show <- design_progress_show
  list_design_progress_position <- c("top", "bottom", NULL)
  if (!is.null(design_progress_position)) {
    if (!design_progress_position %in% list_design_progress_position) {
      stop("`design_progress_position` must be one of: c('top', 'bottom')")
    } else {
      if (length(jsonlite::fromJSON('{"top": "top", "bottom": "bottom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"top": "top", "bottom": "bottom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && design_progress_position %in% names(named_list)) {
          if (is.logical(design_progress_position)) {
            design_progress_position <- as.character(design_progress_position)
          }
          named_list_value <- unname(named_list[design_progress_position])[[1]]
          new_list$x$state$design$progress$position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$design$progress$height <- design_progress_height
  new_list$x$state$design$progress$margin <- design_progress_margin
  new_list$x$state$design$progress$bg_color <- design_progress_bg_color
  new_list$x$state$design$progress$bg_opacity <- design_progress_bg_opacity
  new_list$x$state$number_format$prefix <- chart_number_date_format_prefix
  new_list$x$state$number_format$suffix <- chart_number_date_format_suffix
  new_list$x$state$number_format$n_dec <- chart_number_date_format_n_dec
  new_list$x$state$number_format$advanced <- chart_number_date_format_advanced
  list_chart_number_date_format_negative_sign <- c("-$nk", "$-nk", "($nk)", "$(n)k", "none", NULL)
  if (!is.null(chart_number_date_format_negative_sign)) {
    if (!chart_number_date_format_negative_sign %in% list_chart_number_date_format_negative_sign) {
      stop("`chart_number_date_format_negative_sign` must be one of: c('-$nk', '$-nk', '($nk)', '$(n)k', 'none')")
    } else {
      if (length(jsonlite::fromJSON('{"-$nk": "-$nk", "$-nk": "$-nk", "($nk)": "($nk)", "$(n)k": "$(n)k", "none": "none"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"-$nk": "-$nk", "$-nk": "$-nk", "($nk)": "($nk)", "$(n)k": "$(n)k", "none": "none"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_number_date_format_negative_sign %in% names(named_list)) {
          if (is.logical(chart_number_date_format_negative_sign)) {
            chart_number_date_format_negative_sign <- as.character(chart_number_date_format_negative_sign)
          }
          named_list_value <- unname(named_list[chart_number_date_format_negative_sign])[[1]]
          new_list$x$state$number_format$negative_sign <- named_list_value
        }
      }
    }
  }
  new_list$x$state$number_format$strip_zeros <- chart_number_date_format_strip_zeros
  new_list$x$state$number_format$strip_separator <- chart_number_date_format_strip_separator
  new_list$x$state$number_format$transform_labels <- chart_number_date_format_transform_labels
  list_chart_number_date_format_transform <- c("multiply", "divide", "exponentiate", NULL)
  if (!is.null(chart_number_date_format_transform)) {
    if (!chart_number_date_format_transform %in% list_chart_number_date_format_transform) {
      stop("`chart_number_date_format_transform` must be one of: c('multiply', 'divide', 'exponentiate')")
    } else {
      if (length(jsonlite::fromJSON('{"multiply": "multiply", "divide": "divide", "exponentiate": "exponentiate"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"multiply": "multiply", "divide": "divide", "exponentiate": "exponentiate"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_number_date_format_transform %in% names(named_list)) {
          if (is.logical(chart_number_date_format_transform)) {
            chart_number_date_format_transform <- as.character(chart_number_date_format_transform)
          }
          named_list_value <- unname(named_list[chart_number_date_format_transform])[[1]]
          new_list$x$state$number_format$transform <- named_list_value
        }
      }
    }
  }
  new_list$x$state$number_format$multiply_divide_constant <- chart_number_date_format_multiply_divide_constant
  new_list$x$state$number_format$exponentiate_constant <- chart_number_date_format_exponentiate_constant
  list_chart_number_localization_input_decimal_separator <- c(".", ",", NULL)
  if (!is.null(chart_number_localization_input_decimal_separator)) {
    if (!chart_number_localization_input_decimal_separator %in% list_chart_number_localization_input_decimal_separator) {
      stop("`chart_number_localization_input_decimal_separator` must be one of: c('.', ',')")
    } else {
      if (length(jsonlite::fromJSON('{".": ".", ",": ","}')) > 1) {
        named_list <- jsonlite::fromJSON('{".": ".", ",": ","}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_number_localization_input_decimal_separator %in% names(named_list)) {
          if (is.logical(chart_number_localization_input_decimal_separator)) {
            chart_number_localization_input_decimal_separator <- as.character(chart_number_localization_input_decimal_separator)
          }
          named_list_value <- unname(named_list[chart_number_localization_input_decimal_separator])[[1]]
          new_list$x$state$localization$input_decimal_separator <- named_list_value
        }
      }
    }
  }
  list_chart_number_localization_output_separators <- c(",.", ".,", ".", ",", " .", " ,", NULL)
  if (!is.null(chart_number_localization_output_separators)) {
    if (!chart_number_localization_output_separators %in% list_chart_number_localization_output_separators) {
      stop("`chart_number_localization_output_separators` must be one of: c(',.', '.,', '.', ',', ' .', ' ,')")
    } else {
      if (length(jsonlite::fromJSON('{",.": ",.", ".,": ".,", ".": ".", ",": ",", " .": " .", " ,": " ,"}')) > 1) {
        named_list <- jsonlite::fromJSON('{",.": ",.", ".,": ".,", ".": ".", ",": ",", " .": " .", " ,": " ,"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_number_localization_output_separators %in% names(named_list)) {
          if (is.logical(chart_number_localization_output_separators)) {
            chart_number_localization_output_separators <- as.character(chart_number_localization_output_separators)
          }
          named_list_value <- unname(named_list[chart_number_localization_output_separators])[[1]]
          new_list$x$state$localization$output_separators <- named_list_value
        }
      }
    }
  }
  new_list$x$state$external_write$enabled <- external_write_enabled
  new_list$x$state$external_write$endpoint <- external_write_endpoint
  new_list$x$state$layout$body_font <- chart_layout_body_font
  new_list$x$state$layout$font_color <- chart_layout_font_color
  list_chart_layout_background_color_enabled <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_layout_background_color_enabled)) {
    if (!chart_layout_background_color_enabled %in% list_chart_layout_background_color_enabled) {
      stop("`chart_layout_background_color_enabled` must be one of: c(TRUE, FALSE)")
    } else {
      if (length(jsonlite::fromJSON('{"true": true, "false": false}')) > 1) {
        named_list <- jsonlite::fromJSON('{"true": true, "false": false}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_background_color_enabled %in% names(named_list)) {
          if (is.logical(chart_layout_background_color_enabled)) {
            chart_layout_background_color_enabled <- as.character(chart_layout_background_color_enabled)
          }
          named_list_value <- unname(named_list[chart_layout_background_color_enabled])[[1]]
          new_list$x$state$layout$background_color_enabled <- named_list_value
        }
      }
    }
  }
  list_chart_layout_background_image_enabled <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_layout_background_image_enabled)) {
    if (!chart_layout_background_image_enabled %in% list_chart_layout_background_image_enabled) {
      stop("`chart_layout_background_image_enabled` must be one of: c(TRUE, FALSE)")
    } else {
      if (length(jsonlite::fromJSON('{"true": true, "false": false}')) > 1) {
        named_list <- jsonlite::fromJSON('{"true": true, "false": false}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_background_image_enabled %in% names(named_list)) {
          if (is.logical(chart_layout_background_image_enabled)) {
            chart_layout_background_image_enabled <- as.character(chart_layout_background_image_enabled)
          }
          named_list_value <- unname(named_list[chart_layout_background_image_enabled])[[1]]
          new_list$x$state$layout$background_image_enabled <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$background_color <- chart_layout_background_color
  new_list$x$state$layout$background_image_src <- chart_layout_background_image_src
  list_chart_layout_background_image_size <- c("cover", "contain", "auto", "100% 100%", NULL)
  if (!is.null(chart_layout_background_image_size)) {
    if (!chart_layout_background_image_size %in% list_chart_layout_background_image_size) {
      stop("`chart_layout_background_image_size` must be one of: c('cover', 'contain', 'auto', '100% 100%')")
    } else {
      if (length(jsonlite::fromJSON('{"cover": "cover", "contain": "contain", "auto": "auto", "100% 100%": "100% 100%"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"cover": "cover", "contain": "contain", "auto": "auto", "100% 100%": "100% 100%"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_background_image_size %in% names(named_list)) {
          if (is.logical(chart_layout_background_image_size)) {
            chart_layout_background_image_size <- as.character(chart_layout_background_image_size)
          }
          named_list_value <- unname(named_list[chart_layout_background_image_size])[[1]]
          new_list$x$state$layout$background_image_size <- named_list_value
        }
      }
    }
  }
  list_chart_layout_background_image_position <- c("top left", "top center", "top right", "center left", "center center", "center right", "bottom left", "bottom center", "bottom right", NULL)
  if (!is.null(chart_layout_background_image_position)) {
    if (!chart_layout_background_image_position %in% list_chart_layout_background_image_position) {
      stop("`chart_layout_background_image_position` must be one of: c('top left', 'top center', 'top right', 'center left', 'center center', 'center right', 'bottom left', 'bottom center', 'bottom right')")
    } else {
      if (length(jsonlite::fromJSON('{"top left": "top left", "top center": "top center", "top right": "top right", "center left": "center left", "center center": "center center", "center right": "center right", "bottom left": "bottom left", "bottom center": "bottom center", "bottom right": "bottom right"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"top left": "top left", "top center": "top center", "top right": "top right", "center left": "center left", "center center": "center center", "center right": "center right", "bottom left": "bottom left", "bottom center": "bottom center", "bottom right": "bottom right"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_background_image_position %in% names(named_list)) {
          if (is.logical(chart_layout_background_image_position)) {
            chart_layout_background_image_position <- as.character(chart_layout_background_image_position)
          }
          named_list_value <- unname(named_list[chart_layout_background_image_position])[[1]]
          new_list$x$state$layout$background_image_position <- named_list_value
        }
      }
    }
  }
  list_chart_layout_max_width_target <- c("none", "wrapper", "primary", NULL)
  if (!is.null(chart_layout_max_width_target)) {
    if (!chart_layout_max_width_target %in% list_chart_layout_max_width_target) {
      stop("`chart_layout_max_width_target` must be one of: c('none', 'wrapper', 'primary')")
    } else {
      if (length(jsonlite::fromJSON('{"none": "none", "wrapper": "wrapper", "primary": "primary"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"none": "none", "wrapper": "wrapper", "primary": "primary"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_max_width_target %in% names(named_list)) {
          if (is.logical(chart_layout_max_width_target)) {
            chart_layout_max_width_target <- as.character(chart_layout_max_width_target)
          }
          named_list_value <- unname(named_list[chart_layout_max_width_target])[[1]]
          new_list$x$state$layout$max_width_target <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$max_width <- chart_layout_max_width
  list_chart_layout_max_width_align <- c("left", "center", "right", NULL)
  if (!is.null(chart_layout_max_width_align)) {
    if (!chart_layout_max_width_align %in% list_chart_layout_max_width_align) {
      stop("`chart_layout_max_width_align` must be one of: c('left', 'center', 'right')")
    } else {
      if (length(jsonlite::fromJSON('{"left": "left", "center": "center", "right": "right"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"left": "left", "center": "center", "right": "right"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_max_width_align %in% names(named_list)) {
          if (is.logical(chart_layout_max_width_align)) {
            chart_layout_max_width_align <- as.character(chart_layout_max_width_align)
          }
          named_list_value <- unname(named_list[chart_layout_max_width_align])[[1]]
          new_list$x$state$layout$max_width_align <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$layout_order <- chart_layout_layout_order
  list_chart_layout_space_between_sections <- c("0.5", "1", "1.5", "custom", NULL)
  if (!is.null(chart_layout_space_between_sections)) {
    if (!chart_layout_space_between_sections %in% list_chart_layout_space_between_sections) {
      stop("`chart_layout_space_between_sections` must be one of: c('0.5', '1', '1.5', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"0.5": "0.5", "1": "1", "1.5": "1.5", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"0.5": "0.5", "1": "1", "1.5": "1.5", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_space_between_sections %in% names(named_list)) {
          if (is.logical(chart_layout_space_between_sections)) {
            chart_layout_space_between_sections <- as.character(chart_layout_space_between_sections)
          }
          named_list_value <- unname(named_list[chart_layout_space_between_sections])[[1]]
          new_list$x$state$layout$space_between_sections <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$space_between_sections_custom <- chart_layout_space_between_sections_custom
  new_list$x$state$layout$margin_top <- chart_layout_margin_top
  new_list$x$state$layout$margin_right <- chart_layout_margin_right
  new_list$x$state$layout$margin_bottom <- chart_layout_margin_bottom
  new_list$x$state$layout$margin_left <- chart_layout_margin_left
  new_list$x$state$layout$border$enabled <- chart_layout_border_enabled
  new_list$x$state$layout$border$top$width <- chart_layout_border_top_width
  list_chart_layout_border_top_style <- c("solid", "dashed", "dotted", NULL)
  if (!is.null(chart_layout_border_top_style)) {
    if (!chart_layout_border_top_style %in% list_chart_layout_border_top_style) {
      stop("`chart_layout_border_top_style` must be one of: c('solid', 'dashed', 'dotted')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_border_top_style %in% names(named_list)) {
          if (is.logical(chart_layout_border_top_style)) {
            chart_layout_border_top_style <- as.character(chart_layout_border_top_style)
          }
          named_list_value <- unname(named_list[chart_layout_border_top_style])[[1]]
          new_list$x$state$layout$border$top$style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$border$top$color <- chart_layout_border_top_color
  new_list$x$state$layout$border$right$width <- chart_layout_border_right_width
  list_chart_layout_border_right_style <- c("solid", "dashed", "dotted", NULL)
  if (!is.null(chart_layout_border_right_style)) {
    if (!chart_layout_border_right_style %in% list_chart_layout_border_right_style) {
      stop("`chart_layout_border_right_style` must be one of: c('solid', 'dashed', 'dotted')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_border_right_style %in% names(named_list)) {
          if (is.logical(chart_layout_border_right_style)) {
            chart_layout_border_right_style <- as.character(chart_layout_border_right_style)
          }
          named_list_value <- unname(named_list[chart_layout_border_right_style])[[1]]
          new_list$x$state$layout$border$right$style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$border$right$color <- chart_layout_border_right_color
  new_list$x$state$layout$border$bottom$width <- chart_layout_border_bottom_width
  list_chart_layout_border_bottom_style <- c("solid", "dashed", "dotted", NULL)
  if (!is.null(chart_layout_border_bottom_style)) {
    if (!chart_layout_border_bottom_style %in% list_chart_layout_border_bottom_style) {
      stop("`chart_layout_border_bottom_style` must be one of: c('solid', 'dashed', 'dotted')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_border_bottom_style %in% names(named_list)) {
          if (is.logical(chart_layout_border_bottom_style)) {
            chart_layout_border_bottom_style <- as.character(chart_layout_border_bottom_style)
          }
          named_list_value <- unname(named_list[chart_layout_border_bottom_style])[[1]]
          new_list$x$state$layout$border$bottom$style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$border$bottom$color <- chart_layout_border_bottom_color
  new_list$x$state$layout$border$left$width <- chart_layout_border_left_width
  list_chart_layout_border_left_style <- c("solid", "dashed", "dotted", NULL)
  if (!is.null(chart_layout_border_left_style)) {
    if (!chart_layout_border_left_style %in% list_chart_layout_border_left_style) {
      stop("`chart_layout_border_left_style` must be one of: c('solid', 'dashed', 'dotted')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_border_left_style %in% names(named_list)) {
          if (is.logical(chart_layout_border_left_style)) {
            chart_layout_border_left_style <- as.character(chart_layout_border_left_style)
          }
          named_list_value <- unname(named_list[chart_layout_border_left_style])[[1]]
          new_list$x$state$layout$border$left$style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$border$left$color <- chart_layout_border_left_color
  list_chart_layout_read_direction <- c("ltr", "rtl", NULL)
  if (!is.null(chart_layout_read_direction)) {
    if (!chart_layout_read_direction %in% list_chart_layout_read_direction) {
      stop("`chart_layout_read_direction` must be one of: c('ltr', 'rtl')")
    } else {
      if (length(jsonlite::fromJSON('{"ltr": "ltr", "rtl": "rtl"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"ltr": "ltr", "rtl": "rtl"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_read_direction %in% names(named_list)) {
          if (is.logical(chart_layout_read_direction)) {
            chart_layout_read_direction <- as.character(chart_layout_read_direction)
          }
          named_list_value <- unname(named_list[chart_layout_read_direction])[[1]]
          new_list$x$state$layout$read_direction <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$font_size_mobile_small <- chart_layout_font_size_mobile_small
  new_list$x$state$layout$font_size_mobile_big <- chart_layout_font_size_mobile_big
  new_list$x$state$layout$font_size_tablet <- chart_layout_font_size_tablet
  new_list$x$state$layout$font_size_desktop <- chart_layout_font_size_desktop
  new_list$x$state$layout$font_size_big_screen <- chart_layout_font_size_big_screen
  new_list$x$state$layout$breakpoint_mobile_small <- chart_layout_breakpoint_mobile_small
  new_list$x$state$layout$breakpoint_mobile_big <- chart_layout_breakpoint_mobile_big
  new_list$x$state$layout$breakpoint_tablet <- chart_layout_breakpoint_tablet
  new_list$x$state$layout$breakpoint_desktop <- chart_layout_breakpoint_desktop
  new_list$x$state$layout$breakpoint_big_screen <- chart_layout_breakpoint_big_screen
  list_chart_layout_header_align <- c("left", "center", "right", NULL)
  if (!is.null(chart_layout_header_align)) {
    if (!chart_layout_header_align %in% list_chart_layout_header_align) {
      stop("`chart_layout_header_align` must be one of: c('left', 'center', 'right')")
    } else {
      if (length(jsonlite::fromJSON('{"left": "left", "center": "center", "right": "right"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"left": "left", "center": "center", "right": "right"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_header_align %in% names(named_list)) {
          if (is.logical(chart_layout_header_align)) {
            chart_layout_header_align <- as.character(chart_layout_header_align)
          }
          named_list_value <- unname(named_list[chart_layout_header_align])[[1]]
          new_list$x$state$layout$header_align <- named_list_value
        }
      }
    }
  }
  if (length(chart_layout_title) > 1) {
    new_list$x$state$layout$title <- paste(chart_layout_title, collapse = "\n")
  } else {
    new_list$x$state$layout$title <- chart_layout_title
  }

  new_list$x$state$layout$title_styling <- chart_layout_title_styling
  new_list$x$state$layout$title_font <- chart_layout_title_font
  list_chart_layout_title_size <- c("1.4", "1.6", "2", "custom", NULL)
  if (!is.null(chart_layout_title_size)) {
    if (!chart_layout_title_size %in% list_chart_layout_title_size) {
      stop("`chart_layout_title_size` must be one of: c('1.4', '1.6', '2', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"1.4": "1.4", "1.6": "1.6", "2": "2", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"1.4": "1.4", "1.6": "1.6", "2": "2", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_title_size %in% names(named_list)) {
          if (is.logical(chart_layout_title_size)) {
            chart_layout_title_size <- as.character(chart_layout_title_size)
          }
          named_list_value <- unname(named_list[chart_layout_title_size])[[1]]
          new_list$x$state$layout$title_size <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$title_size_custom <- chart_layout_title_size_custom
  list_chart_layout_title_weight <- c("bold", "normal", NULL)
  if (!is.null(chart_layout_title_weight)) {
    if (!chart_layout_title_weight %in% list_chart_layout_title_weight) {
      stop("`chart_layout_title_weight` must be one of: c('bold', 'normal')")
    } else {
      if (length(jsonlite::fromJSON('{"bold": "bold", "normal": "normal"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"bold": "bold", "normal": "normal"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_title_weight %in% names(named_list)) {
          if (is.logical(chart_layout_title_weight)) {
            chart_layout_title_weight <- as.character(chart_layout_title_weight)
          }
          named_list_value <- unname(named_list[chart_layout_title_weight])[[1]]
          new_list$x$state$layout$title_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$title_color <- chart_layout_title_color
  new_list$x$state$layout$title_line_height <- chart_layout_title_line_height
  list_chart_layout_title_space_above <- c("0", "0.5", "1", "custom", NULL)
  if (!is.null(chart_layout_title_space_above)) {
    if (!chart_layout_title_space_above %in% list_chart_layout_title_space_above) {
      stop("`chart_layout_title_space_above` must be one of: c('0', '0.5', '1', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"0": "0", "0.5": "0.5", "1": "1", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"0": "0", "0.5": "0.5", "1": "1", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_title_space_above %in% names(named_list)) {
          if (is.logical(chart_layout_title_space_above)) {
            chart_layout_title_space_above <- as.character(chart_layout_title_space_above)
          }
          named_list_value <- unname(named_list[chart_layout_title_space_above])[[1]]
          new_list$x$state$layout$title_space_above <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$title_space_above_custom <- chart_layout_title_space_above_custom
  if (length(chart_layout_subtitle) > 1) {
    new_list$x$state$layout$subtitle <- paste(chart_layout_subtitle, collapse = "\n")
  } else {
    new_list$x$state$layout$subtitle <- chart_layout_subtitle
  }

  new_list$x$state$layout$subtitle_styling <- chart_layout_subtitle_styling
  new_list$x$state$layout$subtitle_font <- chart_layout_subtitle_font
  list_chart_layout_subtitle_size <- c("1.4", "1.6", "2", "custom", NULL)
  if (!is.null(chart_layout_subtitle_size)) {
    if (!chart_layout_subtitle_size %in% list_chart_layout_subtitle_size) {
      stop("`chart_layout_subtitle_size` must be one of: c('1.4', '1.6', '2', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"1.4": "1.4", "1.6": "1.6", "2": "2", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"1.4": "1.4", "1.6": "1.6", "2": "2", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_subtitle_size %in% names(named_list)) {
          if (is.logical(chart_layout_subtitle_size)) {
            chart_layout_subtitle_size <- as.character(chart_layout_subtitle_size)
          }
          named_list_value <- unname(named_list[chart_layout_subtitle_size])[[1]]
          new_list$x$state$layout$subtitle_size <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$subtitle_size_custom <- chart_layout_subtitle_size_custom
  list_chart_layout_subtitle_weight <- c("bold", "normal", NULL)
  if (!is.null(chart_layout_subtitle_weight)) {
    if (!chart_layout_subtitle_weight %in% list_chart_layout_subtitle_weight) {
      stop("`chart_layout_subtitle_weight` must be one of: c('bold', 'normal')")
    } else {
      if (length(jsonlite::fromJSON('{"bold": "bold", "normal": "normal"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"bold": "bold", "normal": "normal"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_subtitle_weight %in% names(named_list)) {
          if (is.logical(chart_layout_subtitle_weight)) {
            chart_layout_subtitle_weight <- as.character(chart_layout_subtitle_weight)
          }
          named_list_value <- unname(named_list[chart_layout_subtitle_weight])[[1]]
          new_list$x$state$layout$subtitle_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$subtitle_color <- chart_layout_subtitle_color
  new_list$x$state$layout$subtitle_line_height <- chart_layout_subtitle_line_height
  list_chart_layout_subtitle_space_above <- c("0", "0.5", "1", "custom", NULL)
  if (!is.null(chart_layout_subtitle_space_above)) {
    if (!chart_layout_subtitle_space_above %in% list_chart_layout_subtitle_space_above) {
      stop("`chart_layout_subtitle_space_above` must be one of: c('0', '0.5', '1', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"0": "0", "0.5": "0.5", "1": "1", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"0": "0", "0.5": "0.5", "1": "1", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_subtitle_space_above %in% names(named_list)) {
          if (is.logical(chart_layout_subtitle_space_above)) {
            chart_layout_subtitle_space_above <- as.character(chart_layout_subtitle_space_above)
          }
          named_list_value <- unname(named_list[chart_layout_subtitle_space_above])[[1]]
          new_list$x$state$layout$subtitle_space_above <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$subtitle_space_above_custom <- chart_layout_subtitle_space_above_custom
  if (length(chart_layout_header_text) > 1) {
    new_list$x$state$layout$header_text <- paste(chart_layout_header_text, collapse = "\n")
  } else {
    new_list$x$state$layout$header_text <- chart_layout_header_text
  }

  new_list$x$state$layout$header_text_styling <- chart_layout_header_text_styling
  list_chart_layout_header_text_size <- c("1.2", "1.4", "1.6", "custom", NULL)
  if (!is.null(chart_layout_header_text_size)) {
    if (!chart_layout_header_text_size %in% list_chart_layout_header_text_size) {
      stop("`chart_layout_header_text_size` must be one of: c('1.2', '1.4', '1.6', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"1.2": "1.2", "1.4": "1.4", "1.6": "1.6", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"1.2": "1.2", "1.4": "1.4", "1.6": "1.6", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_header_text_size %in% names(named_list)) {
          if (is.logical(chart_layout_header_text_size)) {
            chart_layout_header_text_size <- as.character(chart_layout_header_text_size)
          }
          named_list_value <- unname(named_list[chart_layout_header_text_size])[[1]]
          new_list$x$state$layout$header_text_size <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$header_text_size_custom <- chart_layout_header_text_size_custom
  list_chart_layout_header_text_weight <- c("bold", "normal", NULL)
  if (!is.null(chart_layout_header_text_weight)) {
    if (!chart_layout_header_text_weight %in% list_chart_layout_header_text_weight) {
      stop("`chart_layout_header_text_weight` must be one of: c('bold', 'normal')")
    } else {
      if (length(jsonlite::fromJSON('{"bold": "bold", "normal": "normal"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"bold": "bold", "normal": "normal"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_header_text_weight %in% names(named_list)) {
          if (is.logical(chart_layout_header_text_weight)) {
            chart_layout_header_text_weight <- as.character(chart_layout_header_text_weight)
          }
          named_list_value <- unname(named_list[chart_layout_header_text_weight])[[1]]
          new_list$x$state$layout$header_text_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$header_text_color <- chart_layout_header_text_color
  new_list$x$state$layout$header_text_line_height <- chart_layout_header_text_line_height
  list_chart_layout_header_text_space_above <- c("0", "0.5", "1", "custom", NULL)
  if (!is.null(chart_layout_header_text_space_above)) {
    if (!chart_layout_header_text_space_above %in% list_chart_layout_header_text_space_above) {
      stop("`chart_layout_header_text_space_above` must be one of: c('0', '0.5', '1', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"0": "0", "0.5": "0.5", "1": "1", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"0": "0", "0.5": "0.5", "1": "1", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_header_text_space_above %in% names(named_list)) {
          if (is.logical(chart_layout_header_text_space_above)) {
            chart_layout_header_text_space_above <- as.character(chart_layout_header_text_space_above)
          }
          named_list_value <- unname(named_list[chart_layout_header_text_space_above])[[1]]
          new_list$x$state$layout$header_text_space_above <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$header_text_space_above_custom <- chart_layout_header_text_space_above_custom
  list_chart_layout_header_border <- c("top", "bottom", "top_and_bottom", "none", NULL)
  if (!is.null(chart_layout_header_border)) {
    if (!chart_layout_header_border %in% list_chart_layout_header_border) {
      stop("`chart_layout_header_border` must be one of: c('top', 'bottom', 'top_and_bottom', 'none')")
    } else {
      if (length(jsonlite::fromJSON('{"top": "top", "bottom": "bottom", "top_and_bottom": "top_and_bottom", "none": "none"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"top": "top", "bottom": "bottom", "top_and_bottom": "top_and_bottom", "none": "none"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_header_border %in% names(named_list)) {
          if (is.logical(chart_layout_header_border)) {
            chart_layout_header_border <- as.character(chart_layout_header_border)
          }
          named_list_value <- unname(named_list[chart_layout_header_border])[[1]]
          new_list$x$state$layout$header_border <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$header_border_width <- chart_layout_header_border_width
  new_list$x$state$layout$header_border_color <- chart_layout_header_border_color
  list_chart_layout_header_border_style <- c("solid", "dashed", "dotted", NULL)
  if (!is.null(chart_layout_header_border_style)) {
    if (!chart_layout_header_border_style %in% list_chart_layout_header_border_style) {
      stop("`chart_layout_header_border_style` must be one of: c('solid', 'dashed', 'dotted')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_header_border_style %in% names(named_list)) {
          if (is.logical(chart_layout_header_border_style)) {
            chart_layout_header_border_style <- as.character(chart_layout_header_border_style)
          }
          named_list_value <- unname(named_list[chart_layout_header_border_style])[[1]]
          new_list$x$state$layout$header_border_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$header_border_space <- chart_layout_header_border_space
  list_chart_layout_header_logo_enabled <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_layout_header_logo_enabled)) {
    if (!chart_layout_header_logo_enabled %in% list_chart_layout_header_logo_enabled) {
      stop("`chart_layout_header_logo_enabled` must be one of: c(TRUE, FALSE)")
    } else {
      if (length(jsonlite::fromJSON('{"true": true, "false": false}')) > 1) {
        named_list <- jsonlite::fromJSON('{"true": true, "false": false}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_header_logo_enabled %in% names(named_list)) {
          if (is.logical(chart_layout_header_logo_enabled)) {
            chart_layout_header_logo_enabled <- as.character(chart_layout_header_logo_enabled)
          }
          named_list_value <- unname(named_list[chart_layout_header_logo_enabled])[[1]]
          new_list$x$state$layout$header_logo_enabled <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$header_logo_src <- chart_layout_header_logo_src
  new_list$x$state$layout$header_logo_alt <- chart_layout_header_logo_alt
  new_list$x$state$layout$header_logo_link_url <- chart_layout_header_logo_link_url
  new_list$x$state$layout$header_logo_height <- chart_layout_header_logo_height
  list_chart_layout_header_logo_align <- c("inside", "outside", NULL)
  if (!is.null(chart_layout_header_logo_align)) {
    if (!chart_layout_header_logo_align %in% list_chart_layout_header_logo_align) {
      stop("`chart_layout_header_logo_align` must be one of: c('inside', 'outside')")
    } else {
      if (length(jsonlite::fromJSON('{"inside": "inside", "outside": "outside"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"inside": "inside", "outside": "outside"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_header_logo_align %in% names(named_list)) {
          if (is.logical(chart_layout_header_logo_align)) {
            chart_layout_header_logo_align <- as.character(chart_layout_header_logo_align)
          }
          named_list_value <- unname(named_list[chart_layout_header_logo_align])[[1]]
          new_list$x$state$layout$header_logo_align <- named_list_value
        }
      }
    }
  }
  list_chart_layout_header_logo_position_inside <- c("top", "left", "right", NULL)
  if (!is.null(chart_layout_header_logo_position_inside)) {
    if (!chart_layout_header_logo_position_inside %in% list_chart_layout_header_logo_position_inside) {
      stop("`chart_layout_header_logo_position_inside` must be one of: c('top', 'left', 'right')")
    } else {
      if (length(jsonlite::fromJSON('{"top": "top", "left": "left", "right": "right"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"top": "top", "left": "left", "right": "right"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_header_logo_position_inside %in% names(named_list)) {
          if (is.logical(chart_layout_header_logo_position_inside)) {
            chart_layout_header_logo_position_inside <- as.character(chart_layout_header_logo_position_inside)
          }
          named_list_value <- unname(named_list[chart_layout_header_logo_position_inside])[[1]]
          new_list$x$state$layout$header_logo_position_inside <- named_list_value
        }
      }
    }
  }
  list_chart_layout_header_logo_position_outside <- c("left", "right", NULL)
  if (!is.null(chart_layout_header_logo_position_outside)) {
    if (!chart_layout_header_logo_position_outside %in% list_chart_layout_header_logo_position_outside) {
      stop("`chart_layout_header_logo_position_outside` must be one of: c('left', 'right')")
    } else {
      if (length(jsonlite::fromJSON('{"left": "left", "right": "right"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"left": "left", "right": "right"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_header_logo_position_outside %in% names(named_list)) {
          if (is.logical(chart_layout_header_logo_position_outside)) {
            chart_layout_header_logo_position_outside <- as.character(chart_layout_header_logo_position_outside)
          }
          named_list_value <- unname(named_list[chart_layout_header_logo_position_outside])[[1]]
          new_list$x$state$layout$header_logo_position_outside <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$header_logo_margin_top <- chart_layout_header_logo_margin_top
  new_list$x$state$layout$header_logo_margin_right <- chart_layout_header_logo_margin_right
  new_list$x$state$layout$header_logo_margin_bottom <- chart_layout_header_logo_margin_bottom
  new_list$x$state$layout$header_logo_margin_left <- chart_layout_header_logo_margin_left
  list_chart_layout_footer_align <- c("left", "center", "right", "justify", NULL)
  if (!is.null(chart_layout_footer_align)) {
    if (!chart_layout_footer_align %in% list_chart_layout_footer_align) {
      stop("`chart_layout_footer_align` must be one of: c('left', 'center', 'right', 'justify')")
    } else {
      if (length(jsonlite::fromJSON('{"left": "left", "center": "center", "right": "right", "justify": "justify"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"left": "left", "center": "center", "right": "right", "justify": "justify"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_footer_align %in% names(named_list)) {
          if (is.logical(chart_layout_footer_align)) {
            chart_layout_footer_align <- as.character(chart_layout_footer_align)
          }
          named_list_value <- unname(named_list[chart_layout_footer_align])[[1]]
          new_list$x$state$layout$footer_align <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$footer_text_size <- chart_layout_footer_text_size
  new_list$x$state$layout$footer_text_color <- chart_layout_footer_text_color
  new_list$x$state$layout$footer_styling <- chart_layout_footer_styling
  new_list$x$state$layout$footer_font <- chart_layout_footer_font
  list_chart_layout_footer_text_weight <- c("bold", "normal", NULL)
  if (!is.null(chart_layout_footer_text_weight)) {
    if (!chart_layout_footer_text_weight %in% list_chart_layout_footer_text_weight) {
      stop("`chart_layout_footer_text_weight` must be one of: c('bold', 'normal')")
    } else {
      if (length(jsonlite::fromJSON('{"bold": "bold", "normal": "normal"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"bold": "bold", "normal": "normal"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_footer_text_weight %in% names(named_list)) {
          if (is.logical(chart_layout_footer_text_weight)) {
            chart_layout_footer_text_weight <- as.character(chart_layout_footer_text_weight)
          }
          named_list_value <- unname(named_list[chart_layout_footer_text_weight])[[1]]
          new_list$x$state$layout$footer_text_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$source_name <- chart_layout_source_name
  new_list$x$state$layout$source_url <- chart_layout_source_url
  new_list$x$state$layout$multiple_sources <- chart_layout_multiple_sources
  new_list$x$state$layout$source_name_2 <- chart_layout_source_name_2
  new_list$x$state$layout$source_url_2 <- chart_layout_source_url_2
  new_list$x$state$layout$source_name_3 <- chart_layout_source_name_3
  new_list$x$state$layout$source_url_3 <- chart_layout_source_url_3
  new_list$x$state$layout$source_label <- chart_layout_source_label
  if (length(chart_layout_footer_note) > 1) {
    new_list$x$state$layout$footer_note <- paste(chart_layout_footer_note, collapse = "\n")
  } else {
    new_list$x$state$layout$footer_note <- chart_layout_footer_note
  }

  if (length(chart_layout_footer_note_secondary) > 1) {
    new_list$x$state$layout$footer_note_secondary <- paste(chart_layout_footer_note_secondary, collapse = "\n")
  } else {
    new_list$x$state$layout$footer_note_secondary <- chart_layout_footer_note_secondary
  }

  new_list$x$state$layout$advanced_note_styling <- chart_layout_advanced_note_styling
  list_chart_layout_footer_timestamp_format <- c("%H:%M:%S", "%I:%M %p", "%H:%M", "%H:%M %p", "%H:%M:%S, %d %b %Y", "%H:%M, %d %b %Y", "%H:%M, %d/%m/%Y", "%H:%M, %m/%d/%Y", "%H:%M, %d-%m-%Y", "%H:%M, %m-%d-%Y", "%d %b %Y", "%m/%d/%Y", "%d/%m/%Y", "%m-%d-%Y", "%d-%m-%Y", "%Y-%m-%d", "%Y-%m-%d %H:%M:%S", NULL)
  if (!is.null(chart_layout_footer_timestamp_format)) {
    if (!chart_layout_footer_timestamp_format %in% list_chart_layout_footer_timestamp_format) {
      stop("`chart_layout_footer_timestamp_format` must be one of: c('%H:%M:%S', '%I:%M %p', '%H:%M', '%H:%M %p', '%H:%M:%S, %d %b %Y', '%H:%M, %d %b %Y', '%H:%M, %d/%m/%Y', '%H:%M, %m/%d/%Y', '%H:%M, %d-%m-%Y', '%H:%M, %m-%d-%Y', '%d %b %Y', '%m/%d/%Y', '%d/%m/%Y', '%m-%d-%Y', '%d-%m-%Y', '%Y-%m-%d', '%Y-%m-%d %H:%M:%S')")
    } else {
      if (length(jsonlite::fromJSON('{"%H:%M:%S": "%H:%M:%S", "%I:%M %p": "%I:%M %p", "%H:%M": "%H:%M", "%H:%M %p": "%H:%M %p", "%H:%M:%S, %d %b %Y": "%H:%M:%S, %d %b %Y", "%H:%M, %d %b %Y": "%H:%M, %d %b %Y", "%H:%M, %d/%m/%Y": "%H:%M, %d/%m/%Y", "%H:%M, %m/%d/%Y": "%H:%M, %m/%d/%Y", "%H:%M, %d-%m-%Y": "%H:%M, %d-%m-%Y", "%H:%M, %m-%d-%Y": "%H:%M, %m-%d-%Y", "%d %b %Y": "%d %b %Y", "%m/%d/%Y": "%m/%d/%Y", "%d/%m/%Y": "%d/%m/%Y", "%m-%d-%Y": "%m-%d-%Y", "%d-%m-%Y": "%d-%m-%Y", "%Y-%m-%d": "%Y-%m-%d", "%Y-%m-%d %H:%M:%S": "%Y-%m-%d %H:%M:%S"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"%H:%M:%S": "%H:%M:%S", "%I:%M %p": "%I:%M %p", "%H:%M": "%H:%M", "%H:%M %p": "%H:%M %p", "%H:%M:%S, %d %b %Y": "%H:%M:%S, %d %b %Y", "%H:%M, %d %b %Y": "%H:%M, %d %b %Y", "%H:%M, %d/%m/%Y": "%H:%M, %d/%m/%Y", "%H:%M, %m/%d/%Y": "%H:%M, %m/%d/%Y", "%H:%M, %d-%m-%Y": "%H:%M, %d-%m-%Y", "%H:%M, %m-%d-%Y": "%H:%M, %m-%d-%Y", "%d %b %Y": "%d %b %Y", "%m/%d/%Y": "%m/%d/%Y", "%d/%m/%Y": "%d/%m/%Y", "%m-%d-%Y": "%m-%d-%Y", "%d-%m-%Y": "%d-%m-%Y", "%Y-%m-%d": "%Y-%m-%d", "%Y-%m-%d %H:%M:%S": "%Y-%m-%d %H:%M:%S"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_footer_timestamp_format %in% names(named_list)) {
          if (is.logical(chart_layout_footer_timestamp_format)) {
            chart_layout_footer_timestamp_format <- as.character(chart_layout_footer_timestamp_format)
          }
          named_list_value <- unname(named_list[chart_layout_footer_timestamp_format])[[1]]
          new_list$x$state$layout$footer_timestamp_format <- named_list_value
        }
      }
    }
  }
  list_chart_layout_footer_logo_enabled <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_layout_footer_logo_enabled)) {
    if (!chart_layout_footer_logo_enabled %in% list_chart_layout_footer_logo_enabled) {
      stop("`chart_layout_footer_logo_enabled` must be one of: c(TRUE, FALSE)")
    } else {
      if (length(jsonlite::fromJSON('{"true": true, "false": false}')) > 1) {
        named_list <- jsonlite::fromJSON('{"true": true, "false": false}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_footer_logo_enabled %in% names(named_list)) {
          if (is.logical(chart_layout_footer_logo_enabled)) {
            chart_layout_footer_logo_enabled <- as.character(chart_layout_footer_logo_enabled)
          }
          named_list_value <- unname(named_list[chart_layout_footer_logo_enabled])[[1]]
          new_list$x$state$layout$footer_logo_enabled <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$footer_logo_src <- chart_layout_footer_logo_src
  new_list$x$state$layout$footer_logo_src_light <- chart_layout_footer_logo_src_light
  new_list$x$state$layout$footer_logo_alt <- chart_layout_footer_logo_alt
  new_list$x$state$layout$footer_logo_link_url <- chart_layout_footer_logo_link_url
  new_list$x$state$layout$footer_logo_height <- chart_layout_footer_logo_height
  new_list$x$state$layout$footer_logo_margin <- chart_layout_footer_logo_margin
  list_chart_layout_footer_logo_order <- c("left", "right", NULL)
  if (!is.null(chart_layout_footer_logo_order)) {
    if (!chart_layout_footer_logo_order %in% list_chart_layout_footer_logo_order) {
      stop("`chart_layout_footer_logo_order` must be one of: c('left', 'right')")
    } else {
      if (length(jsonlite::fromJSON('{"left": "left", "right": "right"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"left": "left", "right": "right"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_footer_logo_order %in% names(named_list)) {
          if (is.logical(chart_layout_footer_logo_order)) {
            chart_layout_footer_logo_order <- as.character(chart_layout_footer_logo_order)
          }
          named_list_value <- unname(named_list[chart_layout_footer_logo_order])[[1]]
          new_list$x$state$layout$footer_logo_order <- named_list_value
        }
      }
    }
  }
  list_chart_layout_footer_align_vertical <- c("flex-start", "center", "flex-end", NULL)
  if (!is.null(chart_layout_footer_align_vertical)) {
    if (!chart_layout_footer_align_vertical %in% list_chart_layout_footer_align_vertical) {
      stop("`chart_layout_footer_align_vertical` must be one of: c('flex-start', 'center', 'flex-end')")
    } else {
      if (length(jsonlite::fromJSON('{"flex-start": "flex-start", "center": "center", "flex-end": "flex-end"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"flex-start": "flex-start", "center": "center", "flex-end": "flex-end"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_footer_align_vertical %in% names(named_list)) {
          if (is.logical(chart_layout_footer_align_vertical)) {
            chart_layout_footer_align_vertical <- as.character(chart_layout_footer_align_vertical)
          }
          named_list_value <- unname(named_list[chart_layout_footer_align_vertical])[[1]]
          new_list$x$state$layout$footer_align_vertical <- named_list_value
        }
      }
    }
  }
  list_chart_layout_footer_border <- c("top", "bottom", "top_and_bottom", "none", NULL)
  if (!is.null(chart_layout_footer_border)) {
    if (!chart_layout_footer_border %in% list_chart_layout_footer_border) {
      stop("`chart_layout_footer_border` must be one of: c('top', 'bottom', 'top_and_bottom', 'none')")
    } else {
      if (length(jsonlite::fromJSON('{"top": "top", "bottom": "bottom", "top_and_bottom": "top_and_bottom", "none": "none"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"top": "top", "bottom": "bottom", "top_and_bottom": "top_and_bottom", "none": "none"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_footer_border %in% names(named_list)) {
          if (is.logical(chart_layout_footer_border)) {
            chart_layout_footer_border <- as.character(chart_layout_footer_border)
          }
          named_list_value <- unname(named_list[chart_layout_footer_border])[[1]]
          new_list$x$state$layout$footer_border <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$footer_border_width <- chart_layout_footer_border_width
  new_list$x$state$layout$footer_border_color <- chart_layout_footer_border_color
  list_chart_layout_footer_border_style <- c("solid", "dashed", "dotted", NULL)
  if (!is.null(chart_layout_footer_border_style)) {
    if (!chart_layout_footer_border_style %in% list_chart_layout_footer_border_style) {
      stop("`chart_layout_footer_border_style` must be one of: c('solid', 'dashed', 'dotted')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dashed": "dashed", "dotted": "dotted"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_footer_border_style %in% names(named_list)) {
          if (is.logical(chart_layout_footer_border_style)) {
            chart_layout_footer_border_style <- as.character(chart_layout_footer_border_style)
          }
          named_list_value <- unname(named_list[chart_layout_footer_border_style])[[1]]
          new_list$x$state$layout$footer_border_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$layout$footer_border_space <- chart_layout_footer_border_space
  if (length(chart_layout_screenreader_text_primary) > 1) {
    new_list$x$state$layout$screenreader_text_primary <- paste(chart_layout_screenreader_text_primary, collapse = "\n")
  } else {
    new_list$x$state$layout$screenreader_text_primary <- chart_layout_screenreader_text_primary
  }

  new_list$x$state$layout$screenreader_label <- chart_layout_screenreader_label
  list_chart_layout_screenreader_hide_primary <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_layout_screenreader_hide_primary)) {
    if (!chart_layout_screenreader_hide_primary %in% list_chart_layout_screenreader_hide_primary) {
      stop("`chart_layout_screenreader_hide_primary` must be one of: c(TRUE, FALSE)")
    } else {
      if (length(jsonlite::fromJSON('{"true": true, "false": false}')) > 1) {
        named_list <- jsonlite::fromJSON('{"true": true, "false": false}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_layout_screenreader_hide_primary %in% names(named_list)) {
          if (is.logical(chart_layout_screenreader_hide_primary)) {
            chart_layout_screenreader_hide_primary <- as.character(chart_layout_screenreader_hide_primary)
          }
          named_list_value <- unname(named_list[chart_layout_screenreader_hide_primary])[[1]]
          new_list$x$state$layout$screenreader_hide_primary <- named_list_value
        }
      }
    }
  }
  deep_merge(old_list, new_list)
}
