#' Set line chart race chart details
#' @name set_horserace_details
#' @param play_mode Play mode. In All mode, the entire X axis is visible In Zoomed mode, the X axis is only visible for a specified amount of stages In Reveal mode, the X axis is visible from the start until the current stage Flourish type hint: string, defaults to `NULL`
#' @param zoom_steps_to_show Visible stages. The number of time slices (each of which is column of data) to show on the X axis.  When in Zoom mode, these time slices are shown to the left and right of the current time.  In Reveal mode, these time slices are shown at the beginning.  (Value is ignored if the number specified is greater than the number of stages in the data.). Flourish type hint: number, defaults to `NULL`
#' @param value_type Chart mode to show on load. Choices: ranks, scores. Flourish type hint: string, defaults to `NULL`
#' @param higher_scores_win Data type. Choices: `TRUE`, `FALSE`. Useful for data where lower scores beat higher scores e.g. race times. Flourish type hint: boolean, defaults to `NULL`
#' @param ties_mode Rank ties mode. Choices: competition, dense. What ranks should be given when there are ties? See Wikipedia for an explanation of names. Flourish type hint: string, defaults to `NULL`
#' @param height_mode Height mode. Choices: auto, fixed, flexible. In Fill space mode, the lines will be spread out over the available chart height, which by default will be the standard Flourish chart sizes for any given screen width. In this mode, the circles/images may overlap if you have lots of lines.  Match data mode will resize the embedded graphic so there is enough vertical space to avoid overlaps. (Note this wont have any effect if you embed the graphic as a fixed height.)  Auto mode switches between the two modes depending on the number of lines. Flourish type hint: string, defaults to `NULL`
#' @param padding_top Top. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param padding_right Right. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param padding_bottom Bottom. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param padding_left Left (mobile). In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param show_buttons Ranks/scores toggle. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param show_replay Replay button. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_filter_controls_control_type Control type. Choices: dropdown, buttons, slider. Choose between a dropdown, buttons or a time slider. Flourish type hint: string, defaults to `NULL`
#' @param chart_filter_controls_control_styles Adv. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_filter_controls_control_title Control title. Flourish type hint: string, defaults to `NULL`
#' @param chart_filter_controls_button_group Grouped. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_filter_controls_button_group_width_mode Button group width. Choices: auto, full, fixed. Flourish type hint: string, defaults to `NULL`
#' @param chart_filter_controls_button_group_width_fixed Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_filter_controls_dropdown_width_mode Dropdown width. Choices: auto, full, fixed. Flourish type hint: string, defaults to `NULL`
#' @param chart_filter_controls_dropdown_width_fixed Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_filter_controls_slider_background_color Background. Flourish type hint: color, defaults to `NULL`
#' @param chart_filter_controls_slider_font_color Text. Flourish type hint: color, defaults to `NULL`
#' @param chart_filter_controls_slider_handle_color Handle. Flourish type hint: color, defaults to `NULL`
#' @param chart_filter_controls_slider_width Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_filter_controls_slider_margin Label width. Flourish type hint: number, defaults to `NULL`
#' @param chart_filter_controls_slider_handle_height Height. Flourish type hint: number, defaults to `NULL`
#' @param chart_filter_controls_slider_track_height Track height. Flourish type hint: number, defaults to `NULL`
#' @param chart_filter_controls_slider_play_button Play button. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_filter_controls_slider_loop Loop. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_filter_controls_slider_step_time Time between steps. Measured in seconds, positive values move the slider left to right, negative values move the slider right to left. Flourish type hint: number, defaults to `NULL`
#' @param chart_filter_controls_slider_restart_pause Pause before loop. Measured in seconds and in addition to the regular step time displayed above. Flourish type hint: number, defaults to `NULL`
#' @param chart_filter_controls_sort Sorting. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param filter_include_all Include “All” option. Flourish type hint: boolean, defaults to `NULL`
#' @param label_ranks “Ranks”. Flourish type hint: string, defaults to `NULL`
#' @param label_scores “Scores”. Flourish type hint: string, defaults to `NULL`
#' @param label_replay “Replay”. Flourish type hint: string, defaults to `NULL`
#' @param filter_all_label “All”. Flourish type hint: string, defaults to `NULL`
#' @param chart_controls_style_font_size Text size. Flourish type hint: number, defaults to `NULL`
#' @param chart_controls_style_font_weight Text weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_controls_style_height Height. Flourish type hint: number, defaults to `NULL`
#' @param chart_button_control_style_background Background. Flourish type hint: color, defaults to `NULL`
#' @param chart_button_control_style_background_selected Selected. Flourish type hint: color, defaults to `NULL`
#' @param chart_button_control_style_background_hover Mouse over. Flourish type hint: color, defaults to `NULL`
#' @param chart_button_control_style_font_color Text color. Flourish type hint: color, defaults to `NULL`
#' @param chart_button_control_style_font_color_selected Selected. Flourish type hint: color, defaults to `NULL`
#' @param chart_button_control_style_font_color_hover Mouse over. Flourish type hint: color, defaults to `NULL`
#' @param chart_button_control_style_button_styles_advanced Button border styles. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_button_control_style_border_width Border width. Flourish type hint: number, defaults to `NULL`
#' @param chart_button_control_style_border_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_button_control_style_border_transparency Transparency. Flourish type hint: number, defaults to `NULL`
#' @param chart_button_control_style_border_radius Radius. Flourish type hint: number, defaults to `NULL`
#' @param chart_dropdown_control_style_background Background. Flourish type hint: color, defaults to `NULL`
#' @param chart_dropdown_control_style_font_color Text color. Flourish type hint: color, defaults to `NULL`
#' @param chart_dropdown_control_style_border_styles_advanced Dropdown border styles. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_dropdown_control_style_border_style Border style. Choices: all, bottom. Show border on all sides, or only at the bottom. Flourish type hint: string, defaults to `NULL`
#' @param chart_dropdown_control_style_border_width Border width. Flourish type hint: number, defaults to `NULL`
#' @param chart_dropdown_control_style_border_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_dropdown_control_style_border_transparency Transparency. Flourish type hint: number, defaults to `NULL`
#' @param chart_dropdown_control_style_border_radius Radius. Flourish type hint: number, defaults to `NULL`
#' @param color_mode Color mode. Choices: category, line, single. Whether to color by category (if you have a category column set in the Datasheet), by each individual line, or give every line the same color. Flourish type hint: string, defaults to `NULL`
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
#' @param color_single Single color. Flourish type hint: color, defaults to `NULL`
#' @param color_single_overrides Color overrides. Type the label of the line whose color you want to set, a colon and then a color (using a name, hex-code or rgb).  Multiple colors can be set using multiple lines. For example:   China: red India: #4455AA Brazil: rgb(30,168,26). Flourish type hint: text, defaults to `NULL`
#' @param line_width Line width. Flourish type hint: number, defaults to `NULL`
#' @param line_opacity Opacity. Flourish type hint: number, defaults to `NULL`
#' @param curve Curve. Choices: curve_linear, curve_monotone_x, curve_natural, curve_step, curve_step_after, curve_step_before. Flourish type hint: string, defaults to `NULL`
#' @param shade Shading behind line. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param shade_width Width. Width in pixels. Flourish type hint: number, defaults to `NULL`
#' @param shade_opacity Opacity. Set to a value between 0 and 1. Flourish type hint: number, defaults to `NULL`
#' @param missing Lines between missing data points. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param missing_opacity Opacity. Flourish type hint: number, defaults to `NULL`
#' @param missing_width Width. Flourish type hint: number, defaults to `NULL`
#' @param missing_stroke_dash Stroke dash. Flourish type hint: number, defaults to `NULL`
#' @param start_circle_r Start radius. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param end_circle_r End radius. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param end_circle_stroke End stroke. Flourish type hint: number, defaults to `NULL`
#' @param circle_space_between Space between. Minimum space between the circles. The space is ignored when the chart is set to fill available space. Flourish type hint: number, defaults to `NULL`
#' @param end_circle_stroke_bg Stroke color. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param horse_images Image inside circle. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param show_labels Show labels. Choices: always, hover, never. Flourish type hint: string, defaults to `NULL`
#' @param animate_scores Animate scores. Flourish type hint: boolean, defaults to `NULL`
#' @param rank_outside_picture Value label position. Choices: `FALSE`, `TRUE`. Flourish type hint: boolean, defaults to `NULL`
#' @param label_divider Divider. The character between label and value. Flourish type hint: string, defaults to `NULL`
#' @param rank_inside_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_labels_max_width Max label width. The maximum allowed label width. Flourish type hint: number, defaults to `NULL`
#' @param chart_labels_overlap_mode Overlaps. Choices: spread, hide, none. What to do with overlaps. Flourish type hint: string, defaults to `NULL`
#' @param chart_labels_spreading_margin Space between labels. The space left between labels when spreading them out to avoid overlaps. Flourish type hint: number, defaults to `NULL`
#' @param chart_labels_data_point_margin Distance. The space between the data point and the label in rems (a multiple of base font size). Flourish type hint: number, defaults to `NULL`
#' @param chart_labels_show_only_labels Show only certain labels. Manually specify which labels youd like to display (one entry per line that should match entries in the Label column). Flourish type hint: text, defaults to `NULL`
#' @param chart_labels_text_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_labels_text_size Size. Flourish type hint: number, defaults to `NULL`
#' @param chart_labels_text_bg_color Outline. Flourish type hint: color, defaults to `NULL`
#' @param chart_labels_text_bg_size Outline width. As a % of the font size. Flourish type hint: number, defaults to `NULL`
#' @param chart_labels_text_line_height Line height. Flourish type hint: number, defaults to `NULL`
#' @param chart_labels_text_max_lines Max lines. The max number of lines for each label. Flourish type hint: number, defaults to `NULL`
#' @param chart_labels_text_weight Weight. Choices: 400, 700. Flourish type hint: string, defaults to `NULL`
#' @param chart_labels_lines Connector lines. Choices: auto, on, off. Flourish type hint: string, defaults to `NULL`
#' @param chart_labels_line_style Line style. Choices: straight, step. Flourish type hint: string, defaults to `NULL`
#' @param chart_labels_line_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_labels_line_width Width. In rems (a multiple of base font size). Flourish type hint: number, defaults to `NULL`
#' @param chart_labels_line_range Length. The width of the space given over to lines; in rems, a multiple of base font size. Flourish type hint: number, defaults to `NULL`
#' @param chart_labels_line_padding Padding. The padding to the left and right of the line; in rems, a multiple of base font size. Flourish type hint: number, defaults to `NULL`
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
#' @param zoom_y_axis Dynamic Y axis. Rescales the y axis when filtering or playing in zoomed mode. Flourish type hint: boolean, defaults to `NULL`
#' @param caption_background_color Background. Flourish type hint: color, defaults to `NULL`
#' @param caption_border_color Border. Flourish type hint: color, defaults to `NULL`
#' @param caption_border_radius Radius. Flourish type hint: number, defaults to `NULL`
#' @param caption_opacity Opacity. Flourish type hint: number, defaults to `NULL`
#' @param caption_padding Padding. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param caption_position Position. Choices: top-left, center-left, bottom-left, top-right, center-right, bottom-right, top-center, center-center, bottom-center. Flourish type hint: string, defaults to `NULL`
#' @param caption_text_width Width. Flourish type hint: number, defaults to `NULL`
#' @param caption_font_size Font size. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param caption_text_weight Weight. Choices: normal, bold. Flourish type hint: string, defaults to `NULL`
#' @param caption_text_color Color. Flourish type hint: color, defaults to `NULL`
#' @param caption_mode Content mode. Choices: text_legend, html. In Text with colors mode, any phrases matching category names will be automatically colored.  In HTML mode, no colors will be applied, but you can include any HTML in the datasheet to add images, etc. Flourish type hint: string, defaults to `NULL`
#' @param caption_text_align_h Horizontal align. Choices: start, center, end. Flourish type hint: string, defaults to `NULL`
#' @param caption_text_align_v Vertical align. Choices: flex-start, center, flex-end. Flourish type hint: string, defaults to `NULL`
#' @param caption_image_width Width. Flourish type hint: number, defaults to `NULL`
#' @param caption_image_position Position. Choices: column, column-reverse, row, row-reverse. Flourish type hint: string, defaults to `NULL`
#' @param caption_space_between Space between. Space between image and text. Flourish type hint: number, defaults to `NULL`
#' @param stage_duration Animation duration. The race animation length, in milliseconds per stage(A stage is equal to each column of your data). Flourish type hint: number, defaults to `NULL`
#' @param update_duration Mode duration. The animation duration when change between ranks and scores modes. Flourish type hint: number, defaults to `NULL`
#' @param chart_number_date_format_prefix Prefix. Text to place in front of a number. Flourish type hint: string, defaults to `NULL`
#' @param chart_number_date_format_suffix Suffix. Text to place after a number. Flourish type hint: string, defaults to `NULL`
#' @param chart_number_date_format_n_dec Decimal places. Decimal places. You can also enter a negative integer to round to a whole number with that many zeros. For example, -2 will round to the nearest hundred. Flourish type hint: number, defaults to `NULL`
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
#'   flourish(chart_type = "horserace", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_horserace_data(gapminder) |> 
#'   set_horserace_details()
#' )
#' @export

