#' Set draw the line chart chart details
#' @name set_draw_the_line_details
#' @param guess_lines_start Percent to reveal. What percentage of the line to show before a user starts drawing. Flourish type hint: number, defaults to `NULL`
#' @param guess_lines_width Width. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param guess_lines_dot_radius Dot radius. Flourish type hint: number, defaults to `NULL`
#' @param guess_lines_dash Drawing dash size. Only applies to the drawn section of the line. Set to zero for a solid line. Flourish type hint: number, defaults to `NULL`
#' @param fixed_lines_width Width. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param fixed_lines_dot_radius Dot radius. Flourish type hint: number, defaults to `NULL`
#' @param line_curve Live curve. Choices: linear, step, curve. Flourish type hint: string, defaults to `NULL`
#' @param guess_lines_panel_position Position. Choices: top, middle, bottom. Flourish type hint: string, defaults to `NULL`
#' @param message_styling Styling. Flourish type hint: boolean, defaults to `NULL`
#' @param message_background Background. Flourish type hint: color, defaults to `NULL`
#' @param message_opacity Opacity. Flourish type hint: number, defaults to `NULL`
#' @param message_color Font color. Flourish type hint: color, defaults to `NULL`
#' @param message_font_size Font size. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param message_border Border color. Flourish type hint: color, defaults to `NULL`
#' @param message_border_width Border width. In pixels. Flourish type hint: number, defaults to `NULL`
#' @param message_border_radius Border radius. In rems, a multiple of the panels font size. Flourish type hint: number, defaults to `NULL`
#' @param message_shadow Drop shadow. Flourish type hint: boolean, defaults to `NULL`
#' @param guess_lines_message_text Text. Include `{{LINE}}` to show the lines name, in color. Flourish type hint: string, defaults to `NULL`
#' @param scores_3_min % error. Specified as the maximum percentage error allowed, relative to the total Y axis. Flourish type hint: number, defaults to `NULL`
#' @param scores_3_text Text. Use `{{DIFF}}` to show the average gap from the users guess to the real data point. Flourish type hint: string, defaults to `NULL`
#' @param scores_2_min % error. Specified as the maximum percentage error allowed, relative to the total Y axis. Flourish type hint: number, defaults to `NULL`
#' @param scores_2_text Text. Flourish type hint: string, defaults to `NULL`
#' @param scores_1_min % error. Specified as the maximum percentage error allowed, relative to the total Y axis. Flourish type hint: number, defaults to `NULL`
#' @param scores_1_text Text. Flourish type hint: string, defaults to `NULL`
#' @param scores_0_text Text. Flourish type hint: string, defaults to `NULL`
#' @param guess_lines_submit_text Text. In rems, a multiple of the pages base font size. Flourish type hint: string, defaults to `NULL`
#' @param submit_styling Styling. Flourish type hint: boolean, defaults to `NULL`
#' @param submit_background Background. Flourish type hint: color, defaults to `NULL`
#' @param submit_opacity Opacity. Flourish type hint: number, defaults to `NULL`
#' @param submit_color Font color. Flourish type hint: color, defaults to `NULL`
#' @param submit_font_size Font size. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param submit_border Border colour. Flourish type hint: color, defaults to `NULL`
#' @param submit_border_width Border width. In pixels. Flourish type hint: number, defaults to `NULL`
#' @param submit_border_radius Border radius. In ems a multiple of the panels font size. Flourish type hint: number, defaults to `NULL`
#' @param submit_shadow Drop shadow. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_color_scale_categorical_palette Palette. Flourish type hint: colors, defaults to `NULL`
#' @param chart_color_scale_categorical_extend Extend. Automatically generate additional colours when needed to avoid the palette colours being used more than once. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_color_scale_categorical_custom_palette Custom overrides. Enter the label name for which you wish to set the color, followed by a colon and the desired color value.  Colors can be set using Hex, RGB, color names or RGBA, if you want to set the opacity Multiple colors can be set using multiple lines. For example:  Party 1: red Party 2: #4455AA Party 3: rgb(30,168,26). Flourish type hint: text, defaults to `NULL`
#' @param chart_color_scale_numeric_type Scale type. Choices: sequential, diverging. Flourish type hint: string, defaults to `NULL`
#' @param chart_color_scale_binning Choices: `FALSE`, `TRUE`. In linear mode, the color scale will run as a smooth gradient between 2 colors. In binned mode, the gradient will be divided in smaller blocks. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_color_scale_bin_mode Binning mode. Choices: fixed, quantile, custom. Flourish type hint: string, defaults to `NULL`
#' @param chart_color_scale_bin_count Number of bins. Flourish type hint: number, defaults to `NULL`
#' @param chart_color_scale_bin_thresholds Custom thresholds. Enter your desired thresholds, separating them with a ";". For instance, "5;10;15".  Bins form as follows:  From the datas minimum value (domain minimum) up to the first threshold.  Between consecutive thresholds.  From the last threshold to the datas maximum value (domain maximum).   For "5;10;15", youll get four bins based on your datas range. Flourish type hint: string, defaults to `NULL`
#' @param chart_color_scale_sequential_palette Palette. Flourish type hint: string, defaults to `NULL`
#' @param chart_color_scale_sequential_reverse Reverse. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_color_scale_sequential_custom_min Minimum color. Flourish type hint: color, defaults to `NULL`
#' @param chart_color_scale_sequential_custom_max Maximum color. Flourish type hint: color, defaults to `NULL`
#' @param chart_color_scale_sequential_color_space Color space. Choices: rgb, lab, hcl, hsl. Flourish type hint: string, defaults to `NULL`
#' @param chart_color_scale_sequential_custom_domain Domain. Choices: `FALSE`, `TRUE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_color_scale_sequential_domain_min Min. Flourish type hint: number, defaults to `NULL`
#' @param chart_color_scale_sequential_domain_max Max. Flourish type hint: number, defaults to `NULL`
#' @param chart_color_scale_diverging_palette Palette. Flourish type hint: string, defaults to `NULL`
#' @param chart_color_scale_diverging_reverse Reverse. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_color_scale_diverging_custom_min Minimum color. Flourish type hint: color, defaults to `NULL`
#' @param chart_color_scale_diverging_custom_mid Midpoint color. Flourish type hint: color, defaults to `NULL`
#' @param chart_color_scale_diverging_custom_max Maximum color. Flourish type hint: color, defaults to `NULL`
#' @param chart_color_scale_diverging_color_space Color space. Choices: rgb, lab, hcl, hsl. Flourish type hint: string, defaults to `NULL`
#' @param chart_color_scale_diverging_custom_domain Domain. Choices: `FALSE`, `TRUE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_color_scale_diverging_domain_min Min. Flourish type hint: number, defaults to `NULL`
#' @param chart_color_scale_diverging_domain_mid Mid. Flourish type hint: number, defaults to `NULL`
#' @param chart_color_scale_diverging_domain_max Max. Flourish type hint: number, defaults to `NULL`
#' @param chart_categorical_legend_show_legend Legend mode. Choices: `TRUE`, `FALSE`. A legend will not show with a single entry. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_categorical_legend_title_mode Title mode. Choices: auto, custom. Flourish type hint: string, defaults to `NULL`
#' @param chart_categorical_legend_title Title. Flourish type hint: string, defaults to `NULL`
#' @param chart_categorical_legend_swatch_width Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_categorical_legend_swatch_height Height. Flourish type hint: number, defaults to `NULL`
#' @param chart_categorical_legend_swatch_radius Roundness. The radius of the corners of the swatch (in pixels). Flourish type hint: number, defaults to `NULL`
#' @param chart_categorical_legend_legend_items_padding Padding. Padding between legend items ( in rems ). Flourish type hint: number, defaults to `NULL`
#' @param chart_categorical_legend_swatch_outline Outline. An optional outline for the swatch in the legend. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_categorical_legend_swatch_outline_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_categorical_legend_order_override Custom order override. Manually specify the order of legend entries (one entry per line). Flourish type hint: text, defaults to `NULL`
#' @param chart_categorical_legend_icon_height Height. Height of icon ( in rems ). Flourish type hint: number, defaults to `NULL`
#' @param chart_categorical_legend_icon_color Color. Fallback color (icon color if not determined by template). Flourish type hint: color, defaults to `NULL`
#' @param chart_categorical_legend_max_width Max width. Flourish type hint: number, defaults to `NULL`
#' @param chart_categorical_legend_orientation Orientation. Choices: horizontal, vertical. Flourish type hint: string, defaults to `NULL`
#' @param chart_legend_container_alignment Alignment. Choices: start, center, end. Flourish type hint: string, defaults to `NULL`
#' @param chart_legend_container_orientation Orientation. Choices: horizontal, vertical. Flourish type hint: string, defaults to `NULL`
#' @param chart_legend_container_title_weight Title weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_legend_container_text_weight Text weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_legend_container_text_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_legend_container_text_size Size. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_axis_position Position. Choices: bottom, float-below, float-above, top, off. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_y_axis_position Y value. Vertical position of the X axis on the Y scale. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_numeric_scale_type Type. Choices: linear, log. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_linear_min Min. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_linear_max Max. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_log_min Min. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_log_max Max. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_datetime_min Min (date). Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_datetime_max Max (date). Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_flip Flip axis. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_x_axis_show_scale_settings Configure default min/max. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_x_axis_nice Round min/max. Choices: `TRUE`, `FALSE`. Enabling this option rounds the X axis start and end values to tidy numbers, such as 0, 50, 100 or whole years. Specified min and max values will override this feature. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_x_axis_zero_axis Include zero. Choices: auto, on, off. Enable to extend the axis to include zero, even when data is all positive or all negative. This is ignored if you set specific min and max scale values. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_title_mode Type. Choices: auto, custom. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_title Text. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_title_styling Styling. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_x_axis_title_weight Weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_title_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_x_axis_title_size Size. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_title_padding Padding. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_tick_label_position Position. Choices: default, left, right. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_tick_label_styling Styling. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_x_axis_tick_label_size Size. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_tick_label_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_x_axis_tick_padding Padding. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_tick_label_angle Angle. Choices: 0, 30, 45, 60, 90. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_tick_label_weight Weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_tick_label_max_lines Max lines. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_tick_label_line_height Line height. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_tick_label_space_mode Space mode. Choices: auto, max, fixed. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_tick_label_space Space. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_tick_mode Mode. Choices: auto, number, custom. Sets the method for selecting tick values on the axis:  Auto automatically selects the ticks  Number allows you to choose the number of ticks to display.  Custom lets you select specific ticks to show.  Note: If the axis is categorical, Number mode is ignored. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_tick_number Number. Approximate number of ticks or gridlines. The actual number will depend on the range of values, chart size, etc. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_tick_custom One tick label per line. Specify the ticks to show, one per line. For dates, use the input format as specified in the datasheet.  You can also use `{{FIRST}}` and `{{LAST}}` to add ticks at the minimum and maximum of the axis. For example:  `{{FIRST}}` 25000 50000 75000 `{{LAST}}`. Flourish type hint: text, defaults to `NULL`
#' @param chart_x_axis_line_and_tick_color Line color. Flourish type hint: color, defaults to `NULL`
#' @param chart_x_axis_line_and_tick_width Line width. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_tick_length Tick length. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_tick_side Tick side. Choices: out, in. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_line_visible Axis line. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_x_axis_edge_padding Edge padding (%). Space between start/end of axis line and first/last category tick as a percentage of the spacing between ticks. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_gridlines_visible Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_x_axis_gridlines_styling Styling. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_x_axis_gridline_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_x_axis_gridline_style Style. Choices: solid, dash, dot, dot_dash. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_gridline_width Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_gridline_category_dividers Put lines between categories. On a categorical axis, this option disables the gridline on each tick and instead adds rules between each category to give a table-like design. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_x_axis_gridline_category_dividers_extend Extend. Extends the dividers into the axis margins. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_y_axis_axis_visible Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_y_axis_numeric_scale_type Type. Choices: linear, log. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_linear_min Min. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_linear_max Max. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_log_min Min. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_log_max Max. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_datetime_min Min (date). Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_datetime_max Max (date). Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_flip Flip axis. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_y_axis_show_scale_settings Configure default min/max. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_y_axis_nice Round min/max. Choices: `TRUE`, `FALSE`. When enabled, scales automatically extend to "nice" rounded start/end values, such as hundreds or whole years. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_y_axis_zero_axis Include zero. Choices: auto, on, off. Whether to extend the axis to include zero if the data values are all positive or all negative. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_title_mode Type. Choices: auto, custom. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_title Text. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_title_styling Styling. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_y_axis_title_position Position. Choices: side, end. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_title_weight Weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_title_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_y_axis_title_size Size. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_title_padding Padding. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_tick_label_position Position. Choices: default, above, below. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_tick_label_styling Styling. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_y_axis_tick_label_size Size. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_tick_label_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_y_axis_tick_padding Padding. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_tick_label_angle Angle. Choices: 0, 30, 45, 60, 90. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_tick_label_weight Weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_tick_label_max_lines Max lines. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_tick_label_line_height Line height. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_tick_label_space_mode Space mode. Choices: auto, max, fixed. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_tick_label_space Space. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_tick_mode Mode. Choices: auto, number, custom. Sets the method for selecting tick values on the axis:  Auto automatically selects the ticks  Number allows you to choose the number of ticks to display.  Custom lets you select specific ticks to show.  Note: If the axis is categorical, Number mode is ignored. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_tick_number Number. Approximate number of ticks or gridlines. The actual number will depend on the range of values, chart size, etc. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_tick_custom One tick label per line. Specify the ticks to show, one per line. For dates, use the input format as specified in the datasheet.  You can also use `{{FIRST}}` and `{{LAST}}` to add ticks at the minimum and maximum of the axis. For example:  `{{FIRST}}` 25000 50000 75000 `{{LAST}}`. Flourish type hint: text, defaults to `NULL`
#' @param chart_y_axis_line_and_tick_color Line color. Flourish type hint: color, defaults to `NULL`
#' @param chart_y_axis_line_and_tick_width Line width. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_tick_length Tick length. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_tick_side Side. Choices: out, in. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_line_visible Axis line. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_y_axis_edge_padding Edge padding (%). Space between start/end of axis line and first/last category tick as a percentage of the spacing between ticks. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_gridlines_visible Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_y_axis_gridlines_styling Styling. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_y_axis_gridline_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_y_axis_gridline_style Style. Choices: solid, dash, dot, dot_dash. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_gridline_width Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_gridline_category_dividers Put lines between categories. On a categorical axis, this option disables the gridline on each tick and instead adds rules between each category to give a table-like design. Ignored for date and numeric axes. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_y_axis_gridline_category_dividers_extend Extend. Extends the dividers into the axis margins. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_background_background_color_enabled Color. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_background_background_image_enabled Image. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_background_background_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_background_background_image_src Image URL. Flourish type hint: url, defaults to `NULL`
#' @param chart_background_background_image_size Size. Choices: stretch, slice, meet. Flourish type hint: string, defaults to `NULL`
#' @param chart_background_background_image_position Position. Choices: x_min_y_min, x_mid_y_min, x_max_y_min, x_max_y_mid, x_mid_y_mid, x_min_y_max, x_mid_y_max, x_max_y_max. Flourish type hint: string, defaults to `NULL`
#' @param datetime_input_format Format in data sheet. Choices: auto, %Y-%m-%dT%H:%M:%S.%LZ, %Y-%m-%d, %m/%d/%Y, %d/%m/%Y, %d-%b-%y, %m/%Y, %m/%y, %b %Y, %b %y, %B %d, %d %b, %Y, %y, %B, %b, %H:%M:%S, %I:%M %p, %H:%M. The date/time format in the datasheet. Leave as Auto for Flourish to make a best guess. If it isnt in the list, you can enter a custom format using d3-time-format syntax. See NPM d3-data-format for details. Flourish type hint: string, defaults to `NULL`
#' @param date_format Display format. Choices: auto, %Y-%m-%dT%H:%M:%S.%LZ, %Y-%m-%d, %m/%d/%Y, %d/%m/%Y, %d-%b-%y, %m/%Y, %m/%y, %b %Y, %b %y, %B %d, %d %b, %Y, %y, %B, %b, %A, %a, %H:%M:%S, %I:%M %p, %H:%M. The date/time format to show in the graphic. If it isnt in the list, you can enter a custom format using d3-time-format syntax. See NPM d3-data-format for details. Flourish type hint: string, defaults to `NULL`
#' @param chart_number_localization_input_decimal_separator Decimal separator in data sheet. Choices: ., ,. Used for interpreting your data. Only change if data is not displaying on the chart as expected. Flourish type hint: string, defaults to `NULL`
#' @param chart_number_localization_output_separators Number format to display. Choices: ,., .,, ., ,, ., ,. How the numbers should appear on chart labels. Flourish type hint: string, defaults to `NULL`
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
#'   flourish(chart_type = "draw_the_line", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_draw_the_line_data(gapminder) |> 
#'   set_draw_the_line_details()
#' )
#' @export