set_horserace_details <- function(
    .,
    play_mode = NULL,
    zoom_steps_to_show = NULL,
    value_type = NULL,
    higher_scores_win = NULL,
    ties_mode = NULL,
    height_mode = NULL,
    padding_top = NULL,
    padding_right = NULL,
    padding_bottom = NULL,
    padding_left = NULL,
    show_buttons = NULL,
    show_replay = NULL,
    chart_filter_controls_control_type = NULL,
    chart_filter_controls_control_styles = NULL,
    chart_filter_controls_control_title = NULL,
    chart_filter_controls_button_group = NULL,
    chart_filter_controls_button_group_width_mode = NULL,
    chart_filter_controls_button_group_width_fixed = NULL,
    chart_filter_controls_dropdown_width_mode = NULL,
    chart_filter_controls_dropdown_width_fixed = NULL,
    chart_filter_controls_slider_background_color = NULL,
    chart_filter_controls_slider_font_color = NULL,
    chart_filter_controls_slider_handle_color = NULL,
    chart_filter_controls_slider_width = NULL,
    chart_filter_controls_slider_margin = NULL,
    chart_filter_controls_slider_handle_height = NULL,
    chart_filter_controls_slider_track_height = NULL,
    chart_filter_controls_slider_play_button = NULL,
    chart_filter_controls_slider_loop = NULL,
    chart_filter_controls_slider_step_time = NULL,
    chart_filter_controls_slider_restart_pause = NULL,
    chart_filter_controls_sort = NULL,
    filter_include_all = NULL,
    label_ranks = NULL,
    label_scores = NULL,
    label_replay = NULL,
    filter_all_label = NULL,
    chart_controls_style_font_size = NULL,
    chart_controls_style_font_weight = NULL,
    chart_controls_style_height = NULL,
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
    chart_dropdown_control_style_background = NULL,
    chart_dropdown_control_style_font_color = NULL,
    chart_dropdown_control_style_border_styles_advanced = NULL,
    chart_dropdown_control_style_border_style = NULL,
    chart_dropdown_control_style_border_width = NULL,
    chart_dropdown_control_style_border_color = NULL,
    chart_dropdown_control_style_border_transparency = NULL,
    chart_dropdown_control_style_border_radius = NULL,
    color_mode = NULL,
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
    color_single = NULL,
    color_single_overrides = NULL,
    line_width = NULL,
    line_opacity = NULL,
    curve = NULL,
    shade = NULL,
    shade_width = NULL,
    shade_opacity = NULL,
    missing = NULL,
    missing_opacity = NULL,
    missing_width = NULL,
    missing_stroke_dash = NULL,
    start_circle_r = NULL,
    end_circle_r = NULL,
    end_circle_stroke = NULL,
    circle_space_between = NULL,
    end_circle_stroke_bg = NULL,
    horse_images = NULL,
    show_labels = NULL,
    animate_scores = NULL,
    rank_outside_picture = NULL,
    label_divider = NULL,
    rank_inside_color = NULL,
    chart_labels_max_width = NULL,
    chart_labels_overlap_mode = NULL,
    chart_labels_spreading_margin = NULL,
    chart_labels_data_point_margin = NULL,
    chart_labels_show_only_labels = NULL,
    chart_labels_text_color = NULL,
    chart_labels_text_size = NULL,
    chart_labels_text_bg_color = NULL,
    chart_labels_text_bg_size = NULL,
    chart_labels_text_line_height = NULL,
    chart_labels_text_max_lines = NULL,
    chart_labels_text_weight = NULL,
    chart_labels_lines = NULL,
    chart_labels_line_style = NULL,
    chart_labels_line_color = NULL,
    chart_labels_line_width = NULL,
    chart_labels_line_range = NULL,
    chart_labels_line_padding = NULL,
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
    zoom_y_axis = NULL,
    caption_background_color = NULL,
    caption_border_color = NULL,
    caption_border_radius = NULL,
    caption_opacity = NULL,
    caption_padding = NULL,
    caption_position = NULL,
    caption_text_width = NULL,
    caption_font_size = NULL,
    caption_text_weight = NULL,
    caption_text_color = NULL,
    caption_mode = NULL,
    caption_text_align_h = NULL,
    caption_text_align_v = NULL,
    caption_image_width = NULL,
    caption_image_position = NULL,
    caption_space_between = NULL,
    stage_duration = NULL,
    update_duration = NULL,
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
  details_error(., "horserace")

  old_list <- .
  new_list <- list()

  if (isTRUE(old_list$x$template != "@flourish/horserace")) {
    stop("`set_horserace_details()` is not supported for this chart type.")
  }
  new_list$x$state$play_mode <- play_mode
  new_list$x$state$zoom_steps_to_show <- zoom_steps_to_show
  list_value_type <- c("ranks", "scores", NULL)
  if (!is.null(value_type)) {
    if (!value_type %in% list_value_type) {
      stop("`value_type` must be one of: c('ranks', 'scores')")
    } else {
      if (length(jsonlite::fromJSON('{"ranks": "ranks", "scores": "scores"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"ranks": "ranks", "scores": "scores"}')
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
        if (length(named_list) > 1 && value_type %in% names(named_list)) {
          if (is.logical(value_type)) {
            value_type <- as.character(value_type)
          }
          named_list_value <- unname(named_list[value_type])[[1]]
          new_list$x$state$value_type <- named_list_value
        }
      }
    }
  }
  list_higher_scores_win <- c(TRUE, FALSE, NULL)
  if (!is.null(higher_scores_win)) {
    if (!higher_scores_win %in% list_higher_scores_win) {
      stop("`higher_scores_win` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && higher_scores_win %in% names(named_list)) {
          if (is.logical(higher_scores_win)) {
            higher_scores_win <- as.character(higher_scores_win)
          }
          named_list_value <- unname(named_list[higher_scores_win])[[1]]
          new_list$x$state$higher_scores_win <- named_list_value
        }
      }
    }
  }
  list_ties_mode <- c("competition", "dense", NULL)
  if (!is.null(ties_mode)) {
    if (!ties_mode %in% list_ties_mode) {
      stop("`ties_mode` must be one of: c('competition', 'dense')")
    } else {
      if (length(jsonlite::fromJSON('{"competition": "competition", "dense": "dense"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"competition": "competition", "dense": "dense"}')
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
        if (length(named_list) > 1 && ties_mode %in% names(named_list)) {
          if (is.logical(ties_mode)) {
            ties_mode <- as.character(ties_mode)
          }
          named_list_value <- unname(named_list[ties_mode])[[1]]
          new_list$x$state$ties_mode <- named_list_value
        }
      }
    }
  }
  list_height_mode <- c("auto", "fixed", "flexible", NULL)
  if (!is.null(height_mode)) {
    if (!height_mode %in% list_height_mode) {
      stop("`height_mode` must be one of: c('auto', 'fixed', 'flexible')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "fixed": "fixed", "flexible": "flexible"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "fixed": "fixed", "flexible": "flexible"}')
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
        if (length(named_list) > 1 && height_mode %in% names(named_list)) {
          if (is.logical(height_mode)) {
            height_mode <- as.character(height_mode)
          }
          named_list_value <- unname(named_list[height_mode])[[1]]
          new_list$x$state$height_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$padding_top <- padding_top
  new_list$x$state$padding_right <- padding_right
  new_list$x$state$padding_bottom <- padding_bottom
  new_list$x$state$padding_left <- padding_left
  list_show_buttons <- c(TRUE, FALSE, NULL)
  if (!is.null(show_buttons)) {
    if (!show_buttons %in% list_show_buttons) {
      stop("`show_buttons` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && show_buttons %in% names(named_list)) {
          if (is.logical(show_buttons)) {
            show_buttons <- as.character(show_buttons)
          }
          named_list_value <- unname(named_list[show_buttons])[[1]]
          new_list$x$state$show_buttons <- named_list_value
        }
      }
    }
  }
  list_show_replay <- c(TRUE, FALSE, NULL)
  if (!is.null(show_replay)) {
    if (!show_replay %in% list_show_replay) {
      stop("`show_replay` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && show_replay %in% names(named_list)) {
          if (is.logical(show_replay)) {
            show_replay <- as.character(show_replay)
          }
          named_list_value <- unname(named_list[show_replay])[[1]]
          new_list$x$state$show_replay <- named_list_value
        }
      }
    }
  }
  list_chart_filter_controls_control_type <- c("dropdown", "buttons", "slider", NULL)
  if (!is.null(chart_filter_controls_control_type)) {
    if (!chart_filter_controls_control_type %in% list_chart_filter_controls_control_type) {
      stop("`chart_filter_controls_control_type` must be one of: c('dropdown', 'buttons', 'slider')")
    } else {
      if (length(jsonlite::fromJSON('{"dropdown": "dropdown", "buttons": "buttons", "slider": "slider"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"dropdown": "dropdown", "buttons": "buttons", "slider": "slider"}')
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
        if (length(named_list) > 1 && chart_filter_controls_control_type %in% names(named_list)) {
          if (is.logical(chart_filter_controls_control_type)) {
            chart_filter_controls_control_type <- as.character(chart_filter_controls_control_type)
          }
          named_list_value <- unname(named_list[chart_filter_controls_control_type])[[1]]
          new_list$x$state$filter_control$control_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$filter_control$control_styles <- chart_filter_controls_control_styles
  new_list$x$state$filter_control$control_title <- chart_filter_controls_control_title
  list_chart_filter_controls_button_group <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_filter_controls_button_group)) {
    if (!chart_filter_controls_button_group %in% list_chart_filter_controls_button_group) {
      stop("`chart_filter_controls_button_group` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_filter_controls_button_group %in% names(named_list)) {
          if (is.logical(chart_filter_controls_button_group)) {
            chart_filter_controls_button_group <- as.character(chart_filter_controls_button_group)
          }
          named_list_value <- unname(named_list[chart_filter_controls_button_group])[[1]]
          new_list$x$state$filter_control$button_group <- named_list_value
        }
      }
    }
  }
  list_chart_filter_controls_button_group_width_mode <- c("auto", "full", "fixed", NULL)
  if (!is.null(chart_filter_controls_button_group_width_mode)) {
    if (!chart_filter_controls_button_group_width_mode %in% list_chart_filter_controls_button_group_width_mode) {
      stop("`chart_filter_controls_button_group_width_mode` must be one of: c('auto', 'full', 'fixed')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "full": "full", "fixed": "fixed"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "full": "full", "fixed": "fixed"}')
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
        if (length(named_list) > 1 && chart_filter_controls_button_group_width_mode %in% names(named_list)) {
          if (is.logical(chart_filter_controls_button_group_width_mode)) {
            chart_filter_controls_button_group_width_mode <- as.character(chart_filter_controls_button_group_width_mode)
          }
          named_list_value <- unname(named_list[chart_filter_controls_button_group_width_mode])[[1]]
          new_list$x$state$filter_control$button_group_width_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$filter_control$button_group_width_fixed <- chart_filter_controls_button_group_width_fixed
  list_chart_filter_controls_dropdown_width_mode <- c("auto", "full", "fixed", NULL)
  if (!is.null(chart_filter_controls_dropdown_width_mode)) {
    if (!chart_filter_controls_dropdown_width_mode %in% list_chart_filter_controls_dropdown_width_mode) {
      stop("`chart_filter_controls_dropdown_width_mode` must be one of: c('auto', 'full', 'fixed')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "full": "full", "fixed": "fixed"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "full": "full", "fixed": "fixed"}')
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
        if (length(named_list) > 1 && chart_filter_controls_dropdown_width_mode %in% names(named_list)) {
          if (is.logical(chart_filter_controls_dropdown_width_mode)) {
            chart_filter_controls_dropdown_width_mode <- as.character(chart_filter_controls_dropdown_width_mode)
          }
          named_list_value <- unname(named_list[chart_filter_controls_dropdown_width_mode])[[1]]
          new_list$x$state$filter_control$dropdown_width_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$filter_control$dropdown_width_fixed <- chart_filter_controls_dropdown_width_fixed
  new_list$x$state$filter_control$slider_background_color <- chart_filter_controls_slider_background_color
  new_list$x$state$filter_control$slider_font_color <- chart_filter_controls_slider_font_color
  new_list$x$state$filter_control$slider_handle_color <- chart_filter_controls_slider_handle_color
  new_list$x$state$filter_control$slider_width <- chart_filter_controls_slider_width
  new_list$x$state$filter_control$slider_margin <- chart_filter_controls_slider_margin
  new_list$x$state$filter_control$slider_handle_height <- chart_filter_controls_slider_handle_height
  new_list$x$state$filter_control$slider_track_height <- chart_filter_controls_slider_track_height
  new_list$x$state$filter_control$slider_play_button <- chart_filter_controls_slider_play_button
  new_list$x$state$filter_control$slider_loop <- chart_filter_controls_slider_loop
  new_list$x$state$filter_control$slider_step_time <- chart_filter_controls_slider_step_time
  new_list$x$state$filter_control$slider_restart_pause <- chart_filter_controls_slider_restart_pause
  list_chart_filter_controls_sort <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_filter_controls_sort)) {
    if (!chart_filter_controls_sort %in% list_chart_filter_controls_sort) {
      stop("`chart_filter_controls_sort` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_filter_controls_sort %in% names(named_list)) {
          if (is.logical(chart_filter_controls_sort)) {
            chart_filter_controls_sort <- as.character(chart_filter_controls_sort)
          }
          named_list_value <- unname(named_list[chart_filter_controls_sort])[[1]]
          new_list$x$state$filter_control$sort <- named_list_value
        }
      }
    }
  }
  new_list$x$state$filter_include_all <- filter_include_all
  new_list$x$state$label_ranks <- label_ranks
  new_list$x$state$label_scores <- label_scores
  new_list$x$state$label_replay <- label_replay
  new_list$x$state$filter_all_label <- filter_all_label
  new_list$x$state$controls_style$font_size <- chart_controls_style_font_size
  list_chart_controls_style_font_weight <- c("bold", "normal", NULL)
  if (!is.null(chart_controls_style_font_weight)) {
    if (!chart_controls_style_font_weight %in% list_chart_controls_style_font_weight) {
      stop("`chart_controls_style_font_weight` must be one of: c('bold', 'normal')")
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
        if (length(named_list) > 1 && chart_controls_style_font_weight %in% names(named_list)) {
          if (is.logical(chart_controls_style_font_weight)) {
            chart_controls_style_font_weight <- as.character(chart_controls_style_font_weight)
          }
          named_list_value <- unname(named_list[chart_controls_style_font_weight])[[1]]
          new_list$x$state$controls_style$font_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$controls_style$height <- chart_controls_style_height
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
  list_color_mode <- c("category", "line", "single", NULL)
  if (!is.null(color_mode)) {
    if (!color_mode %in% list_color_mode) {
      stop("`color_mode` must be one of: c('category', 'line', 'single')")
    } else {
      if (length(jsonlite::fromJSON('{"category": "category", "line": "line", "single": "single"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"category": "category", "line": "line", "single": "single"}')
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
        if (length(named_list) > 1 && color_mode %in% names(named_list)) {
          if (is.logical(color_mode)) {
            color_mode <- as.character(color_mode)
          }
          named_list_value <- unname(named_list[color_mode])[[1]]
          new_list$x$state$color_mode <- named_list_value
        }
      }
    }
  }
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
  new_list$x$state$color_single <- color_single
  if (length(color_single_overrides) > 1) {
    new_list$x$state$color_single_overrides <- paste(color_single_overrides, collapse = "\n")
  } else {
    new_list$x$state$color_single_overrides <- color_single_overrides
  }

  new_list$x$state$line_width <- line_width
  new_list$x$state$line_opacity <- line_opacity
  list_curve <- c("curve_linear", "curve_monotone_x", "curve_natural", "curve_step", "curve_step_after", "curve_step_before", NULL)
  if (!is.null(curve)) {
    if (!curve %in% list_curve) {
      stop("`curve` must be one of: c('curve_linear', 'curve_monotone_x', 'curve_natural', 'curve_step', 'curve_step_after', 'curve_step_before')")
    } else {
      if (length(jsonlite::fromJSON('{"curve_linear": "curveLinear", "curve_monotone_x": "curveMonotoneX", "curve_natural": "curveNatural", "curve_step": "curveStep", "curve_step_after": "curveStepAfter", "curve_step_before": "curveStepBefore"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"curve_linear": "curveLinear", "curve_monotone_x": "curveMonotoneX", "curve_natural": "curveNatural", "curve_step": "curveStep", "curve_step_after": "curveStepAfter", "curve_step_before": "curveStepBefore"}')
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
        if (length(named_list) > 1 && curve %in% names(named_list)) {
          if (is.logical(curve)) {
            curve <- as.character(curve)
          }
          named_list_value <- unname(named_list[curve])[[1]]
          new_list$x$state$curve <- named_list_value
        }
      }
    }
  }
  list_shade <- c(TRUE, FALSE, NULL)
  if (!is.null(shade)) {
    if (!shade %in% list_shade) {
      stop("`shade` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && shade %in% names(named_list)) {
          if (is.logical(shade)) {
            shade <- as.character(shade)
          }
          named_list_value <- unname(named_list[shade])[[1]]
          new_list$x$state$shade <- named_list_value
        }
      }
    }
  }
  new_list$x$state$shade_width <- shade_width
  new_list$x$state$shade_opacity <- shade_opacity
  list_missing <- c(TRUE, FALSE, NULL)
  if (!is.null(missing)) {
    if (!missing %in% list_missing) {
      stop("`missing` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && missing %in% names(named_list)) {
          if (is.logical(missing)) {
            missing <- as.character(missing)
          }
          named_list_value <- unname(named_list[missing])[[1]]
          new_list$x$state$missing <- named_list_value
        }
      }
    }
  }
  new_list$x$state$missing_opacity <- missing_opacity
  new_list$x$state$missing_width <- missing_width
  new_list$x$state$missing_stroke_dash <- missing_stroke_dash
  new_list$x$state$start_circle_r <- start_circle_r
  new_list$x$state$end_circle_r <- end_circle_r
  new_list$x$state$end_circle_stroke <- end_circle_stroke
  new_list$x$state$circle_space_between <- circle_space_between
  list_end_circle_stroke_bg <- c(TRUE, FALSE, NULL)
  if (!is.null(end_circle_stroke_bg)) {
    if (!end_circle_stroke_bg %in% list_end_circle_stroke_bg) {
      stop("`end_circle_stroke_bg` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && end_circle_stroke_bg %in% names(named_list)) {
          if (is.logical(end_circle_stroke_bg)) {
            end_circle_stroke_bg <- as.character(end_circle_stroke_bg)
          }
          named_list_value <- unname(named_list[end_circle_stroke_bg])[[1]]
          new_list$x$state$end_circle_stroke_bg <- named_list_value
        }
      }
    }
  }
  list_horse_images <- c(TRUE, FALSE, NULL)
  if (!is.null(horse_images)) {
    if (!horse_images %in% list_horse_images) {
      stop("`horse_images` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && horse_images %in% names(named_list)) {
          if (is.logical(horse_images)) {
            horse_images <- as.character(horse_images)
          }
          named_list_value <- unname(named_list[horse_images])[[1]]
          new_list$x$state$horse_images <- named_list_value
        }
      }
    }
  }
  list_show_labels <- c("always", "hover", "never", NULL)
  if (!is.null(show_labels)) {
    if (!show_labels %in% list_show_labels) {
      stop("`show_labels` must be one of: c('always', 'hover', 'never')")
    } else {
      if (length(jsonlite::fromJSON('{"always": "always", "hover": "hover", "never": "never"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"always": "always", "hover": "hover", "never": "never"}')
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
        if (length(named_list) > 1 && show_labels %in% names(named_list)) {
          if (is.logical(show_labels)) {
            show_labels <- as.character(show_labels)
          }
          named_list_value <- unname(named_list[show_labels])[[1]]
          new_list$x$state$show_labels <- named_list_value
        }
      }
    }
  }
  new_list$x$state$animate_scores <- animate_scores
  list_rank_outside_picture <- c(FALSE, TRUE, NULL)
  if (!is.null(rank_outside_picture)) {
    if (!rank_outside_picture %in% list_rank_outside_picture) {
      stop("`rank_outside_picture` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && rank_outside_picture %in% names(named_list)) {
          if (is.logical(rank_outside_picture)) {
            rank_outside_picture <- as.character(rank_outside_picture)
          }
          named_list_value <- unname(named_list[rank_outside_picture])[[1]]
          new_list$x$state$rank_outside_picture <- named_list_value
        }
      }
    }
  }
  new_list$x$state$label_divider <- label_divider
  new_list$x$state$rank_inside_color <- rank_inside_color
  new_list$x$state$labels$max_width <- chart_labels_max_width
  list_chart_labels_overlap_mode <- c("spread", "hide", "none", NULL)
  if (!is.null(chart_labels_overlap_mode)) {
    if (!chart_labels_overlap_mode %in% list_chart_labels_overlap_mode) {
      stop("`chart_labels_overlap_mode` must be one of: c('spread', 'hide', 'none')")
    } else {
      if (length(jsonlite::fromJSON('{"spread": "spread", "hide": "hide", "none": "none"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"spread": "spread", "hide": "hide", "none": "none"}')
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
        if (length(named_list) > 1 && chart_labels_overlap_mode %in% names(named_list)) {
          if (is.logical(chart_labels_overlap_mode)) {
            chart_labels_overlap_mode <- as.character(chart_labels_overlap_mode)
          }
          named_list_value <- unname(named_list[chart_labels_overlap_mode])[[1]]
          new_list$x$state$labels$overlap_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$labels$spreading_margin <- chart_labels_spreading_margin
  new_list$x$state$labels$data_point_margin <- chart_labels_data_point_margin
  if (length(chart_labels_show_only_labels) > 1) {
    new_list$x$state$labels$show_only_labels <- paste(chart_labels_show_only_labels, collapse = "\n")
  } else {
    new_list$x$state$labels$show_only_labels <- chart_labels_show_only_labels
  }

  new_list$x$state$labels$text_color <- chart_labels_text_color
  new_list$x$state$labels$text_size <- chart_labels_text_size
  new_list$x$state$labels$text_bg_color <- chart_labels_text_bg_color
  new_list$x$state$labels$text_bg_size <- chart_labels_text_bg_size
  new_list$x$state$labels$text_line_height <- chart_labels_text_line_height
  new_list$x$state$labels$text_max_lines <- chart_labels_text_max_lines
  list_chart_labels_text_weight <- c(400, 700, NULL)
  if (!is.null(chart_labels_text_weight)) {
    if (!chart_labels_text_weight %in% list_chart_labels_text_weight) {
      stop("`chart_labels_text_weight` must be one of: c(400, 700)")
    } else {
      if (length(jsonlite::fromJSON('{"400": 400, "700": 700}')) > 1) {
        named_list <- jsonlite::fromJSON('{"400": 400, "700": 700}')
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
        if (length(named_list) > 1 && chart_labels_text_weight %in% names(named_list)) {
          if (is.logical(chart_labels_text_weight)) {
            chart_labels_text_weight <- as.character(chart_labels_text_weight)
          }
          named_list_value <- unname(named_list[chart_labels_text_weight])[[1]]
          new_list$x$state$labels$text_weight <- named_list_value
        }
      }
    }
  }
  list_chart_labels_lines <- c("auto", "on", "off", NULL)
  if (!is.null(chart_labels_lines)) {
    if (!chart_labels_lines %in% list_chart_labels_lines) {
      stop("`chart_labels_lines` must be one of: c('auto', 'on', 'off')")
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
        if (length(named_list) > 1 && chart_labels_lines %in% names(named_list)) {
          if (is.logical(chart_labels_lines)) {
            chart_labels_lines <- as.character(chart_labels_lines)
          }
          named_list_value <- unname(named_list[chart_labels_lines])[[1]]
          new_list$x$state$labels$lines <- named_list_value
        }
      }
    }
  }
  list_chart_labels_line_style <- c("straight", "step", NULL)
  if (!is.null(chart_labels_line_style)) {
    if (!chart_labels_line_style %in% list_chart_labels_line_style) {
      stop("`chart_labels_line_style` must be one of: c('straight', 'step')")
    } else {
      if (length(jsonlite::fromJSON('{"straight": "straight", "step": "step"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"straight": "straight", "step": "step"}')
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
        if (length(named_list) > 1 && chart_labels_line_style %in% names(named_list)) {
          if (is.logical(chart_labels_line_style)) {
            chart_labels_line_style <- as.character(chart_labels_line_style)
          }
          named_list_value <- unname(named_list[chart_labels_line_style])[[1]]
          new_list$x$state$labels$line_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$labels$line_color <- chart_labels_line_color
  new_list$x$state$labels$line_width <- chart_labels_line_width
  new_list$x$state$labels$line_range <- chart_labels_line_range
  new_list$x$state$labels$line_padding <- chart_labels_line_padding
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
  new_list$x$state$zoom_y_axis <- zoom_y_axis
  new_list$x$state$caption_background_color <- caption_background_color
  new_list$x$state$caption_border_color <- caption_border_color
  new_list$x$state$caption_border_radius <- caption_border_radius
  new_list$x$state$caption_opacity <- caption_opacity
  new_list$x$state$caption_padding <- caption_padding
  list_caption_position <- c("top-left", "center-left", "bottom-left", "top-right", "center-right", "bottom-right", "top-center", "center-center", "bottom-center", NULL)
  if (!is.null(caption_position)) {
    if (!caption_position %in% list_caption_position) {
      stop("`caption_position` must be one of: c('top-left', 'center-left', 'bottom-left', 'top-right', 'center-right', 'bottom-right', 'top-center', 'center-center', 'bottom-center')")
    } else {
      if (length(jsonlite::fromJSON('{"top-left": "top-left", "center-left": "center-left", "bottom-left": "bottom-left", "top-right": "top-right", "center-right": "center-right", "bottom-right": "bottom-right", "top-center": "top-center", "center-center": "center-center", "bottom-center": "bottom-center"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"top-left": "top-left", "center-left": "center-left", "bottom-left": "bottom-left", "top-right": "top-right", "center-right": "center-right", "bottom-right": "bottom-right", "top-center": "top-center", "center-center": "center-center", "bottom-center": "bottom-center"}')
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
        if (length(named_list) > 1 && caption_position %in% names(named_list)) {
          if (is.logical(caption_position)) {
            caption_position <- as.character(caption_position)
          }
          named_list_value <- unname(named_list[caption_position])[[1]]
          new_list$x$state$caption_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$caption_text_width <- caption_text_width
  new_list$x$state$caption_font_size <- caption_font_size
  list_caption_text_weight <- c("normal", "bold", NULL)
  if (!is.null(caption_text_weight)) {
    if (!caption_text_weight %in% list_caption_text_weight) {
      stop("`caption_text_weight` must be one of: c('normal', 'bold')")
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
        if (length(named_list) > 1 && caption_text_weight %in% names(named_list)) {
          if (is.logical(caption_text_weight)) {
            caption_text_weight <- as.character(caption_text_weight)
          }
          named_list_value <- unname(named_list[caption_text_weight])[[1]]
          new_list$x$state$caption_text_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$caption_text_color <- caption_text_color
  list_caption_mode <- c("text_legend", "html", NULL)
  if (!is.null(caption_mode)) {
    if (!caption_mode %in% list_caption_mode) {
      stop("`caption_mode` must be one of: c('text_legend', 'html')")
    } else {
      if (length(jsonlite::fromJSON('{"text_legend": "text_legend", "html": "html"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"text_legend": "text_legend", "html": "html"}')
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
        if (length(named_list) > 1 && caption_mode %in% names(named_list)) {
          if (is.logical(caption_mode)) {
            caption_mode <- as.character(caption_mode)
          }
          named_list_value <- unname(named_list[caption_mode])[[1]]
          new_list$x$state$caption_mode <- named_list_value
        }
      }
    }
  }
  list_caption_text_align_h <- c("start", "center", "end", NULL)
  if (!is.null(caption_text_align_h)) {
    if (!caption_text_align_h %in% list_caption_text_align_h) {
      stop("`caption_text_align_h` must be one of: c('start', 'center', 'end')")
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
        if (length(named_list) > 1 && caption_text_align_h %in% names(named_list)) {
          if (is.logical(caption_text_align_h)) {
            caption_text_align_h <- as.character(caption_text_align_h)
          }
          named_list_value <- unname(named_list[caption_text_align_h])[[1]]
          new_list$x$state$caption_text_align_h <- named_list_value
        }
      }
    }
  }
  list_caption_text_align_v <- c("flex-start", "center", "flex-end", NULL)
  if (!is.null(caption_text_align_v)) {
    if (!caption_text_align_v %in% list_caption_text_align_v) {
      stop("`caption_text_align_v` must be one of: c('flex-start', 'center', 'flex-end')")
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
        if (length(named_list) > 1 && caption_text_align_v %in% names(named_list)) {
          if (is.logical(caption_text_align_v)) {
            caption_text_align_v <- as.character(caption_text_align_v)
          }
          named_list_value <- unname(named_list[caption_text_align_v])[[1]]
          new_list$x$state$caption_text_align_v <- named_list_value
        }
      }
    }
  }
  new_list$x$state$caption_image_width <- caption_image_width
  list_caption_image_position <- c("column", "column-reverse", "row", "row-reverse", NULL)
  if (!is.null(caption_image_position)) {
    if (!caption_image_position %in% list_caption_image_position) {
      stop("`caption_image_position` must be one of: c('column', 'column-reverse', 'row', 'row-reverse')")
    } else {
      if (length(jsonlite::fromJSON('{"column": "column", "column-reverse": "column-reverse", "row": "row", "row-reverse": "row-reverse"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"column": "column", "column-reverse": "column-reverse", "row": "row", "row-reverse": "row-reverse"}')
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
        if (length(named_list) > 1 && caption_image_position %in% names(named_list)) {
          if (is.logical(caption_image_position)) {
            caption_image_position <- as.character(caption_image_position)
          }
          named_list_value <- unname(named_list[caption_image_position])[[1]]
          new_list$x$state$caption_image_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$caption_space_between <- caption_space_between
  new_list$x$state$stage_duration <- stage_duration
  new_list$x$state$update_duration <- update_duration
  new_list$x$state$formatting$prefix <- chart_number_date_format_prefix
  new_list$x$state$formatting$suffix <- chart_number_date_format_suffix
  new_list$x$state$formatting$n_dec <- chart_number_date_format_n_dec
  new_list$x$state$formatting$advanced <- chart_number_date_format_advanced
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
          new_list$x$state$formatting$negative_sign <- named_list_value
        }
      }
    }
  }
  new_list$x$state$formatting$strip_zeros <- chart_number_date_format_strip_zeros
  new_list$x$state$formatting$strip_separator <- chart_number_date_format_strip_separator
  new_list$x$state$formatting$transform_labels <- chart_number_date_format_transform_labels
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
          new_list$x$state$formatting$transform <- named_list_value
        }
      }
    }
  }
  new_list$x$state$formatting$multiply_divide_constant <- chart_number_date_format_multiply_divide_constant
  new_list$x$state$formatting$exponentiate_constant <- chart_number_date_format_exponentiate_constant
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