set_draw_the_line_details <- function(
    .,
    guess_lines_start = NULL,
    guess_lines_width = NULL,
    guess_lines_dot_radius = NULL,
    guess_lines_dash = NULL,
    fixed_lines_width = NULL,
    fixed_lines_dot_radius = NULL,
    line_curve = NULL,
    guess_lines_panel_position = NULL,
    message_styling = NULL,
    message_background = NULL,
    message_opacity = NULL,
    message_color = NULL,
    message_font_size = NULL,
    message_border = NULL,
    message_border_width = NULL,
    message_border_radius = NULL,
    message_shadow = NULL,
    guess_lines_message_text = NULL,
    scores_3_min = NULL,
    scores_3_text = NULL,
    scores_2_min = NULL,
    scores_2_text = NULL,
    scores_1_min = NULL,
    scores_1_text = NULL,
    scores_0_text = NULL,
    guess_lines_submit_text = NULL,
    submit_styling = NULL,
    submit_background = NULL,
    submit_opacity = NULL,
    submit_color = NULL,
    submit_font_size = NULL,
    submit_border = NULL,
    submit_border_width = NULL,
    submit_border_radius = NULL,
    submit_shadow = NULL,
    chart_color_scale_categorical_palette = NULL,
    chart_color_scale_categorical_extend = NULL,
    chart_color_scale_categorical_custom_palette = NULL,
    chart_color_scale_numeric_type = NULL,
    chart_color_scale_binning = NULL,
    chart_color_scale_bin_mode = NULL,
    chart_color_scale_bin_count = NULL,
    chart_color_scale_bin_thresholds = NULL,
    chart_color_scale_sequential_palette = NULL,
    chart_color_scale_sequential_reverse = NULL,
    chart_color_scale_sequential_custom_min = NULL,
    chart_color_scale_sequential_custom_max = NULL,
    chart_color_scale_sequential_color_space = NULL,
    chart_color_scale_sequential_custom_domain = NULL,
    chart_color_scale_sequential_domain_min = NULL,
    chart_color_scale_sequential_domain_max = NULL,
    chart_color_scale_diverging_palette = NULL,
    chart_color_scale_diverging_reverse = NULL,
    chart_color_scale_diverging_custom_min = NULL,
    chart_color_scale_diverging_custom_mid = NULL,
    chart_color_scale_diverging_custom_max = NULL,
    chart_color_scale_diverging_color_space = NULL,
    chart_color_scale_diverging_custom_domain = NULL,
    chart_color_scale_diverging_domain_min = NULL,
    chart_color_scale_diverging_domain_mid = NULL,
    chart_color_scale_diverging_domain_max = NULL,
    chart_categorical_legend_show_legend = NULL,
    chart_categorical_legend_title_mode = NULL,
    chart_categorical_legend_title = NULL,
    chart_categorical_legend_swatch_width = NULL,
    chart_categorical_legend_swatch_height = NULL,
    chart_categorical_legend_swatch_radius = NULL,
    chart_categorical_legend_legend_items_padding = NULL,
    chart_categorical_legend_swatch_outline = NULL,
    chart_categorical_legend_swatch_outline_color = NULL,
    chart_categorical_legend_order_override = NULL,
    chart_categorical_legend_icon_height = NULL,
    chart_categorical_legend_icon_color = NULL,
    chart_categorical_legend_max_width = NULL,
    chart_categorical_legend_orientation = NULL,
    chart_legend_container_alignment = NULL,
    chart_legend_container_orientation = NULL,
    chart_legend_container_title_weight = NULL,
    chart_legend_container_text_weight = NULL,
    chart_legend_container_text_color = NULL,
    chart_legend_container_text_size = NULL,
    chart_x_axis_axis_position = NULL,
    chart_x_axis_y_axis_position = NULL,
    chart_x_axis_numeric_scale_type = NULL,
    chart_x_axis_linear_min = NULL,
    chart_x_axis_linear_max = NULL,
    chart_x_axis_log_min = NULL,
    chart_x_axis_log_max = NULL,
    chart_x_axis_datetime_min = NULL,
    chart_x_axis_datetime_max = NULL,
    chart_x_axis_flip = NULL,
    chart_x_axis_show_scale_settings = NULL,
    chart_x_axis_nice = NULL,
    chart_x_axis_zero_axis = NULL,
    chart_x_axis_title_mode = NULL,
    chart_x_axis_title = NULL,
    chart_x_axis_title_styling = NULL,
    chart_x_axis_title_weight = NULL,
    chart_x_axis_title_color = NULL,
    chart_x_axis_title_size = NULL,
    chart_x_axis_title_padding = NULL,
    chart_x_axis_tick_label_position = NULL,
    chart_x_axis_tick_label_styling = NULL,
    chart_x_axis_tick_label_size = NULL,
    chart_x_axis_tick_label_color = NULL,
    chart_x_axis_tick_padding = NULL,
    chart_x_axis_tick_label_angle = NULL,
    chart_x_axis_tick_label_weight = NULL,
    chart_x_axis_tick_label_max_lines = NULL,
    chart_x_axis_tick_label_line_height = NULL,
    chart_x_axis_tick_label_space_mode = NULL,
    chart_x_axis_tick_label_space = NULL,
    chart_x_axis_tick_mode = NULL,
    chart_x_axis_tick_number = NULL,
    chart_x_axis_tick_custom = NULL,
    chart_x_axis_line_and_tick_color = NULL,
    chart_x_axis_line_and_tick_width = NULL,
    chart_x_axis_tick_length = NULL,
    chart_x_axis_tick_side = NULL,
    chart_x_axis_line_visible = NULL,
    chart_x_axis_edge_padding = NULL,
    chart_x_axis_gridlines_visible = NULL,
    chart_x_axis_gridlines_styling = NULL,
    chart_x_axis_gridline_color = NULL,
    chart_x_axis_gridline_style = NULL,
    chart_x_axis_gridline_width = NULL,
    chart_x_axis_gridline_category_dividers = NULL,
    chart_x_axis_gridline_category_dividers_extend = NULL,
    chart_y_axis_axis_visible = NULL,
    chart_y_axis_numeric_scale_type = NULL,
    chart_y_axis_linear_min = NULL,
    chart_y_axis_linear_max = NULL,
    chart_y_axis_log_min = NULL,
    chart_y_axis_log_max = NULL,
    chart_y_axis_datetime_min = NULL,
    chart_y_axis_datetime_max = NULL,
    chart_y_axis_flip = NULL,
    chart_y_axis_show_scale_settings = NULL,
    chart_y_axis_nice = NULL,
    chart_y_axis_zero_axis = NULL,
    chart_y_axis_title_mode = NULL,
    chart_y_axis_title = NULL,
    chart_y_axis_title_styling = NULL,
    chart_y_axis_title_position = NULL,
    chart_y_axis_title_weight = NULL,
    chart_y_axis_title_color = NULL,
    chart_y_axis_title_size = NULL,
    chart_y_axis_title_padding = NULL,
    chart_y_axis_tick_label_position = NULL,
    chart_y_axis_tick_label_styling = NULL,
    chart_y_axis_tick_label_size = NULL,
    chart_y_axis_tick_label_color = NULL,
    chart_y_axis_tick_padding = NULL,
    chart_y_axis_tick_label_angle = NULL,
    chart_y_axis_tick_label_weight = NULL,
    chart_y_axis_tick_label_max_lines = NULL,
    chart_y_axis_tick_label_line_height = NULL,
    chart_y_axis_tick_label_space_mode = NULL,
    chart_y_axis_tick_label_space = NULL,
    chart_y_axis_tick_mode = NULL,
    chart_y_axis_tick_number = NULL,
    chart_y_axis_tick_custom = NULL,
    chart_y_axis_line_and_tick_color = NULL,
    chart_y_axis_line_and_tick_width = NULL,
    chart_y_axis_tick_length = NULL,
    chart_y_axis_tick_side = NULL,
    chart_y_axis_line_visible = NULL,
    chart_y_axis_edge_padding = NULL,
    chart_y_axis_gridlines_visible = NULL,
    chart_y_axis_gridlines_styling = NULL,
    chart_y_axis_gridline_color = NULL,
    chart_y_axis_gridline_style = NULL,
    chart_y_axis_gridline_width = NULL,
    chart_y_axis_gridline_category_dividers = NULL,
    chart_y_axis_gridline_category_dividers_extend = NULL,
    chart_background_background_color_enabled = NULL,
    chart_background_background_image_enabled = NULL,
    chart_background_background_color = NULL,
    chart_background_background_image_src = NULL,
    chart_background_background_image_size = NULL,
    chart_background_background_image_position = NULL,
    datetime_input_format = NULL,
    date_format = NULL,
    chart_number_localization_input_decimal_separator = NULL,
    chart_number_localization_output_separators = NULL,
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
  details_error(., "draw_the_line")

  old_list <- .
  new_list <- list()

  if (isTRUE(old_list$x$template != "@flourish/draw-the-line")) {
    stop("`set_draw_the_line_details()` is not supported for this chart type.")
  }
  new_list$x$state$guess_lines_start <- guess_lines_start
  new_list$x$state$guess_lines_width <- guess_lines_width
  new_list$x$state$guess_lines_dot_radius <- guess_lines_dot_radius
  new_list$x$state$guess_lines_dash <- guess_lines_dash
  new_list$x$state$fixed_lines_width <- fixed_lines_width
  new_list$x$state$fixed_lines_dot_radius <- fixed_lines_dot_radius
  list_line_curve <- c("linear", "step", "curve", NULL)
  if (!is.null(line_curve)) {
    if (!line_curve %in% list_line_curve) {
      stop("`line_curve` must be one of: c('linear', 'step', 'curve')")
    } else {
      if (length(jsonlite::fromJSON('{"linear": "linear", "step": "step", "curve": "curve"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"linear": "linear", "step": "step", "curve": "curve"}')
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
        if (length(named_list) > 1 && line_curve %in% names(named_list)) {
          if (is.logical(line_curve)) {
            line_curve <- as.character(line_curve)
          }
          named_list_value <- unname(named_list[line_curve])[[1]]
          new_list$x$state$line_curve <- named_list_value
        }
      }
    }
  }
  list_guess_lines_panel_position <- c("top", "middle", "bottom", NULL)
  if (!is.null(guess_lines_panel_position)) {
    if (!guess_lines_panel_position %in% list_guess_lines_panel_position) {
      stop("`guess_lines_panel_position` must be one of: c('top', 'middle', 'bottom')")
    } else {
      if (length(jsonlite::fromJSON('{"top": "top", "middle": "middle", "bottom": "bottom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"top": "top", "middle": "middle", "bottom": "bottom"}')
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
        if (length(named_list) > 1 && guess_lines_panel_position %in% names(named_list)) {
          if (is.logical(guess_lines_panel_position)) {
            guess_lines_panel_position <- as.character(guess_lines_panel_position)
          }
          named_list_value <- unname(named_list[guess_lines_panel_position])[[1]]
          new_list$x$state$guess_lines_panel_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$message_styling <- message_styling
  new_list$x$state$message_background <- message_background
  new_list$x$state$message_opacity <- message_opacity
  new_list$x$state$message_color <- message_color
  new_list$x$state$message_font_size <- message_font_size
  new_list$x$state$message_border <- message_border
  new_list$x$state$message_border_width <- message_border_width
  new_list$x$state$message_border_radius <- message_border_radius
  new_list$x$state$message_shadow <- message_shadow
  new_list$x$state$guess_lines_message_text <- guess_lines_message_text
  new_list$x$state$scores_3_min <- scores_3_min
  new_list$x$state$scores_3_text <- scores_3_text
  new_list$x$state$scores_2_min <- scores_2_min
  new_list$x$state$scores_2_text <- scores_2_text
  new_list$x$state$scores_1_min <- scores_1_min
  new_list$x$state$scores_1_text <- scores_1_text
  new_list$x$state$scores_0_text <- scores_0_text
  new_list$x$state$guess_lines_submit_text <- guess_lines_submit_text
  new_list$x$state$submit_styling <- submit_styling
  new_list$x$state$submit_background <- submit_background
  new_list$x$state$submit_opacity <- submit_opacity
  new_list$x$state$submit_color <- submit_color
  new_list$x$state$submit_font_size <- submit_font_size
  new_list$x$state$submit_border <- submit_border
  new_list$x$state$submit_border_width <- submit_border_width
  new_list$x$state$submit_border_radius <- submit_border_radius
  new_list$x$state$submit_shadow <- submit_shadow
  if (length(chart_color_scale_categorical_palette) > 1) {
    new_list$x$state$color$categorical_palette <- paste(chart_color_scale_categorical_palette, collapse = "\n")
  } else {
    new_list$x$state$color$categorical_palette <- chart_color_scale_categorical_palette
  }

  new_list$x$state$color$categorical_extend <- chart_color_scale_categorical_extend
  if (length(chart_color_scale_categorical_custom_palette) > 1) {
    new_list$x$state$color$categorical_custom_palette <- paste(chart_color_scale_categorical_custom_palette, collapse = "\n")
  } else {
    new_list$x$state$color$categorical_custom_palette <- chart_color_scale_categorical_custom_palette
  }

  list_chart_color_scale_numeric_type <- c("sequential", "diverging", NULL)
  if (!is.null(chart_color_scale_numeric_type)) {
    if (!chart_color_scale_numeric_type %in% list_chart_color_scale_numeric_type) {
      stop("`chart_color_scale_numeric_type` must be one of: c('sequential', 'diverging')")
    } else {
      if (length(jsonlite::fromJSON('{"sequential": "sequential", "diverging": "diverging"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"sequential": "sequential", "diverging": "diverging"}')
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
        if (length(named_list) > 1 && chart_color_scale_numeric_type %in% names(named_list)) {
          if (is.logical(chart_color_scale_numeric_type)) {
            chart_color_scale_numeric_type <- as.character(chart_color_scale_numeric_type)
          }
          named_list_value <- unname(named_list[chart_color_scale_numeric_type])[[1]]
          new_list$x$state$color$numeric_type <- named_list_value
        }
      }
    }
  }
  list_chart_color_scale_binning <- c(FALSE, TRUE, NULL)
  if (!is.null(chart_color_scale_binning)) {
    if (!chart_color_scale_binning %in% list_chart_color_scale_binning) {
      stop("`chart_color_scale_binning` must be one of: c(FALSE, TRUE)")
    } else {
      if (length(jsonlite::fromJSON('{"false": false, "true": true}')) > 1) {
        named_list <- jsonlite::fromJSON('{"false": false, "true": true}')
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
        if (length(named_list) > 1 && chart_color_scale_binning %in% names(named_list)) {
          if (is.logical(chart_color_scale_binning)) {
            chart_color_scale_binning <- as.character(chart_color_scale_binning)
          }
          named_list_value <- unname(named_list[chart_color_scale_binning])[[1]]
          new_list$x$state$color$binning <- named_list_value
        }
      }
    }
  }
  list_chart_color_scale_bin_mode <- c("fixed", "quantile", "custom", NULL)
  if (!is.null(chart_color_scale_bin_mode)) {
    if (!chart_color_scale_bin_mode %in% list_chart_color_scale_bin_mode) {
      stop("`chart_color_scale_bin_mode` must be one of: c('fixed', 'quantile', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"fixed": "fixed", "quantile": "quantile", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"fixed": "fixed", "quantile": "quantile", "custom": "custom"}')
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
        if (length(named_list) > 1 && chart_color_scale_bin_mode %in% names(named_list)) {
          if (is.logical(chart_color_scale_bin_mode)) {
            chart_color_scale_bin_mode <- as.character(chart_color_scale_bin_mode)
          }
          named_list_value <- unname(named_list[chart_color_scale_bin_mode])[[1]]
          new_list$x$state$color$bin_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$color$bin_count <- chart_color_scale_bin_count
  new_list$x$state$color$bin_thresholds <- chart_color_scale_bin_thresholds
  new_list$x$state$color$sequential_palette <- chart_color_scale_sequential_palette
  new_list$x$state$color$sequential_reverse <- chart_color_scale_sequential_reverse
  new_list$x$state$color$sequential_custom_min <- chart_color_scale_sequential_custom_min
  new_list$x$state$color$sequential_custom_max <- chart_color_scale_sequential_custom_max
  list_chart_color_scale_sequential_color_space <- c("rgb", "lab", "hcl", "hsl", NULL)
  if (!is.null(chart_color_scale_sequential_color_space)) {
    if (!chart_color_scale_sequential_color_space %in% list_chart_color_scale_sequential_color_space) {
      stop("`chart_color_scale_sequential_color_space` must be one of: c('rgb', 'lab', 'hcl', 'hsl')")
    } else {
      if (length(jsonlite::fromJSON('{"rgb": "rgb", "lab": "lab", "hcl": "hcl", "hsl": "hsl"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"rgb": "rgb", "lab": "lab", "hcl": "hcl", "hsl": "hsl"}')
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
        if (length(named_list) > 1 && chart_color_scale_sequential_color_space %in% names(named_list)) {
          if (is.logical(chart_color_scale_sequential_color_space)) {
            chart_color_scale_sequential_color_space <- as.character(chart_color_scale_sequential_color_space)
          }
          named_list_value <- unname(named_list[chart_color_scale_sequential_color_space])[[1]]
          new_list$x$state$color$sequential_color_space <- named_list_value
        }
      }
    }
  }
  list_chart_color_scale_sequential_custom_domain <- c(FALSE, TRUE, NULL)
  if (!is.null(chart_color_scale_sequential_custom_domain)) {
    if (!chart_color_scale_sequential_custom_domain %in% list_chart_color_scale_sequential_custom_domain) {
      stop("`chart_color_scale_sequential_custom_domain` must be one of: c(FALSE, TRUE)")
    } else {
      if (length(jsonlite::fromJSON('{"false": false, "true": true}')) > 1) {
        named_list <- jsonlite::fromJSON('{"false": false, "true": true}')
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
        if (length(named_list) > 1 && chart_color_scale_sequential_custom_domain %in% names(named_list)) {
          if (is.logical(chart_color_scale_sequential_custom_domain)) {
            chart_color_scale_sequential_custom_domain <- as.character(chart_color_scale_sequential_custom_domain)
          }
          named_list_value <- unname(named_list[chart_color_scale_sequential_custom_domain])[[1]]
          new_list$x$state$color$sequential_custom_domain <- named_list_value
        }
      }
    }
  }
  new_list$x$state$color$sequential_domain_min <- chart_color_scale_sequential_domain_min
  new_list$x$state$color$sequential_domain_max <- chart_color_scale_sequential_domain_max
  new_list$x$state$color$diverging_palette <- chart_color_scale_diverging_palette
  new_list$x$state$color$diverging_reverse <- chart_color_scale_diverging_reverse
  new_list$x$state$color$diverging_custom_min <- chart_color_scale_diverging_custom_min
  new_list$x$state$color$diverging_custom_mid <- chart_color_scale_diverging_custom_mid
  new_list$x$state$color$diverging_custom_max <- chart_color_scale_diverging_custom_max
  list_chart_color_scale_diverging_color_space <- c("rgb", "lab", "hcl", "hsl", NULL)
  if (!is.null(chart_color_scale_diverging_color_space)) {
    if (!chart_color_scale_diverging_color_space %in% list_chart_color_scale_diverging_color_space) {
      stop("`chart_color_scale_diverging_color_space` must be one of: c('rgb', 'lab', 'hcl', 'hsl')")
    } else {
      if (length(jsonlite::fromJSON('{"rgb": "rgb", "lab": "lab", "hcl": "hcl", "hsl": "hsl"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"rgb": "rgb", "lab": "lab", "hcl": "hcl", "hsl": "hsl"}')
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
        if (length(named_list) > 1 && chart_color_scale_diverging_color_space %in% names(named_list)) {
          if (is.logical(chart_color_scale_diverging_color_space)) {
            chart_color_scale_diverging_color_space <- as.character(chart_color_scale_diverging_color_space)
          }
          named_list_value <- unname(named_list[chart_color_scale_diverging_color_space])[[1]]
          new_list$x$state$color$diverging_color_space <- named_list_value
        }
      }
    }
  }
  list_chart_color_scale_diverging_custom_domain <- c(FALSE, TRUE, NULL)
  if (!is.null(chart_color_scale_diverging_custom_domain)) {
    if (!chart_color_scale_diverging_custom_domain %in% list_chart_color_scale_diverging_custom_domain) {
      stop("`chart_color_scale_diverging_custom_domain` must be one of: c(FALSE, TRUE)")
    } else {
      if (length(jsonlite::fromJSON('{"false": false, "true": true}')) > 1) {
        named_list <- jsonlite::fromJSON('{"false": false, "true": true}')
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
        if (length(named_list) > 1 && chart_color_scale_diverging_custom_domain %in% names(named_list)) {
          if (is.logical(chart_color_scale_diverging_custom_domain)) {
            chart_color_scale_diverging_custom_domain <- as.character(chart_color_scale_diverging_custom_domain)
          }
          named_list_value <- unname(named_list[chart_color_scale_diverging_custom_domain])[[1]]
          new_list$x$state$color$diverging_custom_domain <- named_list_value
        }
      }
    }
  }
  new_list$x$state$color$diverging_domain_min <- chart_color_scale_diverging_domain_min
  new_list$x$state$color$diverging_domain_mid <- chart_color_scale_diverging_domain_mid
  new_list$x$state$color$diverging_domain_max <- chart_color_scale_diverging_domain_max
  list_chart_categorical_legend_show_legend <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_categorical_legend_show_legend)) {
    if (!chart_categorical_legend_show_legend %in% list_chart_categorical_legend_show_legend) {
      stop("`chart_categorical_legend_show_legend` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_categorical_legend_show_legend %in% names(named_list)) {
          if (is.logical(chart_categorical_legend_show_legend)) {
            chart_categorical_legend_show_legend <- as.character(chart_categorical_legend_show_legend)
          }
          named_list_value <- unname(named_list[chart_categorical_legend_show_legend])[[1]]
          new_list$x$state$legend_categorical$show_legend <- named_list_value
        }
      }
    }
  }
  list_chart_categorical_legend_title_mode <- c("auto", "custom", NULL)
  if (!is.null(chart_categorical_legend_title_mode)) {
    if (!chart_categorical_legend_title_mode %in% list_chart_categorical_legend_title_mode) {
      stop("`chart_categorical_legend_title_mode` must be one of: c('auto', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "custom": "custom"}')
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
        if (length(named_list) > 1 && chart_categorical_legend_title_mode %in% names(named_list)) {
          if (is.logical(chart_categorical_legend_title_mode)) {
            chart_categorical_legend_title_mode <- as.character(chart_categorical_legend_title_mode)
          }
          named_list_value <- unname(named_list[chart_categorical_legend_title_mode])[[1]]
          new_list$x$state$legend_categorical$title_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$legend_categorical$title <- chart_categorical_legend_title
  new_list$x$state$legend_categorical$swatch_width <- chart_categorical_legend_swatch_width
  new_list$x$state$legend_categorical$swatch_height <- chart_categorical_legend_swatch_height
  new_list$x$state$legend_categorical$swatch_radius <- chart_categorical_legend_swatch_radius
  new_list$x$state$legend_categorical$legend_items_padding <- chart_categorical_legend_legend_items_padding
  new_list$x$state$legend_categorical$swatch_outline <- chart_categorical_legend_swatch_outline
  new_list$x$state$legend_categorical$swatch_outline_color <- chart_categorical_legend_swatch_outline_color
  if (length(chart_categorical_legend_order_override) > 1) {
    new_list$x$state$legend_categorical$order_override <- paste(chart_categorical_legend_order_override, collapse = "\n")
  } else {
    new_list$x$state$legend_categorical$order_override <- chart_categorical_legend_order_override
  }

  new_list$x$state$legend_categorical$icon_height <- chart_categorical_legend_icon_height
  new_list$x$state$legend_categorical$icon_color <- chart_categorical_legend_icon_color
  new_list$x$state$legend_categorical$max_width <- chart_categorical_legend_max_width
  list_chart_categorical_legend_orientation <- c("horizontal", "vertical", NULL)
  if (!is.null(chart_categorical_legend_orientation)) {
    if (!chart_categorical_legend_orientation %in% list_chart_categorical_legend_orientation) {
      stop("`chart_categorical_legend_orientation` must be one of: c('horizontal', 'vertical')")
    } else {
      if (length(jsonlite::fromJSON('{"horizontal": "horizontal", "vertical": "vertical"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"horizontal": "horizontal", "vertical": "vertical"}')
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
        if (length(named_list) > 1 && chart_categorical_legend_orientation %in% names(named_list)) {
          if (is.logical(chart_categorical_legend_orientation)) {
            chart_categorical_legend_orientation <- as.character(chart_categorical_legend_orientation)
          }
          named_list_value <- unname(named_list[chart_categorical_legend_orientation])[[1]]
          new_list$x$state$legend_categorical$orientation <- named_list_value
        }
      }
    }
  }
  list_chart_legend_container_alignment <- c("start", "center", "end", NULL)
  if (!is.null(chart_legend_container_alignment)) {
    if (!chart_legend_container_alignment %in% list_chart_legend_container_alignment) {
      stop("`chart_legend_container_alignment` must be one of: c('start', 'center', 'end')")
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
        if (length(named_list) > 1 && chart_legend_container_alignment %in% names(named_list)) {
          if (is.logical(chart_legend_container_alignment)) {
            chart_legend_container_alignment <- as.character(chart_legend_container_alignment)
          }
          named_list_value <- unname(named_list[chart_legend_container_alignment])[[1]]
          new_list$x$state$legend_container$alignment <- named_list_value
        }
      }
    }
  }
  list_chart_legend_container_orientation <- c("horizontal", "vertical", NULL)
  if (!is.null(chart_legend_container_orientation)) {
    if (!chart_legend_container_orientation %in% list_chart_legend_container_orientation) {
      stop("`chart_legend_container_orientation` must be one of: c('horizontal', 'vertical')")
    } else {
      if (length(jsonlite::fromJSON('{"horizontal": "horizontal", "vertical": "vertical"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"horizontal": "horizontal", "vertical": "vertical"}')
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
        if (length(named_list) > 1 && chart_legend_container_orientation %in% names(named_list)) {
          if (is.logical(chart_legend_container_orientation)) {
            chart_legend_container_orientation <- as.character(chart_legend_container_orientation)
          }
          named_list_value <- unname(named_list[chart_legend_container_orientation])[[1]]
          new_list$x$state$legend_container$orientation <- named_list_value
        }
      }
    }
  }
  list_chart_legend_container_title_weight <- c("bold", "normal", NULL)
  if (!is.null(chart_legend_container_title_weight)) {
    if (!chart_legend_container_title_weight %in% list_chart_legend_container_title_weight) {
      stop("`chart_legend_container_title_weight` must be one of: c('bold', 'normal')")
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
        if (length(named_list) > 1 && chart_legend_container_title_weight %in% names(named_list)) {
          if (is.logical(chart_legend_container_title_weight)) {
            chart_legend_container_title_weight <- as.character(chart_legend_container_title_weight)
          }
          named_list_value <- unname(named_list[chart_legend_container_title_weight])[[1]]
          new_list$x$state$legend_container$title_weight <- named_list_value
        }
      }
    }
  }
  list_chart_legend_container_text_weight <- c("bold", "normal", NULL)
  if (!is.null(chart_legend_container_text_weight)) {
    if (!chart_legend_container_text_weight %in% list_chart_legend_container_text_weight) {
      stop("`chart_legend_container_text_weight` must be one of: c('bold', 'normal')")
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
        if (length(named_list) > 1 && chart_legend_container_text_weight %in% names(named_list)) {
          if (is.logical(chart_legend_container_text_weight)) {
            chart_legend_container_text_weight <- as.character(chart_legend_container_text_weight)
          }
          named_list_value <- unname(named_list[chart_legend_container_text_weight])[[1]]
          new_list$x$state$legend_container$text_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$legend_container$text_color <- chart_legend_container_text_color
  new_list$x$state$legend_container$text_size <- chart_legend_container_text_size
  list_chart_x_axis_axis_position <- c("bottom", "float-below", "float-above", "top", "off", NULL)
  if (!is.null(chart_x_axis_axis_position)) {
    if (!chart_x_axis_axis_position %in% list_chart_x_axis_axis_position) {
      stop("`chart_x_axis_axis_position` must be one of: c('bottom', 'float-below', 'float-above', 'top', 'off')")
    } else {
      if (length(jsonlite::fromJSON('{"bottom": "bottom", "float-below": "float-below", "float-above": "float-above", "top": "top", "off": "off"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"bottom": "bottom", "float-below": "float-below", "float-above": "float-above", "top": "top", "off": "off"}')
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
        if (length(named_list) > 1 && chart_x_axis_axis_position %in% names(named_list)) {
          if (is.logical(chart_x_axis_axis_position)) {
            chart_x_axis_axis_position <- as.character(chart_x_axis_axis_position)
          }
          named_list_value <- unname(named_list[chart_x_axis_axis_position])[[1]]
          new_list$x$state$x$axis_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$x$y_axis_position <- chart_x_axis_y_axis_position
  list_chart_x_axis_numeric_scale_type <- c("linear", "log", NULL)
  if (!is.null(chart_x_axis_numeric_scale_type)) {
    if (!chart_x_axis_numeric_scale_type %in% list_chart_x_axis_numeric_scale_type) {
      stop("`chart_x_axis_numeric_scale_type` must be one of: c('linear', 'log')")
    } else {
      if (length(jsonlite::fromJSON('{"linear": "linear", "log": "log"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"linear": "linear", "log": "log"}')
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
        if (length(named_list) > 1 && chart_x_axis_numeric_scale_type %in% names(named_list)) {
          if (is.logical(chart_x_axis_numeric_scale_type)) {
            chart_x_axis_numeric_scale_type <- as.character(chart_x_axis_numeric_scale_type)
          }
          named_list_value <- unname(named_list[chart_x_axis_numeric_scale_type])[[1]]
          new_list$x$state$x$numeric_scale_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$x$linear_min <- chart_x_axis_linear_min
  new_list$x$state$x$linear_max <- chart_x_axis_linear_max
  new_list$x$state$x$log_min <- chart_x_axis_log_min
  new_list$x$state$x$log_max <- chart_x_axis_log_max
  new_list$x$state$x$datetime_min <- chart_x_axis_datetime_min
  new_list$x$state$x$datetime_max <- chart_x_axis_datetime_max
  new_list$x$state$x$flip <- chart_x_axis_flip
  new_list$x$state$x$show_scale_settings <- chart_x_axis_show_scale_settings
  list_chart_x_axis_nice <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_x_axis_nice)) {
    if (!chart_x_axis_nice %in% list_chart_x_axis_nice) {
      stop("`chart_x_axis_nice` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_x_axis_nice %in% names(named_list)) {
          if (is.logical(chart_x_axis_nice)) {
            chart_x_axis_nice <- as.character(chart_x_axis_nice)
          }
          named_list_value <- unname(named_list[chart_x_axis_nice])[[1]]
          new_list$x$state$x$nice <- named_list_value
        }
      }
    }
  }
  list_chart_x_axis_zero_axis <- c("auto", "on", "off", NULL)
  if (!is.null(chart_x_axis_zero_axis)) {
    if (!chart_x_axis_zero_axis %in% list_chart_x_axis_zero_axis) {
      stop("`chart_x_axis_zero_axis` must be one of: c('auto', 'on', 'off')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "on": "on", "off": "off"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "on": "on", "off": "off"}')
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
        if (length(named_list) > 1 && chart_x_axis_zero_axis %in% names(named_list)) {
          if (is.logical(chart_x_axis_zero_axis)) {
            chart_x_axis_zero_axis <- as.character(chart_x_axis_zero_axis)
          }
          named_list_value <- unname(named_list[chart_x_axis_zero_axis])[[1]]
          new_list$x$state$x$zero_axis <- named_list_value
        }
      }
    }
  }
  list_chart_x_axis_title_mode <- c("auto", "custom", NULL)
  if (!is.null(chart_x_axis_title_mode)) {
    if (!chart_x_axis_title_mode %in% list_chart_x_axis_title_mode) {
      stop("`chart_x_axis_title_mode` must be one of: c('auto', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "custom": "custom"}')
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
        if (length(named_list) > 1 && chart_x_axis_title_mode %in% names(named_list)) {
          if (is.logical(chart_x_axis_title_mode)) {
            chart_x_axis_title_mode <- as.character(chart_x_axis_title_mode)
          }
          named_list_value <- unname(named_list[chart_x_axis_title_mode])[[1]]
          new_list$x$state$x$title_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$x$title <- chart_x_axis_title
  new_list$x$state$x$title_styling <- chart_x_axis_title_styling
  list_chart_x_axis_title_weight <- c("bold", "normal", NULL)
  if (!is.null(chart_x_axis_title_weight)) {
    if (!chart_x_axis_title_weight %in% list_chart_x_axis_title_weight) {
      stop("`chart_x_axis_title_weight` must be one of: c('bold', 'normal')")
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
        if (length(named_list) > 1 && chart_x_axis_title_weight %in% names(named_list)) {
          if (is.logical(chart_x_axis_title_weight)) {
            chart_x_axis_title_weight <- as.character(chart_x_axis_title_weight)
          }
          named_list_value <- unname(named_list[chart_x_axis_title_weight])[[1]]
          new_list$x$state$x$title_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$x$title_color <- chart_x_axis_title_color
  new_list$x$state$x$title_size <- chart_x_axis_title_size
  new_list$x$state$x$title_padding <- chart_x_axis_title_padding
  list_chart_x_axis_tick_label_position <- c("default", "left", "right", NULL)
  if (!is.null(chart_x_axis_tick_label_position)) {
    if (!chart_x_axis_tick_label_position %in% list_chart_x_axis_tick_label_position) {
      stop("`chart_x_axis_tick_label_position` must be one of: c('default', 'left', 'right')")
    } else {
      if (length(jsonlite::fromJSON('{"default": "default", "left": "left", "right": "right"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"default": "default", "left": "left", "right": "right"}')
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
        if (length(named_list) > 1 && chart_x_axis_tick_label_position %in% names(named_list)) {
          if (is.logical(chart_x_axis_tick_label_position)) {
            chart_x_axis_tick_label_position <- as.character(chart_x_axis_tick_label_position)
          }
          named_list_value <- unname(named_list[chart_x_axis_tick_label_position])[[1]]
          new_list$x$state$x$tick_label_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$x$tick_label_styling <- chart_x_axis_tick_label_styling
  new_list$x$state$x$tick_label_size <- chart_x_axis_tick_label_size
  new_list$x$state$x$tick_label_color <- chart_x_axis_tick_label_color
  new_list$x$state$x$tick_padding <- chart_x_axis_tick_padding
  list_chart_x_axis_tick_label_angle <- c("0", "30", "45", "60", "90", NULL)
  if (!is.null(chart_x_axis_tick_label_angle)) {
    if (!chart_x_axis_tick_label_angle %in% list_chart_x_axis_tick_label_angle) {
      stop("`chart_x_axis_tick_label_angle` must be one of: c('0', '30', '45', '60', '90')")
    } else {
      if (length(jsonlite::fromJSON('{"0": "0", "30": "30", "45": "45", "60": "60", "90": "90"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"0": "0", "30": "30", "45": "45", "60": "60", "90": "90"}')
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
        if (length(named_list) > 1 && chart_x_axis_tick_label_angle %in% names(named_list)) {
          if (is.logical(chart_x_axis_tick_label_angle)) {
            chart_x_axis_tick_label_angle <- as.character(chart_x_axis_tick_label_angle)
          }
          named_list_value <- unname(named_list[chart_x_axis_tick_label_angle])[[1]]
          new_list$x$state$x$tick_label_angle <- named_list_value
        }
      }
    }
  }
  list_chart_x_axis_tick_label_weight <- c("bold", "normal", NULL)
  if (!is.null(chart_x_axis_tick_label_weight)) {
    if (!chart_x_axis_tick_label_weight %in% list_chart_x_axis_tick_label_weight) {
      stop("`chart_x_axis_tick_label_weight` must be one of: c('bold', 'normal')")
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
        if (length(named_list) > 1 && chart_x_axis_tick_label_weight %in% names(named_list)) {
          if (is.logical(chart_x_axis_tick_label_weight)) {
            chart_x_axis_tick_label_weight <- as.character(chart_x_axis_tick_label_weight)
          }
          named_list_value <- unname(named_list[chart_x_axis_tick_label_weight])[[1]]
          new_list$x$state$x$tick_label_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$x$tick_label_max_lines <- chart_x_axis_tick_label_max_lines
  new_list$x$state$x$tick_label_line_height <- chart_x_axis_tick_label_line_height
  list_chart_x_axis_tick_label_space_mode <- c("auto", "max", "fixed", NULL)
  if (!is.null(chart_x_axis_tick_label_space_mode)) {
    if (!chart_x_axis_tick_label_space_mode %in% list_chart_x_axis_tick_label_space_mode) {
      stop("`chart_x_axis_tick_label_space_mode` must be one of: c('auto', 'max', 'fixed')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "max": "max", "fixed": "fixed"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "max": "max", "fixed": "fixed"}')
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
        if (length(named_list) > 1 && chart_x_axis_tick_label_space_mode %in% names(named_list)) {
          if (is.logical(chart_x_axis_tick_label_space_mode)) {
            chart_x_axis_tick_label_space_mode <- as.character(chart_x_axis_tick_label_space_mode)
          }
          named_list_value <- unname(named_list[chart_x_axis_tick_label_space_mode])[[1]]
          new_list$x$state$x$tick_label_space_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$x$tick_label_space <- chart_x_axis_tick_label_space
  list_chart_x_axis_tick_mode <- c("auto", "number", "custom", NULL)
  if (!is.null(chart_x_axis_tick_mode)) {
    if (!chart_x_axis_tick_mode %in% list_chart_x_axis_tick_mode) {
      stop("`chart_x_axis_tick_mode` must be one of: c('auto', 'number', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "number": "number", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "number": "number", "custom": "custom"}')
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
        if (length(named_list) > 1 && chart_x_axis_tick_mode %in% names(named_list)) {
          if (is.logical(chart_x_axis_tick_mode)) {
            chart_x_axis_tick_mode <- as.character(chart_x_axis_tick_mode)
          }
          named_list_value <- unname(named_list[chart_x_axis_tick_mode])[[1]]
          new_list$x$state$x$tick_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$x$tick_number <- chart_x_axis_tick_number
  if (length(chart_x_axis_tick_custom) > 1) {
    new_list$x$state$x$tick_custom <- paste(chart_x_axis_tick_custom, collapse = "\n")
  } else {
    new_list$x$state$x$tick_custom <- chart_x_axis_tick_custom
  }

  new_list$x$state$x$line_and_tick_color <- chart_x_axis_line_and_tick_color
  new_list$x$state$x$line_and_tick_width <- chart_x_axis_line_and_tick_width
  new_list$x$state$x$tick_length <- chart_x_axis_tick_length
  list_chart_x_axis_tick_side <- c("out", "in", NULL)
  if (!is.null(chart_x_axis_tick_side)) {
    if (!chart_x_axis_tick_side %in% list_chart_x_axis_tick_side) {
      stop("`chart_x_axis_tick_side` must be one of: c('out', 'in')")
    } else {
      if (length(jsonlite::fromJSON('{"out": "out", "in": "in"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"out": "out", "in": "in"}')
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
        if (length(named_list) > 1 && chart_x_axis_tick_side %in% names(named_list)) {
          if (is.logical(chart_x_axis_tick_side)) {
            chart_x_axis_tick_side <- as.character(chart_x_axis_tick_side)
          }
          named_list_value <- unname(named_list[chart_x_axis_tick_side])[[1]]
          new_list$x$state$x$tick_side <- named_list_value
        }
      }
    }
  }
  new_list$x$state$x$line_visible <- chart_x_axis_line_visible
  new_list$x$state$x$edge_padding <- chart_x_axis_edge_padding
  list_chart_x_axis_gridlines_visible <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_x_axis_gridlines_visible)) {
    if (!chart_x_axis_gridlines_visible %in% list_chart_x_axis_gridlines_visible) {
      stop("`chart_x_axis_gridlines_visible` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_x_axis_gridlines_visible %in% names(named_list)) {
          if (is.logical(chart_x_axis_gridlines_visible)) {
            chart_x_axis_gridlines_visible <- as.character(chart_x_axis_gridlines_visible)
          }
          named_list_value <- unname(named_list[chart_x_axis_gridlines_visible])[[1]]
          new_list$x$state$x$gridlines_visible <- named_list_value
        }
      }
    }
  }
  new_list$x$state$x$gridlines_styling <- chart_x_axis_gridlines_styling
  new_list$x$state$x$gridline_color <- chart_x_axis_gridline_color
  list_chart_x_axis_gridline_style <- c("solid", "dash", "dot", "dot_dash", NULL)
  if (!is.null(chart_x_axis_gridline_style)) {
    if (!chart_x_axis_gridline_style %in% list_chart_x_axis_gridline_style) {
      stop("`chart_x_axis_gridline_style` must be one of: c('solid', 'dash', 'dot', 'dot_dash')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dash": "dash", "dot": "dot", "dot_dash": "dot_dash"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dash": "dash", "dot": "dot", "dot_dash": "dot_dash"}')
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
        if (length(named_list) > 1 && chart_x_axis_gridline_style %in% names(named_list)) {
          if (is.logical(chart_x_axis_gridline_style)) {
            chart_x_axis_gridline_style <- as.character(chart_x_axis_gridline_style)
          }
          named_list_value <- unname(named_list[chart_x_axis_gridline_style])[[1]]
          new_list$x$state$x$gridline_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$x$gridline_width <- chart_x_axis_gridline_width
  new_list$x$state$x$gridline_category_dividers <- chart_x_axis_gridline_category_dividers
  new_list$x$state$x$gridline_category_dividers_extend <- chart_x_axis_gridline_category_dividers_extend
  list_chart_y_axis_axis_visible <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_y_axis_axis_visible)) {
    if (!chart_y_axis_axis_visible %in% list_chart_y_axis_axis_visible) {
      stop("`chart_y_axis_axis_visible` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_y_axis_axis_visible %in% names(named_list)) {
          if (is.logical(chart_y_axis_axis_visible)) {
            chart_y_axis_axis_visible <- as.character(chart_y_axis_axis_visible)
          }
          named_list_value <- unname(named_list[chart_y_axis_axis_visible])[[1]]
          new_list$x$state$y$axis_visible <- named_list_value
        }
      }
    }
  }
  list_chart_y_axis_numeric_scale_type <- c("linear", "log", NULL)
  if (!is.null(chart_y_axis_numeric_scale_type)) {
    if (!chart_y_axis_numeric_scale_type %in% list_chart_y_axis_numeric_scale_type) {
      stop("`chart_y_axis_numeric_scale_type` must be one of: c('linear', 'log')")
    } else {
      if (length(jsonlite::fromJSON('{"linear": "linear", "log": "log"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"linear": "linear", "log": "log"}')
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
        if (length(named_list) > 1 && chart_y_axis_numeric_scale_type %in% names(named_list)) {
          if (is.logical(chart_y_axis_numeric_scale_type)) {
            chart_y_axis_numeric_scale_type <- as.character(chart_y_axis_numeric_scale_type)
          }
          named_list_value <- unname(named_list[chart_y_axis_numeric_scale_type])[[1]]
          new_list$x$state$y$numeric_scale_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y$linear_min <- chart_y_axis_linear_min
  new_list$x$state$y$linear_max <- chart_y_axis_linear_max
  new_list$x$state$y$log_min <- chart_y_axis_log_min
  new_list$x$state$y$log_max <- chart_y_axis_log_max
  new_list$x$state$y$datetime_min <- chart_y_axis_datetime_min
  new_list$x$state$y$datetime_max <- chart_y_axis_datetime_max
  new_list$x$state$y$flip <- chart_y_axis_flip
  new_list$x$state$y$show_scale_settings <- chart_y_axis_show_scale_settings
  list_chart_y_axis_nice <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_y_axis_nice)) {
    if (!chart_y_axis_nice %in% list_chart_y_axis_nice) {
      stop("`chart_y_axis_nice` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_y_axis_nice %in% names(named_list)) {
          if (is.logical(chart_y_axis_nice)) {
            chart_y_axis_nice <- as.character(chart_y_axis_nice)
          }
          named_list_value <- unname(named_list[chart_y_axis_nice])[[1]]
          new_list$x$state$y$nice <- named_list_value
        }
      }
    }
  }
  list_chart_y_axis_zero_axis <- c("auto", "on", "off", NULL)
  if (!is.null(chart_y_axis_zero_axis)) {
    if (!chart_y_axis_zero_axis %in% list_chart_y_axis_zero_axis) {
      stop("`chart_y_axis_zero_axis` must be one of: c('auto', 'on', 'off')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "on": "on", "off": "off"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "on": "on", "off": "off"}')
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
        if (length(named_list) > 1 && chart_y_axis_zero_axis %in% names(named_list)) {
          if (is.logical(chart_y_axis_zero_axis)) {
            chart_y_axis_zero_axis <- as.character(chart_y_axis_zero_axis)
          }
          named_list_value <- unname(named_list[chart_y_axis_zero_axis])[[1]]
          new_list$x$state$y$zero_axis <- named_list_value
        }
      }
    }
  }
  list_chart_y_axis_title_mode <- c("auto", "custom", NULL)
  if (!is.null(chart_y_axis_title_mode)) {
    if (!chart_y_axis_title_mode %in% list_chart_y_axis_title_mode) {
      stop("`chart_y_axis_title_mode` must be one of: c('auto', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "custom": "custom"}')
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
        if (length(named_list) > 1 && chart_y_axis_title_mode %in% names(named_list)) {
          if (is.logical(chart_y_axis_title_mode)) {
            chart_y_axis_title_mode <- as.character(chart_y_axis_title_mode)
          }
          named_list_value <- unname(named_list[chart_y_axis_title_mode])[[1]]
          new_list$x$state$y$title_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y$title <- chart_y_axis_title
  new_list$x$state$y$title_styling <- chart_y_axis_title_styling
  list_chart_y_axis_title_position <- c("side", "end", NULL)
  if (!is.null(chart_y_axis_title_position)) {
    if (!chart_y_axis_title_position %in% list_chart_y_axis_title_position) {
      stop("`chart_y_axis_title_position` must be one of: c('side', 'end')")
    } else {
      if (length(jsonlite::fromJSON('{"side": "side", "end": "end"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"side": "side", "end": "end"}')
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
        if (length(named_list) > 1 && chart_y_axis_title_position %in% names(named_list)) {
          if (is.logical(chart_y_axis_title_position)) {
            chart_y_axis_title_position <- as.character(chart_y_axis_title_position)
          }
          named_list_value <- unname(named_list[chart_y_axis_title_position])[[1]]
          new_list$x$state$y$title_position <- named_list_value
        }
      }
    }
  }
  list_chart_y_axis_title_weight <- c("bold", "normal", NULL)
  if (!is.null(chart_y_axis_title_weight)) {
    if (!chart_y_axis_title_weight %in% list_chart_y_axis_title_weight) {
      stop("`chart_y_axis_title_weight` must be one of: c('bold', 'normal')")
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
        if (length(named_list) > 1 && chart_y_axis_title_weight %in% names(named_list)) {
          if (is.logical(chart_y_axis_title_weight)) {
            chart_y_axis_title_weight <- as.character(chart_y_axis_title_weight)
          }
          named_list_value <- unname(named_list[chart_y_axis_title_weight])[[1]]
          new_list$x$state$y$title_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y$title_color <- chart_y_axis_title_color
  new_list$x$state$y$title_size <- chart_y_axis_title_size
  new_list$x$state$y$title_padding <- chart_y_axis_title_padding
  list_chart_y_axis_tick_label_position <- c("default", "above", "below", NULL)
  if (!is.null(chart_y_axis_tick_label_position)) {
    if (!chart_y_axis_tick_label_position %in% list_chart_y_axis_tick_label_position) {
      stop("`chart_y_axis_tick_label_position` must be one of: c('default', 'above', 'below')")
    } else {
      if (length(jsonlite::fromJSON('{"default": "default", "above": "above", "below": "below"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"default": "default", "above": "above", "below": "below"}')
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
        if (length(named_list) > 1 && chart_y_axis_tick_label_position %in% names(named_list)) {
          if (is.logical(chart_y_axis_tick_label_position)) {
            chart_y_axis_tick_label_position <- as.character(chart_y_axis_tick_label_position)
          }
          named_list_value <- unname(named_list[chart_y_axis_tick_label_position])[[1]]
          new_list$x$state$y$tick_label_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y$tick_label_styling <- chart_y_axis_tick_label_styling
  new_list$x$state$y$tick_label_size <- chart_y_axis_tick_label_size
  new_list$x$state$y$tick_label_color <- chart_y_axis_tick_label_color
  new_list$x$state$y$tick_padding <- chart_y_axis_tick_padding
  list_chart_y_axis_tick_label_angle <- c("0", "30", "45", "60", "90", NULL)
  if (!is.null(chart_y_axis_tick_label_angle)) {
    if (!chart_y_axis_tick_label_angle %in% list_chart_y_axis_tick_label_angle) {
      stop("`chart_y_axis_tick_label_angle` must be one of: c('0', '30', '45', '60', '90')")
    } else {
      if (length(jsonlite::fromJSON('{"0": "0", "30": "30", "45": "45", "60": "60", "90": "90"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"0": "0", "30": "30", "45": "45", "60": "60", "90": "90"}')
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
        if (length(named_list) > 1 && chart_y_axis_tick_label_angle %in% names(named_list)) {
          if (is.logical(chart_y_axis_tick_label_angle)) {
            chart_y_axis_tick_label_angle <- as.character(chart_y_axis_tick_label_angle)
          }
          named_list_value <- unname(named_list[chart_y_axis_tick_label_angle])[[1]]
          new_list$x$state$y$tick_label_angle <- named_list_value
        }
      }
    }
  }
  list_chart_y_axis_tick_label_weight <- c("bold", "normal", NULL)
  if (!is.null(chart_y_axis_tick_label_weight)) {
    if (!chart_y_axis_tick_label_weight %in% list_chart_y_axis_tick_label_weight) {
      stop("`chart_y_axis_tick_label_weight` must be one of: c('bold', 'normal')")
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
        if (length(named_list) > 1 && chart_y_axis_tick_label_weight %in% names(named_list)) {
          if (is.logical(chart_y_axis_tick_label_weight)) {
            chart_y_axis_tick_label_weight <- as.character(chart_y_axis_tick_label_weight)
          }
          named_list_value <- unname(named_list[chart_y_axis_tick_label_weight])[[1]]
          new_list$x$state$y$tick_label_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y$tick_label_max_lines <- chart_y_axis_tick_label_max_lines
  new_list$x$state$y$tick_label_line_height <- chart_y_axis_tick_label_line_height
  list_chart_y_axis_tick_label_space_mode <- c("auto", "max", "fixed", NULL)
  if (!is.null(chart_y_axis_tick_label_space_mode)) {
    if (!chart_y_axis_tick_label_space_mode %in% list_chart_y_axis_tick_label_space_mode) {
      stop("`chart_y_axis_tick_label_space_mode` must be one of: c('auto', 'max', 'fixed')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "max": "max", "fixed": "fixed"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "max": "max", "fixed": "fixed"}')
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
        if (length(named_list) > 1 && chart_y_axis_tick_label_space_mode %in% names(named_list)) {
          if (is.logical(chart_y_axis_tick_label_space_mode)) {
            chart_y_axis_tick_label_space_mode <- as.character(chart_y_axis_tick_label_space_mode)
          }
          named_list_value <- unname(named_list[chart_y_axis_tick_label_space_mode])[[1]]
          new_list$x$state$y$tick_label_space_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y$tick_label_space <- chart_y_axis_tick_label_space
  list_chart_y_axis_tick_mode <- c("auto", "number", "custom", NULL)
  if (!is.null(chart_y_axis_tick_mode)) {
    if (!chart_y_axis_tick_mode %in% list_chart_y_axis_tick_mode) {
      stop("`chart_y_axis_tick_mode` must be one of: c('auto', 'number', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "number": "number", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "number": "number", "custom": "custom"}')
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
        if (length(named_list) > 1 && chart_y_axis_tick_mode %in% names(named_list)) {
          if (is.logical(chart_y_axis_tick_mode)) {
            chart_y_axis_tick_mode <- as.character(chart_y_axis_tick_mode)
          }
          named_list_value <- unname(named_list[chart_y_axis_tick_mode])[[1]]
          new_list$x$state$y$tick_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y$tick_number <- chart_y_axis_tick_number
  if (length(chart_y_axis_tick_custom) > 1) {
    new_list$x$state$y$tick_custom <- paste(chart_y_axis_tick_custom, collapse = "\n")
  } else {
    new_list$x$state$y$tick_custom <- chart_y_axis_tick_custom
  }

  new_list$x$state$y$line_and_tick_color <- chart_y_axis_line_and_tick_color
  new_list$x$state$y$line_and_tick_width <- chart_y_axis_line_and_tick_width
  new_list$x$state$y$tick_length <- chart_y_axis_tick_length
  list_chart_y_axis_tick_side <- c("out", "in", NULL)
  if (!is.null(chart_y_axis_tick_side)) {
    if (!chart_y_axis_tick_side %in% list_chart_y_axis_tick_side) {
      stop("`chart_y_axis_tick_side` must be one of: c('out', 'in')")
    } else {
      if (length(jsonlite::fromJSON('{"out": "out", "in": "in"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"out": "out", "in": "in"}')
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
        if (length(named_list) > 1 && chart_y_axis_tick_side %in% names(named_list)) {
          if (is.logical(chart_y_axis_tick_side)) {
            chart_y_axis_tick_side <- as.character(chart_y_axis_tick_side)
          }
          named_list_value <- unname(named_list[chart_y_axis_tick_side])[[1]]
          new_list$x$state$y$tick_side <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y$line_visible <- chart_y_axis_line_visible
  new_list$x$state$y$edge_padding <- chart_y_axis_edge_padding
  list_chart_y_axis_gridlines_visible <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_y_axis_gridlines_visible)) {
    if (!chart_y_axis_gridlines_visible %in% list_chart_y_axis_gridlines_visible) {
      stop("`chart_y_axis_gridlines_visible` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_y_axis_gridlines_visible %in% names(named_list)) {
          if (is.logical(chart_y_axis_gridlines_visible)) {
            chart_y_axis_gridlines_visible <- as.character(chart_y_axis_gridlines_visible)
          }
          named_list_value <- unname(named_list[chart_y_axis_gridlines_visible])[[1]]
          new_list$x$state$y$gridlines_visible <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y$gridlines_styling <- chart_y_axis_gridlines_styling
  new_list$x$state$y$gridline_color <- chart_y_axis_gridline_color
  list_chart_y_axis_gridline_style <- c("solid", "dash", "dot", "dot_dash", NULL)
  if (!is.null(chart_y_axis_gridline_style)) {
    if (!chart_y_axis_gridline_style %in% list_chart_y_axis_gridline_style) {
      stop("`chart_y_axis_gridline_style` must be one of: c('solid', 'dash', 'dot', 'dot_dash')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dash": "dash", "dot": "dot", "dot_dash": "dot_dash"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dash": "dash", "dot": "dot", "dot_dash": "dot_dash"}')
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
        if (length(named_list) > 1 && chart_y_axis_gridline_style %in% names(named_list)) {
          if (is.logical(chart_y_axis_gridline_style)) {
            chart_y_axis_gridline_style <- as.character(chart_y_axis_gridline_style)
          }
          named_list_value <- unname(named_list[chart_y_axis_gridline_style])[[1]]
          new_list$x$state$y$gridline_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y$gridline_width <- chart_y_axis_gridline_width
  new_list$x$state$y$gridline_category_dividers <- chart_y_axis_gridline_category_dividers
  new_list$x$state$y$gridline_category_dividers_extend <- chart_y_axis_gridline_category_dividers_extend
  list_chart_background_background_color_enabled <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_background_background_color_enabled)) {
    if (!chart_background_background_color_enabled %in% list_chart_background_background_color_enabled) {
      stop("`chart_background_background_color_enabled` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_background_background_color_enabled %in% names(named_list)) {
          if (is.logical(chart_background_background_color_enabled)) {
            chart_background_background_color_enabled <- as.character(chart_background_background_color_enabled)
          }
          named_list_value <- unname(named_list[chart_background_background_color_enabled])[[1]]
          new_list$x$state$background$background_color_enabled <- named_list_value
        }
      }
    }
  }
  list_chart_background_background_image_enabled <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_background_background_image_enabled)) {
    if (!chart_background_background_image_enabled %in% list_chart_background_background_image_enabled) {
      stop("`chart_background_background_image_enabled` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_background_background_image_enabled %in% names(named_list)) {
          if (is.logical(chart_background_background_image_enabled)) {
            chart_background_background_image_enabled <- as.character(chart_background_background_image_enabled)
          }
          named_list_value <- unname(named_list[chart_background_background_image_enabled])[[1]]
          new_list$x$state$background$background_image_enabled <- named_list_value
        }
      }
    }
  }
  new_list$x$state$background$background_color <- chart_background_background_color
  new_list$x$state$background$background_image_src <- chart_background_background_image_src
  list_chart_background_background_image_size <- c("stretch", "slice", "meet", NULL)
  if (!is.null(chart_background_background_image_size)) {
    if (!chart_background_background_image_size %in% list_chart_background_background_image_size) {
      stop("`chart_background_background_image_size` must be one of: c('stretch', 'slice', 'meet')")
    } else {
      if (length(jsonlite::fromJSON('{"stretch": "stretch", "slice": "slice", "meet": "meet"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"stretch": "stretch", "slice": "slice", "meet": "meet"}')
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
        if (length(named_list) > 1 && chart_background_background_image_size %in% names(named_list)) {
          if (is.logical(chart_background_background_image_size)) {
            chart_background_background_image_size <- as.character(chart_background_background_image_size)
          }
          named_list_value <- unname(named_list[chart_background_background_image_size])[[1]]
          new_list$x$state$background$background_image_size <- named_list_value
        }
      }
    }
  }
  list_chart_background_background_image_position <- c("x_min_y_min", "x_mid_y_min", "x_max_y_min", "x_max_y_mid", "x_mid_y_mid", "x_min_y_max", "x_mid_y_max", "x_max_y_max", NULL)
  if (!is.null(chart_background_background_image_position)) {
    if (!chart_background_background_image_position %in% list_chart_background_background_image_position) {
      stop("`chart_background_background_image_position` must be one of: c('x_min_y_min', 'x_mid_y_min', 'x_max_y_min', 'x_max_y_mid', 'x_mid_y_mid', 'x_min_y_max', 'x_mid_y_max', 'x_max_y_max')")
    } else {
      if (length(jsonlite::fromJSON('{"x_min_y_min": "xMinYMin", "x_mid_y_min": "xMidYMin", "x_max_y_min": "xMaxYMin", "x_max_y_mid": "xMaxYMid", "x_mid_y_mid": "xMidYMid", "x_min_y_max": "xMinYMax", "x_mid_y_max": "xMidYMax", "x_max_y_max": "xMaxYMax"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"x_min_y_min": "xMinYMin", "x_mid_y_min": "xMidYMin", "x_max_y_min": "xMaxYMin", "x_max_y_mid": "xMaxYMid", "x_mid_y_mid": "xMidYMid", "x_min_y_max": "xMinYMax", "x_mid_y_max": "xMidYMax", "x_max_y_max": "xMaxYMax"}')
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
        if (length(named_list) > 1 && chart_background_background_image_position %in% names(named_list)) {
          if (is.logical(chart_background_background_image_position)) {
            chart_background_background_image_position <- as.character(chart_background_background_image_position)
          }
          named_list_value <- unname(named_list[chart_background_background_image_position])[[1]]
          new_list$x$state$background$background_image_position <- named_list_value
        }
      }
    }
  }
  list_datetime_input_format <- c("auto", "%Y-%m-%dT%H:%M:%S.%LZ", "%Y-%m-%d", "%m/%d/%Y", "%d/%m/%Y", "%d-%b-%y", "%m/%Y", "%m/%y", "%b %Y", "%b %y", "%B %d", "%d %b", "%Y", "%y", "%B", "%b", "%H:%M:%S", "%I:%M %p", "%H:%M", NULL)
  if (!is.null(datetime_input_format)) {
    if (!datetime_input_format %in% list_datetime_input_format) {
      stop("`datetime_input_format` must be one of: c('auto', '%Y-%m-%dT%H:%M:%S.%LZ', '%Y-%m-%d', '%m/%d/%Y', '%d/%m/%Y', '%d-%b-%y', '%m/%Y', '%m/%y', '%b %Y', '%b %y', '%B %d', '%d %b', '%Y', '%y', '%B', '%b', '%H:%M:%S', '%I:%M %p', '%H:%M')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "%Y-%m-%dT%H:%M:%S.%LZ": "%Y-%m-%dT%H:%M:%S.%LZ", "%Y-%m-%d": "%Y-%m-%d", "%m/%d/%Y": "%m/%d/%Y", "%d/%m/%Y": "%d/%m/%Y", "%d-%b-%y": "%d-%b-%y", "%m/%Y": "%m/%Y", "%m/%y": "%m/%y", "%b %Y": "%b %Y", "%b %y": "%b %y", "%B %d": "%B %d", "%d %b": "%d %b", "%Y": "%Y", "%y": "%y", "%B": "%B", "%b": "%b", "%H:%M:%S": "%H:%M:%S", "%I:%M %p": "%I:%M %p", "%H:%M": "%H:%M"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "%Y-%m-%dT%H:%M:%S.%LZ": "%Y-%m-%dT%H:%M:%S.%LZ", "%Y-%m-%d": "%Y-%m-%d", "%m/%d/%Y": "%m/%d/%Y", "%d/%m/%Y": "%d/%m/%Y", "%d-%b-%y": "%d-%b-%y", "%m/%Y": "%m/%Y", "%m/%y": "%m/%y", "%b %Y": "%b %Y", "%b %y": "%b %y", "%B %d": "%B %d", "%d %b": "%d %b", "%Y": "%Y", "%y": "%y", "%B": "%B", "%b": "%b", "%H:%M:%S": "%H:%M:%S", "%I:%M %p": "%I:%M %p", "%H:%M": "%H:%M"}')
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
        if (length(named_list) > 1 && datetime_input_format %in% names(named_list)) {
          if (is.logical(datetime_input_format)) {
            datetime_input_format <- as.character(datetime_input_format)
          }
          named_list_value <- unname(named_list[datetime_input_format])[[1]]
          new_list$x$state$datetime_input_format <- named_list_value
        }
      }
    }
  }
  list_date_format <- c("auto", "%Y-%m-%dT%H:%M:%S.%LZ", "%Y-%m-%d", "%m/%d/%Y", "%d/%m/%Y", "%d-%b-%y", "%m/%Y", "%m/%y", "%b %Y", "%b %y", "%B %d", "%d %b", "%Y", "%y", "%B", "%b", "%A", "%a", "%H:%M:%S", "%I:%M %p", "%H:%M", NULL)
  if (!is.null(date_format)) {
    if (!date_format %in% list_date_format) {
      stop("`date_format` must be one of: c('auto', '%Y-%m-%dT%H:%M:%S.%LZ', '%Y-%m-%d', '%m/%d/%Y', '%d/%m/%Y', '%d-%b-%y', '%m/%Y', '%m/%y', '%b %Y', '%b %y', '%B %d', '%d %b', '%Y', '%y', '%B', '%b', '%A', '%a', '%H:%M:%S', '%I:%M %p', '%H:%M')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "%Y-%m-%dT%H:%M:%S.%LZ": "%Y-%m-%dT%H:%M:%S.%LZ", "%Y-%m-%d": "%Y-%m-%d", "%m/%d/%Y": "%m/%d/%Y", "%d/%m/%Y": "%d/%m/%Y", "%d-%b-%y": "%d-%b-%y", "%m/%Y": "%m/%Y", "%m/%y": "%m/%y", "%b %Y": "%b %Y", "%b %y": "%b %y", "%B %d": "%B %d", "%d %b": "%d %b", "%Y": "%Y", "\u2019%y": "\u2019%y", "%B": "%B", "%b": "%b", "%A": "%A", "%a": "%a", "%H:%M:%S": "%H:%M:%S", "%I:%M %p": "%I:%M %p", "%H:%M": "%H:%M"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "%Y-%m-%dT%H:%M:%S.%LZ": "%Y-%m-%dT%H:%M:%S.%LZ", "%Y-%m-%d": "%Y-%m-%d", "%m/%d/%Y": "%m/%d/%Y", "%d/%m/%Y": "%d/%m/%Y", "%d-%b-%y": "%d-%b-%y", "%m/%Y": "%m/%Y", "%m/%y": "%m/%y", "%b %Y": "%b %Y", "%b %y": "%b %y", "%B %d": "%B %d", "%d %b": "%d %b", "%Y": "%Y", "\u2019%y": "\u2019%y", "%B": "%B", "%b": "%b", "%A": "%A", "%a": "%a", "%H:%M:%S": "%H:%M:%S", "%I:%M %p": "%I:%M %p", "%H:%M": "%H:%M"}')
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
          new_list$x$state$date_format <- named_list_value
        }
      }
    }
  }
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
  new_list$x$state$formatter$prefix <- chart_number_date_format_prefix
  new_list$x$state$formatter$suffix <- chart_number_date_format_suffix
  new_list$x$state$formatter$n_dec <- chart_number_date_format_n_dec
  new_list$x$state$formatter$advanced <- chart_number_date_format_advanced
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
          new_list$x$state$formatter$negative_sign <- named_list_value
        }
      }
    }
  }
  new_list$x$state$formatter$strip_zeros <- chart_number_date_format_strip_zeros
  new_list$x$state$formatter$strip_separator <- chart_number_date_format_strip_separator
  new_list$x$state$formatter$transform_labels <- chart_number_date_format_transform_labels
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
          new_list$x$state$formatter$transform <- named_list_value
        }
      }
    }
  }
  new_list$x$state$formatter$multiply_divide_constant <- chart_number_date_format_multiply_divide_constant
  new_list$x$state$formatter$exponentiate_constant <- chart_number_date_format_exponentiate_constant
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
