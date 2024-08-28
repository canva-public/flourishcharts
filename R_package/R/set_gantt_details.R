#' Set gantt chart chart details
#' @name set_gantt_details
#' @param gantt_height Height. Choose the height of each bar in rems (i.e. it will scale up and down in relation to screen size). Flourish type hint: number, defaults to `NULL`
#' @param gantt_padding Padding. Flourish type hint: number, defaults to `NULL`
#' @param border_radius Roundness. Flourish type hint: number, defaults to `NULL`
#' @param border_width Border width. Flourish type hint: number, defaults to `NULL`
#' @param border_color Border color. Flourish type hint: color, defaults to `NULL`
#' @param gantt_progress Show progress. Choices: `TRUE`, `FALSE`. If enabled, each bar will be filled with an overlay relating to the value supplied in the Progress column. Flourish type hint: boolean, defaults to `NULL`
#' @param gantt_text Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param gantt_font_size Size. Flourish type hint: number, defaults to `NULL`
#' @param gantt_text_color Color. Flourish type hint: color, defaults to `NULL`
#' @param gantt_font_weight Weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param missing_value_label Label for missing values. If a bar dosent have a category, the legend will show the placeholder value.. Flourish type hint: string, defaults to `NULL`
#' @param scale_type Scale type. Choices: categorical, numeric. Flourish type hint: string, defaults to `NULL`
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
#' @param color_single Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_background_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_background_opacity Opacity. Flourish type hint: number, defaults to `NULL`
#' @param chart_background_panels Area. Choices: `FALSE`, `TRUE`. Flourish type hint: boolean, defaults to `NULL`
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
#' @param date_format Format in data sheet. Choices: auto, %Y-%m-%dT%H:%M:%S.%LZ, %Y-%m-%d, %m/%d/%Y, %d/%m/%Y, %d-%b-%y, %m/%Y, %b %Y, %b %y, %B %d, %d %b, %Y, %B, %b, %A, %a, %H:%M:%S, %I:%M %p, %H:%M. The date/time format in your datasheet.  If it isnt in the list, you can enter a custom format using d3-time-format syntax. See npm - d3 time format for details. Flourish type hint: string, defaults to `NULL`
#' @param format_locale Date and time locale. Choices: none, ady, af-_n_a, af-_z_a, af, ak, ar-_m_a, ar-_s_a, hy-_a_m, ay-_b_o, eu-_e_s, be-_b_y, bn-_b_d, bn-_i_n, bn, bs-_b_a, my, ck-_u_s, zh-_c_n, zh-_s_g, zh-_hans, zh-_h_k, zh-_t_w, zh-_hant, zh, gx-_g_r, nl-_b_e, nl-_n_l, nl, en-_a_u, en-_c_a, en-_i_n, en-_i_e, en@pirate, en-_z_a, en-_g_b, en-_u_d, en-_u_s, en, eo-_e_o, et-_e_e, fo-_f_o, fi-_f_i, fr-_b_e, fr-_c_a, fr-_f_r, fr-_c_h, fr, fy-_n_l, ff, gl-_e_s, ka-_g_e, de-_a_t, de-_d_e, de-_c_h, de, el-_g_r, el, gn-_p_y, gu-_i_n, ht, is-_i_s, is, ga-_i_e, ga, jv-_i_d, kab, kn-_i_n, kn, cak, kk-_k_z, tlh, ko-_k_r, ko, ku-_t_r, fb-_l_t, li-_n_l, dsb, lb, mk-_m_k, mk, mai, mg-_m_g, mn-_m_n, se-_n_o, nn-_n_o, no, oc, or-_i_n, ps-_a_f, i_r, pt-_b_r, pt-_p_t, pt, pa-_i_n, pa, qu-_p_e, rm-_c_h, sa-_i_n, sr-_r_s, sr, si-_l_k, sk-_s_k, sk, so-_s_o, es-_a_r, es-_c_l, es-_c_o, es-_e_c, es-_m_x, es-_n_i, es-_e_s, es-_u_s, es-_v_e, es, su, sw-_k_e, sw, tt-_r_u, th-_t_h, th, hsb, xh-_z_a, yi-_d_e, yi, zu-_z_a. The regional date/time format ( date locale ). You can specify each part of the format in the fields below. Flourish type hint: string, defaults to `NULL`
#' @param format_weekday Weekday. Choices: none, narrow, short, long. Flourish type hint: string, defaults to `NULL`
#' @param format_year Year. Choices: none, numeric, 2-digit. Flourish type hint: string, defaults to `NULL`
#' @param format_month Month. Choices: none, numeric, 2-digit, narrow, short, long. Flourish type hint: string, defaults to `NULL`
#' @param format_day Day. Choices: none, numeric, 2-digit. Flourish type hint: string, defaults to `NULL`
#' @param format_hour Hour. Choices: none, numeric, 2-digit. Flourish type hint: string, defaults to `NULL`
#' @param format_minute Minute. Choices: none, numeric, 2-digit. Flourish type hint: string, defaults to `NULL`
#' @param y_font_size Size. Flourish type hint: number, defaults to `NULL`
#' @param y_font_weight Weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param y_font_fill Color. Flourish type hint: color, defaults to `NULL`
#' @param y_max_width Max width. Flourish type hint: number, defaults to `NULL`
#' @param y_text_dx Horizontal padding. Flourish type hint: number, defaults to `NULL`
#' @param y_text_dy Vertical padding. Flourish type hint: number, defaults to `NULL`
#' @param y_gridline_color Color. Flourish type hint: color, defaults to `NULL`
#' @param y_gridline_width Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_filter_controls_control_type Control type. Choices: dropdown, buttons, slider. Choose between a dropdown, buttons or a  time slider Flourish type hint: string, defaults to `NULL`
#' @param chart_filter_controls_control_styles Adv. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_filter_controls_control_title Control title. Flourish type hint: string, defaults to `NULL`
#' @param chart_filter_controls_button_group Grouped. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_filter_controls_button_group_width_mode Button group width. Choices: auto, full, fixed. Flourish type hint: string, defaults to `NULL`
#' @param chart_filter_controls_button_group_width_fixed Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_filter_controls_dropdown_width_mode Dropdown width. Choices: auto, full, fixed. Flourish type hint: string, defaults to `NULL`
#' @param chart_filter_controls_dropdown_width_fixed Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_filter_controls_slider_width Slider width. Width of the slider track in rems Flourish type hint: number, defaults to `NULL`
#' @param chart_filter_controls_slider_max_label_width Max label width. In rems, multiples of base font size. If larger than the longest label, only the space required to fit labels will be used. Flourish type hint: number, defaults to `NULL`
#' @param chart_filter_controls_slider_step_time Time between steps. Measured in seconds, positive values move the slider left to right, negative values move the slider right to left. Flourish type hint: number, defaults to `NULL`
#' @param chart_filter_controls_slider_loop Loop. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_filter_controls_slider_restart_pause Pause before loop. Measured in seconds and in addition to the regular step time displayed above. Flourish type hint: number, defaults to `NULL`
#' @param chart_filter_controls_sort Sorting. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param filter_control_all Name for "All". Leave blank to not include an "All" option. Flourish type hint: string, defaults to `NULL`
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
#' @param chart_slider_control_style_track_color Track. Flourish type hint: color, defaults to `NULL`
#' @param chart_slider_control_style_font_color Text. Flourish type hint: color, defaults to `NULL`
#' @param chart_slider_control_style_handle_color Handle. Flourish type hint: color, defaults to `NULL`
#' @param chart_slider_control_style_play_color Play/pause. Flourish type hint: color, defaults to `NULL`
#' @param chart_slider_control_style_track_height Track height. Flourish type hint: number, defaults to `NULL`
#' @param chart_slider_control_style_handle_height Height. Flourish type hint: number, defaults to `NULL`
#' @param chart_slider_control_style_play_button Play button. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_filter_controls_container_alignment Alignment. Choices: start, center, end. Flourish type hint: string, defaults to `NULL`
#' @param chart_filter_controls_container_controls_spacing Spacing. The space between controls, like dropdowns and adjacent button sets, in em units. Flourish type hint: number, defaults to `NULL`
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
#' @param chart_continous_legend_show_legend Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_continous_legend_title_mode Title mode. Choices: auto, custom. Flourish type hint: string, defaults to `NULL`
#' @param chart_continous_legend_title Title. Flourish type hint: string, defaults to `NULL`
#' @param chart_continous_legend_color_band_width Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_continous_legend_color_band_height Height. Flourish type hint: number, defaults to `NULL`
#' @param chart_continous_legend_color_band_radius Roundness. The radius of the corners of the color band (in pixels). Flourish type hint: number, defaults to `NULL`
#' @param chart_continous_legend_binned_label_mode Binned label mode. Choices: thresholds, centers, custom. Flourish type hint: string, defaults to `NULL`
#' @param chart_continous_legend_binned_label_custom Custom bin labels. List numeric values, separated by semi-colons. Flourish type hint: string, defaults to `NULL`
#' @param chart_continous_legend_legend_min Legend min. Flourish type hint: number, defaults to `NULL`
#' @param chart_continous_legend_additional_min_label Custom min label. Flourish type hint: string, defaults to `NULL`
#' @param chart_continous_legend_legend_max Legend max. Flourish type hint: number, defaults to `NULL`
#' @param chart_continous_legend_additional_max_label Custom max label. Flourish type hint: string, defaults to `NULL`
#' @param chart_legend_container_alignment Alignment. Choices: start, center, end. Flourish type hint: string, defaults to `NULL`
#' @param chart_legend_container_orientation Orientation. Choices: horizontal, vertical. Flourish type hint: string, defaults to `NULL`
#' @param chart_legend_container_title_weight Title weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_legend_container_text_weight Text weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_legend_container_text_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_legend_container_text_size Size. Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_mode Choices: none, popup, panel, both. Flourish type hint: string, defaults to `NULL`
#' @param chart_popup_popup_is_custom Popup content. Choices: `FALSE`, `TRUE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_popup_show_popup_styles Show popup styles. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_popup_popup_custom_header Popup custom header. Use `{{column_name}}` to add a value from your data Ensure the column is selected, or add it to Info for popups for popup use.  Advanced users can add HTML styling or add category colors to popup headers.  To hide parts of the popup when a column is empty using `{{#if column_name}}Content for non-empty column_name{{/if}}`. For example: `{{#if Capital name}}Capital:{{/if}} {{Capital name}}`. Here, the word "Capital:" will only show if the corresponding cell in the "Capital name" column is not empty. Flourish type hint: html, defaults to `NULL`
#' @param chart_popup_popup_custom_main Popup custom main content. Use `{{column_name}}` to add a value from your data Ensure the column is selected, or add it to Info for popups for popup use.  Advanced users can add HTML for designs, styles, and images.  To hide parts of the popup when a column is empty use the syntax `{{#if column_name}}Content for non-empty column_name{{/if}}`. For example: `{{#if Capital name}}Capital:{{/if}} {{Capital name}}`. Here, the word "Capital:" will only show if the corresponding cell in the "Capital name" column is not empty. Flourish type hint: html, defaults to `NULL`
#' @param chart_popup_popup_custom_accessible Popup custom accessible content. A text alternative to visual custom popup content that will be read out by screenreaders. This content is added as an aria-label attribute to data point elements. You can still use `{{column_name}}` to add values from your data, but do not use HTML. For example: `{{Name}}, Population: {{Population}}, GDP: {{GDP}}`. If left empty, accessible content will fallback to the default popup content. Flourish type hint: text, defaults to `NULL`
#' @param chart_popup_popup_width Max width. In rems, multiples of base font size. Leave blank to let the width adjust based on the contents. Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_popup_font_size Text size. Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_popup_text_color Text color. Flourish type hint: color, defaults to `NULL`
#' @param chart_popup_popup_align Align. Choices: start, center, end. Flourish type hint: string, defaults to `NULL`
#' @param chart_popup_popup_background Fill color. Flourish type hint: color, defaults to `NULL`
#' @param chart_popup_popup_background_opacity Fill opacity. Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_popup_padding Padding. Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_popup_radius Radius. Corner radius of popup. Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_popup_header_type Header style. Choices: block, inline. Flourish type hint: string, defaults to `NULL`
#' @param chart_popup_popup_header_background Background. Flourish type hint: color, defaults to `NULL`
#' @param chart_popup_popup_header_text_color Text. Flourish type hint: color, defaults to `NULL`
#' @param chart_popup_popup_list_type List type. Choices: table, ul. Flourish type hint: string, defaults to `NULL`
#' @param chart_popup_popup_list_label_weight Label weight. Choices: normal, bold. Flourish type hint: string, defaults to `NULL`
#' @param chart_popup_popup_list_separator List separator. Choices: :, , , `<br />`. Flourish type hint: string, defaults to `NULL`
#' @param chart_popup_popup_shadow Shadow. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_popup_popup_pointer Pointer. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_popup_panel_position Choices: overlay, left, right, top, bottom. Flourish type hint: string, defaults to `NULL`
#' @param chart_popup_panel_open_duration Open duration. Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_panel_side_fixed Always show. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_popup_panel_side_default_content Placeholder content. Flourish type hint: text, defaults to `NULL`
#' @param chart_popup_panel_is_custom Panel content. Choices: `FALSE`, `TRUE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_popup_show_panel_styles Show panel styles. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_popup_panel_custom_header Panel custom header. Use `{{column_name}}` to add a value from your data Ensure the column is selected, or add it to Info for popups for panel use.  Advanced users can add HTML for styling or add category colors to panel headers.  To hide parts of the panel when a column is empty using `{{#if column_name}}Content for non-empty column_name{{/if}}`. For example: `{{#if Capital name}}Capital:{{/if}} {{Capital name}}`. Here, the word "Capital:" will only show if the corresponding cell in the "Capital name" column is not empty. Flourish type hint: html, defaults to `NULL`
#' @param chart_popup_panel_custom_main Panel custom main content. Use `{{column_name}}` to add a value from your data Ensure the column is selected, or add it to Info for popups for panel use.  Advanced users can add HTML for designs, styles, images, videos and embedded Flourish charts,  To hide parts of the panel when a column is empty using `{{#if column_name}}Content for non-empty column_name{{/if}}`. For example: `{{#if Capital name}}Capital:{{/if}} {{Capital name}}`. Here, the word "Capital:" will only show if the corresponding cell in the "Capital name" column is not empty. Flourish type hint: html, defaults to `NULL`
#' @param chart_popup_panel_width_overlay Width (%). Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_panel_height_overlay Height (%). Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_panel_width_side Width (%). Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_panel_height_side Height (%). Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_panel_max_width Max width (px). Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_panel_max_height Max height (px). Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_panel_vertical_position Vertical position. Choices: click, center. Choosing Click position is especially useful when your visualization is really tall, this will make sure the panel content is always on top of the element youve clicked on. Flourish type hint: string, defaults to `NULL`
#' @param chart_popup_panel_text_color Text color. Flourish type hint: color, defaults to `NULL`
#' @param chart_popup_panel_font_size Text size. Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_panel_align Alignment. Choices: start, center, end. Flourish type hint: string, defaults to `NULL`
#' @param chart_popup_panel_background Fill color. Flourish type hint: color, defaults to `NULL`
#' @param chart_popup_panel_background_opacity Fill opacity. Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_panel_padding Padding. Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_panel_radius Radius. Corner radius of panel. Flourish type hint: number, defaults to `NULL`
#' @param chart_popup_panel_list_type List type. Choices: table, ul. Flourish type hint: string, defaults to `NULL`
#' @param chart_popup_panel_list_label_weight Label weight. Choices: normal, bold. Flourish type hint: string, defaults to `NULL`
#' @param chart_popup_panel_list_separator List separator. Choices: :, , , `<br />`. Flourish type hint: string, defaults to `NULL`
#' @param chart_popup_panel_shadow Shadow. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_axes_highlights_x_enabled Show highlights on the x axis. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_axes_highlights_x_lines One per line, in format “My label :: 2012”. One per line, using the  format :  My label :: 2012  For dates, use the  input format  as specified in the datasheet. You can optionally specify a line color and a text color For visualizations using a  grid of charts , you can apply the annotation only on a specific chart. Use the format:  `My label :: 2012 :: line_color / text_color :: facet_name`.  For example,  `My label :: 2012 :: #eb0000 / #0084bd :: Category 1`. If you want to add an annotation to just one specific chart but do not want to color the line/text, you can leave that part blank. For example:  My label :: 2012 :: :: Category 1 Flourish type hint: text, defaults to `NULL`
#' @param chart_axes_highlights_x_line_color Line color. Flourish type hint: color, defaults to `NULL`
#' @param chart_axes_highlights_x_line_width Line width. Flourish type hint: number, defaults to `NULL`
#' @param chart_axes_highlights_x_line_dash Dash. Flourish type hint: number, defaults to `NULL`
#' @param chart_axes_highlights_x_areas One per line, in format “My label :: 2013 >> 2015”. One per line, using the format :  My label :: date >> date  For dates, use the input format as specified in the datasheet. You can optionally specify a line color and a text color For visualizations using a  grid of charts , you can apply the annotation only on a specific chart Use the format:  My label :: 2012 :: area_color / text_color :: facet_name For example,  `My label :: 2012 >> 2015 :: #eb0000 / #0084bd :: Category 1`. Flourish type hint: text, defaults to `NULL`
#' @param chart_axes_highlights_x_area_color Area. Flourish type hint: color, defaults to `NULL`
#' @param chart_axes_highlights_x_area_opacity Area opacity. Flourish type hint: number, defaults to `NULL`
#' @param chart_axes_highlights_x_area_texture Area texture. Choices: none, pattern-diagonal, pattern-grid, pattern-dots. Flourish type hint: string, defaults to `NULL`
#' @param chart_axes_highlights_x_label_vertical Vertical. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_axes_highlights_x_label_y_position Y position. Choices: bottom, middle, top. Vertically position the label at the top, bottom or in the middle of the line. This setting will be ignored if there is not enough space for the selected position. Flourish type hint: string, defaults to `NULL`
#' @param chart_axes_highlights_x_label_x_position X position. Choices: left, middle, right. Horizontally position the label on the left, the right or in the middle of the line. This setting will be ignored if there is not enough space for the selected position. Flourish type hint: string, defaults to `NULL`
#' @param chart_axes_highlights_x_label_max_width Max width. Flourish type hint: number, defaults to `NULL`
#' @param chart_axes_highlights_x_font_size Font size. Flourish type hint: number, defaults to `NULL`
#' @param chart_axes_highlights_x_font_weight Font weight. Choices: regular, bold. Flourish type hint: string, defaults to `NULL`
#' @param chart_axes_highlights_x_label_color Text. Flourish type hint: color, defaults to `NULL`
#' @param chart_axes_highlights_x_shadow_color Shadow. Flourish type hint: color, defaults to `NULL`
#' @param chart_axes_highlights_x_shadow_enabled Shadow. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_axes_highlights_y_enabled Show highlights on the y axis. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_axes_highlights_y_lines One per line, in format “My label :: 5000”. One per line, using the format :  My label :: 2012  For dates, use the input format as specified in the datasheet. You can optionally specify a line color and a text color For visualizations using a  grid of charts , you can apply the annotation only on a specific chart Use the format:  `My label :: 2012 :: line_color / text_color :: facet_name`.  For example:  `My label :: 2012 :: #eb0000 / #0084bd :: Category 1`.  If you want to add an annotation to just one specific chart but do not want to color the line/text, you can leave that part blank. For example:  My label :: 2012 :: :: Category 1 Flourish type hint: text, defaults to `NULL`
#' @param chart_axes_highlights_y_line_color Line color. Flourish type hint: color, defaults to `NULL`
#' @param chart_axes_highlights_y_line_width line width. Flourish type hint: number, defaults to `NULL`
#' @param chart_axes_highlights_y_line_dash Dash. Flourish type hint: number, defaults to `NULL`
#' @param chart_axes_highlights_y_areas One per line, in format “My label :: 2000 >> 8000”. One per line, using the format :  My label :: date >> date  For dates, use the input format as specified in the datasheet. You can optionally specify a line color and a text color For visualizations using a  grid of charts , you can apply the annotation only on a specific chart Use the format:  My label :: 2012 :: area_color / text_color :: facet_name  For example:  `My label :: 2012 >> 2015 :: #eb0000 / #0084bd :: Category 1`. Flourish type hint: text, defaults to `NULL`
#' @param chart_axes_highlights_y_area_color Area. Flourish type hint: color, defaults to `NULL`
#' @param chart_axes_highlights_y_area_opacity Area opacity. Flourish type hint: number, defaults to `NULL`
#' @param chart_axes_highlights_y_area_texture Area texture. Choices: none, pattern-diagonal, pattern-grid, pattern-dots. Flourish type hint: string, defaults to `NULL`
#' @param chart_axes_highlights_y_label_x_position X position. Choices: left, middle, right. Horizontally position label on the left, the middle or the right end of the line. This setting will be ignored if there is not enough space for the selected position. Flourish type hint: string, defaults to `NULL`
#' @param chart_axes_highlights_y_label_y_position Y position. Choices: above, middle, below. Vertically position the label above, below or in the middle of the line. This setting will be ignored if there is not enough space for the selected position. Flourish type hint: string, defaults to `NULL`
#' @param chart_axes_highlights_y_label_max_width Max width. Flourish type hint: number, defaults to `NULL`
#' @param chart_axes_highlights_y_font_size Font size. Flourish type hint: number, defaults to `NULL`
#' @param chart_axes_highlights_y_font_weight Font weight. Choices: regular, bold. Flourish type hint: string, defaults to `NULL`
#' @param chart_axes_highlights_y_label_color Text. Flourish type hint: color, defaults to `NULL`
#' @param chart_axes_highlights_y_shadow_color Shadow. Flourish type hint: color, defaults to `NULL`
#' @param chart_axes_highlights_y_shadow_enabled Shadow. Flourish type hint: boolean, defaults to `NULL`
#' @param animation_duration Animation duration. The duration, in seconds, of transitions  for example, on load of visualization or between two slides in a story Flourish type hint: number, defaults to `NULL`
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
#'   flourish(chart_type = "gantt", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_gantt_data(gapminder) |> 
#'   set_gantt_details()
#' )
#' @export

set_gantt_details <- function(
    .,
    gantt_height = NULL,
    gantt_padding = NULL,
    border_radius = NULL,
    border_width = NULL,
    border_color = NULL,
    gantt_progress = NULL,
    gantt_text = NULL,
    gantt_font_size = NULL,
    gantt_text_color = NULL,
    gantt_font_weight = NULL,
    missing_value_label = NULL,
    scale_type = NULL,
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
    chart_background_color = NULL,
    chart_background_opacity = NULL,
    chart_background_panels = NULL,
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
    date_format = NULL,
    format_locale = NULL,
    format_weekday = NULL,
    format_year = NULL,
    format_month = NULL,
    format_day = NULL,
    format_hour = NULL,
    format_minute = NULL,
    y_font_size = NULL,
    y_font_weight = NULL,
    y_font_fill = NULL,
    y_max_width = NULL,
    y_text_dx = NULL,
    y_text_dy = NULL,
    y_gridline_color = NULL,
    y_gridline_width = NULL,
    chart_filter_controls_control_type = NULL,
    chart_filter_controls_control_styles = NULL,
    chart_filter_controls_control_title = NULL,
    chart_filter_controls_button_group = NULL,
    chart_filter_controls_button_group_width_mode = NULL,
    chart_filter_controls_button_group_width_fixed = NULL,
    chart_filter_controls_dropdown_width_mode = NULL,
    chart_filter_controls_dropdown_width_fixed = NULL,
    chart_filter_controls_slider_width = NULL,
    chart_filter_controls_slider_max_label_width = NULL,
    chart_filter_controls_slider_step_time = NULL,
    chart_filter_controls_slider_loop = NULL,
    chart_filter_controls_slider_restart_pause = NULL,
    chart_filter_controls_sort = NULL,
    filter_control_all = NULL,
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
    chart_slider_control_style_track_color = NULL,
    chart_slider_control_style_font_color = NULL,
    chart_slider_control_style_handle_color = NULL,
    chart_slider_control_style_play_color = NULL,
    chart_slider_control_style_track_height = NULL,
    chart_slider_control_style_handle_height = NULL,
    chart_slider_control_style_play_button = NULL,
    chart_filter_controls_container_alignment = NULL,
    chart_filter_controls_container_controls_spacing = NULL,
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
    chart_continous_legend_show_legend = NULL,
    chart_continous_legend_title_mode = NULL,
    chart_continous_legend_title = NULL,
    chart_continous_legend_color_band_width = NULL,
    chart_continous_legend_color_band_height = NULL,
    chart_continous_legend_color_band_radius = NULL,
    chart_continous_legend_binned_label_mode = NULL,
    chart_continous_legend_binned_label_custom = NULL,
    chart_continous_legend_legend_min = NULL,
    chart_continous_legend_additional_min_label = NULL,
    chart_continous_legend_legend_max = NULL,
    chart_continous_legend_additional_max_label = NULL,
    chart_legend_container_alignment = NULL,
    chart_legend_container_orientation = NULL,
    chart_legend_container_title_weight = NULL,
    chart_legend_container_text_weight = NULL,
    chart_legend_container_text_color = NULL,
    chart_legend_container_text_size = NULL,
    chart_popup_mode = NULL,
    chart_popup_popup_is_custom = NULL,
    chart_popup_show_popup_styles = NULL,
    chart_popup_popup_custom_header = NULL,
    chart_popup_popup_custom_main = NULL,
    chart_popup_popup_custom_accessible = NULL,
    chart_popup_popup_width = NULL,
    chart_popup_popup_font_size = NULL,
    chart_popup_popup_text_color = NULL,
    chart_popup_popup_align = NULL,
    chart_popup_popup_background = NULL,
    chart_popup_popup_background_opacity = NULL,
    chart_popup_popup_padding = NULL,
    chart_popup_popup_radius = NULL,
    chart_popup_popup_header_type = NULL,
    chart_popup_popup_header_background = NULL,
    chart_popup_popup_header_text_color = NULL,
    chart_popup_popup_list_type = NULL,
    chart_popup_popup_list_label_weight = NULL,
    chart_popup_popup_list_separator = NULL,
    chart_popup_popup_shadow = NULL,
    chart_popup_popup_pointer = NULL,
    chart_popup_panel_position = NULL,
    chart_popup_panel_open_duration = NULL,
    chart_popup_panel_side_fixed = NULL,
    chart_popup_panel_side_default_content = NULL,
    chart_popup_panel_is_custom = NULL,
    chart_popup_show_panel_styles = NULL,
    chart_popup_panel_custom_header = NULL,
    chart_popup_panel_custom_main = NULL,
    chart_popup_panel_width_overlay = NULL,
    chart_popup_panel_height_overlay = NULL,
    chart_popup_panel_width_side = NULL,
    chart_popup_panel_height_side = NULL,
    chart_popup_panel_max_width = NULL,
    chart_popup_panel_max_height = NULL,
    chart_popup_panel_vertical_position = NULL,
    chart_popup_panel_text_color = NULL,
    chart_popup_panel_font_size = NULL,
    chart_popup_panel_align = NULL,
    chart_popup_panel_background = NULL,
    chart_popup_panel_background_opacity = NULL,
    chart_popup_panel_padding = NULL,
    chart_popup_panel_radius = NULL,
    chart_popup_panel_list_type = NULL,
    chart_popup_panel_list_label_weight = NULL,
    chart_popup_panel_list_separator = NULL,
    chart_popup_panel_shadow = NULL,
    chart_axes_highlights_x_enabled = NULL,
    chart_axes_highlights_x_lines = NULL,
    chart_axes_highlights_x_line_color = NULL,
    chart_axes_highlights_x_line_width = NULL,
    chart_axes_highlights_x_line_dash = NULL,
    chart_axes_highlights_x_areas = NULL,
    chart_axes_highlights_x_area_color = NULL,
    chart_axes_highlights_x_area_opacity = NULL,
    chart_axes_highlights_x_area_texture = NULL,
    chart_axes_highlights_x_label_vertical = NULL,
    chart_axes_highlights_x_label_y_position = NULL,
    chart_axes_highlights_x_label_x_position = NULL,
    chart_axes_highlights_x_label_max_width = NULL,
    chart_axes_highlights_x_font_size = NULL,
    chart_axes_highlights_x_font_weight = NULL,
    chart_axes_highlights_x_label_color = NULL,
    chart_axes_highlights_x_shadow_color = NULL,
    chart_axes_highlights_x_shadow_enabled = NULL,
    chart_axes_highlights_y_enabled = NULL,
    chart_axes_highlights_y_lines = NULL,
    chart_axes_highlights_y_line_color = NULL,
    chart_axes_highlights_y_line_width = NULL,
    chart_axes_highlights_y_line_dash = NULL,
    chart_axes_highlights_y_areas = NULL,
    chart_axes_highlights_y_area_color = NULL,
    chart_axes_highlights_y_area_opacity = NULL,
    chart_axes_highlights_y_area_texture = NULL,
    chart_axes_highlights_y_label_x_position = NULL,
    chart_axes_highlights_y_label_y_position = NULL,
    chart_axes_highlights_y_label_max_width = NULL,
    chart_axes_highlights_y_font_size = NULL,
    chart_axes_highlights_y_font_weight = NULL,
    chart_axes_highlights_y_label_color = NULL,
    chart_axes_highlights_y_shadow_color = NULL,
    chart_axes_highlights_y_shadow_enabled = NULL,
    animation_duration = NULL,
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
  details_error(., "gantt")

  old_list <- .
  new_list <- list()

  if (isTRUE(old_list$x$template != "@flourish/gantt")) {
    stop("`set_gantt_details()` is not supported for this chart type.")
  }
  new_list$x$state$gantt_height <- gantt_height
  new_list$x$state$gantt_padding <- gantt_padding
  new_list$x$state$border_radius <- border_radius
  new_list$x$state$border_width <- border_width
  new_list$x$state$border_color <- border_color
  list_gantt_progress <- c(TRUE, FALSE, NULL)
  if (!is.null(gantt_progress)) {
    if (!gantt_progress %in% list_gantt_progress) {
      stop("`gantt_progress` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && gantt_progress %in% names(named_list)) {
          if (is.logical(gantt_progress)) {
            gantt_progress <- as.character(gantt_progress)
          }
          named_list_value <- unname(named_list[gantt_progress])[[1]]
          new_list$x$state$gantt_progress <- named_list_value
        }
      }
    }
  }
  list_gantt_text <- c(TRUE, FALSE, NULL)
  if (!is.null(gantt_text)) {
    if (!gantt_text %in% list_gantt_text) {
      stop("`gantt_text` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && gantt_text %in% names(named_list)) {
          if (is.logical(gantt_text)) {
            gantt_text <- as.character(gantt_text)
          }
          named_list_value <- unname(named_list[gantt_text])[[1]]
          new_list$x$state$gantt_text <- named_list_value
        }
      }
    }
  }
  new_list$x$state$gantt_font_size <- gantt_font_size
  new_list$x$state$gantt_text_color <- gantt_text_color
  list_gantt_font_weight <- c("bold", "normal", NULL)
  if (!is.null(gantt_font_weight)) {
    if (!gantt_font_weight %in% list_gantt_font_weight) {
      stop("`gantt_font_weight` must be one of: c('bold', 'normal')")
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
        if (length(named_list) > 1 && gantt_font_weight %in% names(named_list)) {
          if (is.logical(gantt_font_weight)) {
            gantt_font_weight <- as.character(gantt_font_weight)
          }
          named_list_value <- unname(named_list[gantt_font_weight])[[1]]
          new_list$x$state$gantt_font_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$missing_value_label <- missing_value_label
  list_scale_type <- c("categorical", "numeric", NULL)
  if (!is.null(scale_type)) {
    if (!scale_type %in% list_scale_type) {
      stop("`scale_type` must be one of: c('categorical', 'numeric')")
    } else {
      if (length(jsonlite::fromJSON('{"categorical": "categorical", "numeric": "numeric"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"categorical": "categorical", "numeric": "numeric"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && scale_type %in% names(named_list)) {
          if (is.logical(scale_type)) {
            scale_type <- as.character(scale_type)
          }
          named_list_value <- unname(named_list[scale_type])[[1]]
          new_list$x$state$scale_type <- named_list_value
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
  new_list$x$state$chart_bg$color <- chart_background_color
  new_list$x$state$chart_bg$opacity <- chart_background_opacity
  list_chart_background_panels <- c(FALSE, TRUE, NULL)
  if (!is.null(chart_background_panels)) {
    if (!chart_background_panels %in% list_chart_background_panels) {
      stop("`chart_background_panels` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && chart_background_panels %in% names(named_list)) {
          if (is.logical(chart_background_panels)) {
            chart_background_panels <- as.character(chart_background_panels)
          }
          named_list_value <- unname(named_list[chart_background_panels])[[1]]
          new_list$x$state$chart_bg$panels <- named_list_value
        }
      }
    }
  }
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
  list_date_format <- c("auto", "%Y-%m-%dT%H:%M:%S.%LZ", "%Y-%m-%d", "%m/%d/%Y", "%d/%m/%Y", "%d-%b-%y", "%m/%Y", "%b %Y", "%b %y", "%B %d", "%d %b", "%Y", "%B", "%b", "%A", "%a", "%H:%M:%S", "%I:%M %p", "%H:%M", NULL)
  if (!is.null(date_format)) {
    if (!date_format %in% list_date_format) {
      stop("`date_format` must be one of: c('auto', '%Y-%m-%dT%H:%M:%S.%LZ', '%Y-%m-%d', '%m/%d/%Y', '%d/%m/%Y', '%d-%b-%y', '%m/%Y', '%b %Y', '%b %y', '%B %d', '%d %b', '%Y', '%B', '%b', '%A', '%a', '%H:%M:%S', '%I:%M %p', '%H:%M')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "%Y-%m-%dT%H:%M:%S.%LZ": "%Y-%m-%dT%H:%M:%S.%LZ", "%Y-%m-%d": "%Y-%m-%d", "%m/%d/%Y": "%m/%d/%Y", "%d/%m/%Y": "%d/%m/%Y", "%d-%b-%y": "%d-%b-%y", "%m/%Y": "%m/%Y", "%b %Y": "%b %Y", "%b %y": "%b %y", "%B %d": "%B %d", "%d %b": "%d %b", "%Y": "%Y", "%B": "%B", "%b": "%b", "%A": "%A", "%a": "%a", "%H:%M:%S": "%H:%M:%S", "%I:%M %p": "%I:%M %p", "%H:%M": "%H:%M"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "%Y-%m-%dT%H:%M:%S.%LZ": "%Y-%m-%dT%H:%M:%S.%LZ", "%Y-%m-%d": "%Y-%m-%d", "%m/%d/%Y": "%m/%d/%Y", "%d/%m/%Y": "%d/%m/%Y", "%d-%b-%y": "%d-%b-%y", "%m/%Y": "%m/%Y", "%b %Y": "%b %Y", "%b %y": "%b %y", "%B %d": "%B %d", "%d %b": "%d %b", "%Y": "%Y", "%B": "%B", "%b": "%b", "%A": "%A", "%a": "%a", "%H:%M:%S": "%H:%M:%S", "%I:%M %p": "%I:%M %p", "%H:%M": "%H:%M"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
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
  list_format_locale <- c("none", "ady", "af-_n_a", "af-_z_a", "af", "ak", "ar-_m_a", "ar-_s_a", "hy-_a_m", "ay-_b_o", "eu-_e_s", "be-_b_y", "bn-_b_d", "bn-_i_n", "bn", "bs-_b_a", "my", "ck-_u_s", "zh-_c_n", "zh-_s_g", "zh-_hans", "zh-_h_k", "zh-_t_w", "zh-_hant", "zh", "gx-_g_r", "nl-_b_e", "nl-_n_l", "nl", "en-_a_u", "en-_c_a", "en-_i_n", "en-_i_e", "en@pirate", "en-_z_a", "en-_g_b", "en-_u_d", "en-_u_s", "en", "eo-_e_o", "et-_e_e", "fo-_f_o", "fi-_f_i", "fr-_b_e", "fr-_c_a", "fr-_f_r", "fr-_c_h", "fr", "fy-_n_l", "ff", "gl-_e_s", "ka-_g_e", "de-_a_t", "de-_d_e", "de-_c_h", "de", "el-_g_r", "el", "gn-_p_y", "gu-_i_n", "ht", "is-_i_s", "is", "ga-_i_e", "ga", "jv-_i_d", "kab", "kn-_i_n", "kn", "cak", "kk-_k_z", "tlh", "ko-_k_r", "ko", "ku-_t_r", "fb-_l_t", "li-_n_l", "dsb", "lb", "mk-_m_k", "mk", "mai", "mg-_m_g", "mn-_m_n", "se-_n_o", "nn-_n_o", "no", "oc", "or-_i_n", "ps-_a_f", "i_r", "pt-_b_r", "pt-_p_t", "pt", "pa-_i_n", "pa", "qu-_p_e", "rm-_c_h", "sa-_i_n", "sr-_r_s", "sr", "si-_l_k", "sk-_s_k", "sk", "so-_s_o", "es-_a_r", "es-_c_l", "es-_c_o", "es-_e_c", "es-_m_x", "es-_n_i", "es-_e_s", "es-_u_s", "es-_v_e", "es", "su", "sw-_k_e", "sw", "tt-_r_u", "th-_t_h", "th", "hsb", "xh-_z_a", "yi-_d_e", "yi", "zu-_z_a", NULL)
  if (!is.null(format_locale)) {
    if (!format_locale %in% list_format_locale) {
      stop("`format_locale` must be one of: c('none', 'ady', 'af-_n_a', 'af-_z_a', 'af', 'ak', 'ar-_m_a', 'ar-_s_a', 'hy-_a_m', 'ay-_b_o', 'eu-_e_s', 'be-_b_y', 'bn-_b_d', 'bn-_i_n', 'bn', 'bs-_b_a', 'my', 'ck-_u_s', 'zh-_c_n', 'zh-_s_g', 'zh-_hans', 'zh-_h_k', 'zh-_t_w', 'zh-_hant', 'zh', 'gx-_g_r', 'nl-_b_e', 'nl-_n_l', 'nl', 'en-_a_u', 'en-_c_a', 'en-_i_n', 'en-_i_e', 'en@pirate', 'en-_z_a', 'en-_g_b', 'en-_u_d', 'en-_u_s', 'en', 'eo-_e_o', 'et-_e_e', 'fo-_f_o', 'fi-_f_i', 'fr-_b_e', 'fr-_c_a', 'fr-_f_r', 'fr-_c_h', 'fr', 'fy-_n_l', 'ff', 'gl-_e_s', 'ka-_g_e', 'de-_a_t', 'de-_d_e', 'de-_c_h', 'de', 'el-_g_r', 'el', 'gn-_p_y', 'gu-_i_n', 'ht', 'is-_i_s', 'is', 'ga-_i_e', 'ga', 'jv-_i_d', 'kab', 'kn-_i_n', 'kn', 'cak', 'kk-_k_z', 'tlh', 'ko-_k_r', 'ko', 'ku-_t_r', 'fb-_l_t', 'li-_n_l', 'dsb', 'lb', 'mk-_m_k', 'mk', 'mai', 'mg-_m_g', 'mn-_m_n', 'se-_n_o', 'nn-_n_o', 'no', 'oc', 'or-_i_n', 'ps-_a_f', 'i_r', 'pt-_b_r', 'pt-_p_t', 'pt', 'pa-_i_n', 'pa', 'qu-_p_e', 'rm-_c_h', 'sa-_i_n', 'sr-_r_s', 'sr', 'si-_l_k', 'sk-_s_k', 'sk', 'so-_s_o', 'es-_a_r', 'es-_c_l', 'es-_c_o', 'es-_e_c', 'es-_m_x', 'es-_n_i', 'es-_e_s', 'es-_u_s', 'es-_v_e', 'es', 'su', 'sw-_k_e', 'sw', 'tt-_r_u', 'th-_t_h', 'th', 'hsb', 'xh-_z_a', 'yi-_d_e', 'yi', 'zu-_z_a')")
    } else {
      if (length(jsonlite::fromJSON('{"none": "none", "ady": "ady", "af-_n_a": "af-NA", "af-_z_a": "af-ZA", "af": "af", "ak": "ak", "ar-_m_a": "ar-MA", "ar-_s_a": "ar-SA", "hy-_a_m": "hy-AM", "ay-_b_o": "ay-BO", "eu-_e_s": "eu-ES", "be-_b_y": "be-BY", "bn-_b_d": "bn-BD", "bn-_i_n": "bn-IN", "bn": "bn", "bs-_b_a": "bs-BA", "my": "my", "ck-_u_s": "ck-US", "zh-_c_n": "zh-CN", "zh-_s_g": "zh-SG", "zh-_hans": "zh-Hans", "zh-_h_k": "zh-HK", "zh-_t_w": "zh-TW", "zh-_hant": "zh-Hant", "zh": "zh", "gx-_g_r": "gx-GR", "nl-_b_e": "nl-BE", "nl-_n_l": "nl-NL", "nl": "nl", "en-_a_u": "en-AU", "en-_c_a": "en-CA", "en-_i_n": "en-IN", "en-_i_e": "en-IE", "en@pirate": "en@pirate", "en-_z_a": "en-ZA", "en-_g_b": "en-GB", "en-_u_d": "en-UD", "en-_u_s": "en-US", "en": "en", "eo-_e_o": "eo-EO", "et-_e_e": "et-EE", "fo-_f_o": "fo-FO", "fi-_f_i": "fi-FI", "fr-_b_e": "fr-BE", "fr-_c_a": "fr-CA", "fr-_f_r": "fr-FR", "fr-_c_h": "fr-CH", "fr": "fr", "fy-_n_l": "fy-NL", "ff": "ff", "gl-_e_s": "gl-ES", "ka-_g_e": "ka-GE", "de-_a_t": "de-AT", "de-_d_e": "de-DE", "de-_c_h": "de-CH", "de": "de", "el-_g_r": "el-GR", "el": "el", "gn-_p_y": "gn-PY", "gu-_i_n": "gu-IN", "ht": "ht", "is-_i_s": "is-IS", "is": "is", "ga-_i_e": "ga-IE", "ga": "ga", "jv-_i_d": "jv-ID", "kab": "kab", "kn-_i_n": "kn-IN", "kn": "kn", "cak": "cak", "kk-_k_z": "kk-KZ", "tlh": "tlh", "ko-_k_r": "ko-KR", "ko": "ko", "ku-_t_r": "ku-TR", "fb-_l_t": "fb-LT", "li-_n_l": "li-NL", "dsb": "dsb", "lb": "lb", "mk-_m_k": "mk-MK", "mk": "mk", "mai": "mai", "mg-_m_g": "mg-MG", "mn-_m_n": "mn-MN", "se-_n_o": "se-NO", "nn-_n_o": "nn-NO", "no": "no", "oc": "oc", "or-_i_n": "or-IN", "ps-_a_f": "ps-AF", "i_r": "fa-IR", "pt-_b_r": "pt-BR", "pt-_p_t": "pt-PT", "pt": "pt", "pa-_i_n": "pa-IN", "pa": "pa", "qu-_p_e": "qu-PE", "rm-_c_h": "rm-CH", "sa-_i_n": "sa-IN", "sr-_r_s": "sr-RS", "sr": "sr", "si-_l_k": "si-LK", "sk-_s_k": "sk-SK", "sk": "sk", "so-_s_o": "so-SO", "es-_a_r": "es-AR", "es-_c_l": "es-CL", "es-_c_o": "es-CO", "es-_e_c": "es-EC", "es-_m_x": "es-MX", "es-_n_i": "es-NI", "es-_e_s": "es-ES", "es-_u_s": "es-US", "es-_v_e": "es-VE", "es": "es", "su": "su", "sw-_k_e": "sw-KE", "sw": "sw", "tt-_r_u": "tt-RU", "th-_t_h": "th-TH", "th": "th", "hsb": "hsb", "xh-_z_a": "xh-ZA", "yi-_d_e": "yi-DE", "yi": "yi", "zu-_z_a": "zu-ZA"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"none": "none", "ady": "ady", "af-_n_a": "af-NA", "af-_z_a": "af-ZA", "af": "af", "ak": "ak", "ar-_m_a": "ar-MA", "ar-_s_a": "ar-SA", "hy-_a_m": "hy-AM", "ay-_b_o": "ay-BO", "eu-_e_s": "eu-ES", "be-_b_y": "be-BY", "bn-_b_d": "bn-BD", "bn-_i_n": "bn-IN", "bn": "bn", "bs-_b_a": "bs-BA", "my": "my", "ck-_u_s": "ck-US", "zh-_c_n": "zh-CN", "zh-_s_g": "zh-SG", "zh-_hans": "zh-Hans", "zh-_h_k": "zh-HK", "zh-_t_w": "zh-TW", "zh-_hant": "zh-Hant", "zh": "zh", "gx-_g_r": "gx-GR", "nl-_b_e": "nl-BE", "nl-_n_l": "nl-NL", "nl": "nl", "en-_a_u": "en-AU", "en-_c_a": "en-CA", "en-_i_n": "en-IN", "en-_i_e": "en-IE", "en@pirate": "en@pirate", "en-_z_a": "en-ZA", "en-_g_b": "en-GB", "en-_u_d": "en-UD", "en-_u_s": "en-US", "en": "en", "eo-_e_o": "eo-EO", "et-_e_e": "et-EE", "fo-_f_o": "fo-FO", "fi-_f_i": "fi-FI", "fr-_b_e": "fr-BE", "fr-_c_a": "fr-CA", "fr-_f_r": "fr-FR", "fr-_c_h": "fr-CH", "fr": "fr", "fy-_n_l": "fy-NL", "ff": "ff", "gl-_e_s": "gl-ES", "ka-_g_e": "ka-GE", "de-_a_t": "de-AT", "de-_d_e": "de-DE", "de-_c_h": "de-CH", "de": "de", "el-_g_r": "el-GR", "el": "el", "gn-_p_y": "gn-PY", "gu-_i_n": "gu-IN", "ht": "ht", "is-_i_s": "is-IS", "is": "is", "ga-_i_e": "ga-IE", "ga": "ga", "jv-_i_d": "jv-ID", "kab": "kab", "kn-_i_n": "kn-IN", "kn": "kn", "cak": "cak", "kk-_k_z": "kk-KZ", "tlh": "tlh", "ko-_k_r": "ko-KR", "ko": "ko", "ku-_t_r": "ku-TR", "fb-_l_t": "fb-LT", "li-_n_l": "li-NL", "dsb": "dsb", "lb": "lb", "mk-_m_k": "mk-MK", "mk": "mk", "mai": "mai", "mg-_m_g": "mg-MG", "mn-_m_n": "mn-MN", "se-_n_o": "se-NO", "nn-_n_o": "nn-NO", "no": "no", "oc": "oc", "or-_i_n": "or-IN", "ps-_a_f": "ps-AF", "i_r": "fa-IR", "pt-_b_r": "pt-BR", "pt-_p_t": "pt-PT", "pt": "pt", "pa-_i_n": "pa-IN", "pa": "pa", "qu-_p_e": "qu-PE", "rm-_c_h": "rm-CH", "sa-_i_n": "sa-IN", "sr-_r_s": "sr-RS", "sr": "sr", "si-_l_k": "si-LK", "sk-_s_k": "sk-SK", "sk": "sk", "so-_s_o": "so-SO", "es-_a_r": "es-AR", "es-_c_l": "es-CL", "es-_c_o": "es-CO", "es-_e_c": "es-EC", "es-_m_x": "es-MX", "es-_n_i": "es-NI", "es-_e_s": "es-ES", "es-_u_s": "es-US", "es-_v_e": "es-VE", "es": "es", "su": "su", "sw-_k_e": "sw-KE", "sw": "sw", "tt-_r_u": "tt-RU", "th-_t_h": "th-TH", "th": "th", "hsb": "hsb", "xh-_z_a": "xh-ZA", "yi-_d_e": "yi-DE", "yi": "yi", "zu-_z_a": "zu-ZA"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && format_locale %in% names(named_list)) {
          if (is.logical(format_locale)) {
            format_locale <- as.character(format_locale)
          }
          named_list_value <- unname(named_list[format_locale])[[1]]
          new_list$x$state$format_locale <- named_list_value
        }
      }
    }
  }
  list_format_weekday <- c("none", "narrow", "short", "long", NULL)
  if (!is.null(format_weekday)) {
    if (!format_weekday %in% list_format_weekday) {
      stop("`format_weekday` must be one of: c('none', 'narrow', 'short', 'long')")
    } else {
      if (length(jsonlite::fromJSON('{"none": "none", "narrow": "narrow", "short": "short", "long": "long"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"none": "none", "narrow": "narrow", "short": "short", "long": "long"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && format_weekday %in% names(named_list)) {
          if (is.logical(format_weekday)) {
            format_weekday <- as.character(format_weekday)
          }
          named_list_value <- unname(named_list[format_weekday])[[1]]
          new_list$x$state$format_weekday <- named_list_value
        }
      }
    }
  }
  list_format_year <- c("none", "numeric", "2-digit", NULL)
  if (!is.null(format_year)) {
    if (!format_year %in% list_format_year) {
      stop("`format_year` must be one of: c('none', 'numeric', '2-digit')")
    } else {
      if (length(jsonlite::fromJSON('{"none": "none", "numeric": "numeric", "2-digit": "2-digit"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"none": "none", "numeric": "numeric", "2-digit": "2-digit"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && format_year %in% names(named_list)) {
          if (is.logical(format_year)) {
            format_year <- as.character(format_year)
          }
          named_list_value <- unname(named_list[format_year])[[1]]
          new_list$x$state$format_year <- named_list_value
        }
      }
    }
  }
  list_format_month <- c("none", "numeric", "2-digit", "narrow", "short", "long", NULL)
  if (!is.null(format_month)) {
    if (!format_month %in% list_format_month) {
      stop("`format_month` must be one of: c('none', 'numeric', '2-digit', 'narrow', 'short', 'long')")
    } else {
      if (length(jsonlite::fromJSON('{"none": "none", "numeric": "numeric", "2-digit": "2-digit", "narrow": "narrow", "short": "short", "long": "long"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"none": "none", "numeric": "numeric", "2-digit": "2-digit", "narrow": "narrow", "short": "short", "long": "long"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && format_month %in% names(named_list)) {
          if (is.logical(format_month)) {
            format_month <- as.character(format_month)
          }
          named_list_value <- unname(named_list[format_month])[[1]]
          new_list$x$state$format_month <- named_list_value
        }
      }
    }
  }
  list_format_day <- c("none", "numeric", "2-digit", NULL)
  if (!is.null(format_day)) {
    if (!format_day %in% list_format_day) {
      stop("`format_day` must be one of: c('none', 'numeric', '2-digit')")
    } else {
      if (length(jsonlite::fromJSON('{"none": "none", "numeric": "numeric", "2-digit": "2-digit"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"none": "none", "numeric": "numeric", "2-digit": "2-digit"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && format_day %in% names(named_list)) {
          if (is.logical(format_day)) {
            format_day <- as.character(format_day)
          }
          named_list_value <- unname(named_list[format_day])[[1]]
          new_list$x$state$format_day <- named_list_value
        }
      }
    }
  }
  list_format_hour <- c("none", "numeric", "2-digit", NULL)
  if (!is.null(format_hour)) {
    if (!format_hour %in% list_format_hour) {
      stop("`format_hour` must be one of: c('none', 'numeric', '2-digit')")
    } else {
      if (length(jsonlite::fromJSON('{"none": "none", "numeric": "numeric", "2-digit": "2-digit"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"none": "none", "numeric": "numeric", "2-digit": "2-digit"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && format_hour %in% names(named_list)) {
          if (is.logical(format_hour)) {
            format_hour <- as.character(format_hour)
          }
          named_list_value <- unname(named_list[format_hour])[[1]]
          new_list$x$state$format_hour <- named_list_value
        }
      }
    }
  }
  list_format_minute <- c("none", "numeric", "2-digit", NULL)
  if (!is.null(format_minute)) {
    if (!format_minute %in% list_format_minute) {
      stop("`format_minute` must be one of: c('none', 'numeric', '2-digit')")
    } else {
      if (length(jsonlite::fromJSON('{"none": "none", "numeric": "numeric", "2-digit": "2-digit"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"none": "none", "numeric": "numeric", "2-digit": "2-digit"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && format_minute %in% names(named_list)) {
          if (is.logical(format_minute)) {
            format_minute <- as.character(format_minute)
          }
          named_list_value <- unname(named_list[format_minute])[[1]]
          new_list$x$state$format_minute <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y_font_size <- y_font_size
  list_y_font_weight <- c("bold", "normal", NULL)
  if (!is.null(y_font_weight)) {
    if (!y_font_weight %in% list_y_font_weight) {
      stop("`y_font_weight` must be one of: c('bold', 'normal')")
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
        if (length(named_list) > 1 && y_font_weight %in% names(named_list)) {
          if (is.logical(y_font_weight)) {
            y_font_weight <- as.character(y_font_weight)
          }
          named_list_value <- unname(named_list[y_font_weight])[[1]]
          new_list$x$state$y_font_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y_font_fill <- y_font_fill
  new_list$x$state$y_max_width <- y_max_width
  new_list$x$state$y_text_dx <- y_text_dx
  new_list$x$state$y_text_dy <- y_text_dy
  new_list$x$state$y_gridline_color <- y_gridline_color
  new_list$x$state$y_gridline_width <- y_gridline_width
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
  new_list$x$state$filter_control$slider_width <- chart_filter_controls_slider_width
  new_list$x$state$filter_control$slider_max_label_width <- chart_filter_controls_slider_max_label_width
  new_list$x$state$filter_control$slider_step_time <- chart_filter_controls_slider_step_time
  new_list$x$state$filter_control$slider_loop <- chart_filter_controls_slider_loop
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
  new_list$x$state$filter_control_all <- filter_control_all
  new_list$x$state$style_controls$font_size <- chart_controls_style_font_size
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
          new_list$x$state$style_controls$font_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$style_controls$height <- chart_controls_style_height
  new_list$x$state$style_button$background <- chart_button_control_style_background
  new_list$x$state$style_button$background_selected <- chart_button_control_style_background_selected
  new_list$x$state$style_button$background_hover <- chart_button_control_style_background_hover
  new_list$x$state$style_button$font_color <- chart_button_control_style_font_color
  new_list$x$state$style_button$font_color_selected <- chart_button_control_style_font_color_selected
  new_list$x$state$style_button$font_color_hover <- chart_button_control_style_font_color_hover
  new_list$x$state$style_button$button_styles_advanced <- chart_button_control_style_button_styles_advanced
  new_list$x$state$style_button$border_width <- chart_button_control_style_border_width
  new_list$x$state$style_button$border_color <- chart_button_control_style_border_color
  new_list$x$state$style_button$border_transparency <- chart_button_control_style_border_transparency
  new_list$x$state$style_button$border_radius <- chart_button_control_style_border_radius
  new_list$x$state$style_dropdown$background <- chart_dropdown_control_style_background
  new_list$x$state$style_dropdown$font_color <- chart_dropdown_control_style_font_color
  new_list$x$state$style_dropdown$border_styles_advanced <- chart_dropdown_control_style_border_styles_advanced
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
          new_list$x$state$style_dropdown$border_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$style_dropdown$border_width <- chart_dropdown_control_style_border_width
  new_list$x$state$style_dropdown$border_color <- chart_dropdown_control_style_border_color
  new_list$x$state$style_dropdown$border_transparency <- chart_dropdown_control_style_border_transparency
  new_list$x$state$style_dropdown$border_radius <- chart_dropdown_control_style_border_radius
  new_list$x$state$style_slider$track_color <- chart_slider_control_style_track_color
  new_list$x$state$style_slider$font_color <- chart_slider_control_style_font_color
  new_list$x$state$style_slider$handle_color <- chart_slider_control_style_handle_color
  new_list$x$state$style_slider$play_color <- chart_slider_control_style_play_color
  new_list$x$state$style_slider$track_height <- chart_slider_control_style_track_height
  new_list$x$state$style_slider$handle_height <- chart_slider_control_style_handle_height
  new_list$x$state$style_slider$play_button <- chart_slider_control_style_play_button
  list_chart_filter_controls_container_alignment <- c("start", "center", "end", NULL)
  if (!is.null(chart_filter_controls_container_alignment)) {
    if (!chart_filter_controls_container_alignment %in% list_chart_filter_controls_container_alignment) {
      stop("`chart_filter_controls_container_alignment` must be one of: c('start', 'center', 'end')")
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
        if (length(named_list) > 1 && chart_filter_controls_container_alignment %in% names(named_list)) {
          if (is.logical(chart_filter_controls_container_alignment)) {
            chart_filter_controls_container_alignment <- as.character(chart_filter_controls_container_alignment)
          }
          named_list_value <- unname(named_list[chart_filter_controls_container_alignment])[[1]]
          new_list$x$state$controls_container$alignment <- named_list_value
        }
      }
    }
  }
  new_list$x$state$controls_container$controls_spacing <- chart_filter_controls_container_controls_spacing
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
  list_chart_continous_legend_show_legend <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_continous_legend_show_legend)) {
    if (!chart_continous_legend_show_legend %in% list_chart_continous_legend_show_legend) {
      stop("`chart_continous_legend_show_legend` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_continous_legend_show_legend %in% names(named_list)) {
          if (is.logical(chart_continous_legend_show_legend)) {
            chart_continous_legend_show_legend <- as.character(chart_continous_legend_show_legend)
          }
          named_list_value <- unname(named_list[chart_continous_legend_show_legend])[[1]]
          new_list$x$state$legend_continuous$show_legend <- named_list_value
        }
      }
    }
  }
  list_chart_continous_legend_title_mode <- c("auto", "custom", NULL)
  if (!is.null(chart_continous_legend_title_mode)) {
    if (!chart_continous_legend_title_mode %in% list_chart_continous_legend_title_mode) {
      stop("`chart_continous_legend_title_mode` must be one of: c('auto', 'custom')")
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
        if (length(named_list) > 1 && chart_continous_legend_title_mode %in% names(named_list)) {
          if (is.logical(chart_continous_legend_title_mode)) {
            chart_continous_legend_title_mode <- as.character(chart_continous_legend_title_mode)
          }
          named_list_value <- unname(named_list[chart_continous_legend_title_mode])[[1]]
          new_list$x$state$legend_continuous$title_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$legend_continuous$title <- chart_continous_legend_title
  new_list$x$state$legend_continuous$color_band_width <- chart_continous_legend_color_band_width
  new_list$x$state$legend_continuous$color_band_height <- chart_continous_legend_color_band_height
  new_list$x$state$legend_continuous$color_band_radius <- chart_continous_legend_color_band_radius
  list_chart_continous_legend_binned_label_mode <- c("thresholds", "centers", "custom", NULL)
  if (!is.null(chart_continous_legend_binned_label_mode)) {
    if (!chart_continous_legend_binned_label_mode %in% list_chart_continous_legend_binned_label_mode) {
      stop("`chart_continous_legend_binned_label_mode` must be one of: c('thresholds', 'centers', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"thresholds": "thresholds", "centers": "centers", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"thresholds": "thresholds", "centers": "centers", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_continous_legend_binned_label_mode %in% names(named_list)) {
          if (is.logical(chart_continous_legend_binned_label_mode)) {
            chart_continous_legend_binned_label_mode <- as.character(chart_continous_legend_binned_label_mode)
          }
          named_list_value <- unname(named_list[chart_continous_legend_binned_label_mode])[[1]]
          new_list$x$state$legend_continuous$binned_label_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$legend_continuous$binned_label_custom <- chart_continous_legend_binned_label_custom
  new_list$x$state$legend_continuous$legend_min <- chart_continous_legend_legend_min
  new_list$x$state$legend_continuous$additional_min_label <- chart_continous_legend_additional_min_label
  new_list$x$state$legend_continuous$legend_max <- chart_continous_legend_legend_max
  new_list$x$state$legend_continuous$additional_max_label <- chart_continous_legend_additional_max_label
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
  list_chart_popup_mode <- c("none", "popup", "panel", "both", NULL)
  if (!is.null(chart_popup_mode)) {
    if (!chart_popup_mode %in% list_chart_popup_mode) {
      stop("`chart_popup_mode` must be one of: c('none', 'popup', 'panel', 'both')")
    } else {
      if (length(jsonlite::fromJSON('{"none": "none", "popup": "popup", "panel": "panel", "both": "both"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"none": "none", "popup": "popup", "panel": "panel", "both": "both"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_popup_mode %in% names(named_list)) {
          if (is.logical(chart_popup_mode)) {
            chart_popup_mode <- as.character(chart_popup_mode)
          }
          named_list_value <- unname(named_list[chart_popup_mode])[[1]]
          new_list$x$state$popup$mode <- named_list_value
        }
      }
    }
  }
  list_chart_popup_popup_is_custom <- c(FALSE, TRUE, NULL)
  if (!is.null(chart_popup_popup_is_custom)) {
    if (!chart_popup_popup_is_custom %in% list_chart_popup_popup_is_custom) {
      stop("`chart_popup_popup_is_custom` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && chart_popup_popup_is_custom %in% names(named_list)) {
          if (is.logical(chart_popup_popup_is_custom)) {
            chart_popup_popup_is_custom <- as.character(chart_popup_popup_is_custom)
          }
          named_list_value <- unname(named_list[chart_popup_popup_is_custom])[[1]]
          new_list$x$state$popup$popup_is_custom <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popup$show_popup_styles <- chart_popup_show_popup_styles
  if (length(chart_popup_popup_custom_header) > 1) {
    new_list$x$state$popup$popup_custom_header <- paste(chart_popup_popup_custom_header, collapse = "\n")
  } else {
    new_list$x$state$popup$popup_custom_header <- chart_popup_popup_custom_header
  }

  if (length(chart_popup_popup_custom_main) > 1) {
    new_list$x$state$popup$popup_custom_main <- paste(chart_popup_popup_custom_main, collapse = "\n")
  } else {
    new_list$x$state$popup$popup_custom_main <- chart_popup_popup_custom_main
  }

  if (length(chart_popup_popup_custom_accessible) > 1) {
    new_list$x$state$popup$popup_custom_accessible <- paste(chart_popup_popup_custom_accessible, collapse = "\n")
  } else {
    new_list$x$state$popup$popup_custom_accessible <- chart_popup_popup_custom_accessible
  }

  new_list$x$state$popup$popup_width <- chart_popup_popup_width
  new_list$x$state$popup$popup_font_size <- chart_popup_popup_font_size
  new_list$x$state$popup$popup_text_color <- chart_popup_popup_text_color
  list_chart_popup_popup_align <- c("start", "center", "end", NULL)
  if (!is.null(chart_popup_popup_align)) {
    if (!chart_popup_popup_align %in% list_chart_popup_popup_align) {
      stop("`chart_popup_popup_align` must be one of: c('start', 'center', 'end')")
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
        if (length(named_list) > 1 && chart_popup_popup_align %in% names(named_list)) {
          if (is.logical(chart_popup_popup_align)) {
            chart_popup_popup_align <- as.character(chart_popup_popup_align)
          }
          named_list_value <- unname(named_list[chart_popup_popup_align])[[1]]
          new_list$x$state$popup$popup_align <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popup$popup_background <- chart_popup_popup_background
  new_list$x$state$popup$popup_background_opacity <- chart_popup_popup_background_opacity
  new_list$x$state$popup$popup_padding <- chart_popup_popup_padding
  new_list$x$state$popup$popup_radius <- chart_popup_popup_radius
  list_chart_popup_popup_header_type <- c("block", "inline", NULL)
  if (!is.null(chart_popup_popup_header_type)) {
    if (!chart_popup_popup_header_type %in% list_chart_popup_popup_header_type) {
      stop("`chart_popup_popup_header_type` must be one of: c('block', 'inline')")
    } else {
      if (length(jsonlite::fromJSON('{"block": "block", "inline": "inline"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"block": "block", "inline": "inline"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_popup_popup_header_type %in% names(named_list)) {
          if (is.logical(chart_popup_popup_header_type)) {
            chart_popup_popup_header_type <- as.character(chart_popup_popup_header_type)
          }
          named_list_value <- unname(named_list[chart_popup_popup_header_type])[[1]]
          new_list$x$state$popup$popup_header_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popup$popup_header_background <- chart_popup_popup_header_background
  new_list$x$state$popup$popup_header_text_color <- chart_popup_popup_header_text_color
  list_chart_popup_popup_list_type <- c("table", "ul", NULL)
  if (!is.null(chart_popup_popup_list_type)) {
    if (!chart_popup_popup_list_type %in% list_chart_popup_popup_list_type) {
      stop("`chart_popup_popup_list_type` must be one of: c('table', 'ul')")
    } else {
      if (length(jsonlite::fromJSON('{"table": "table", "ul": "ul"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"table": "table", "ul": "ul"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_popup_popup_list_type %in% names(named_list)) {
          if (is.logical(chart_popup_popup_list_type)) {
            chart_popup_popup_list_type <- as.character(chart_popup_popup_list_type)
          }
          named_list_value <- unname(named_list[chart_popup_popup_list_type])[[1]]
          new_list$x$state$popup$popup_list_type <- named_list_value
        }
      }
    }
  }
  list_chart_popup_popup_list_label_weight <- c("normal", "bold", NULL)
  if (!is.null(chart_popup_popup_list_label_weight)) {
    if (!chart_popup_popup_list_label_weight %in% list_chart_popup_popup_list_label_weight) {
      stop("`chart_popup_popup_list_label_weight` must be one of: c('normal', 'bold')")
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
        if (length(named_list) > 1 && chart_popup_popup_list_label_weight %in% names(named_list)) {
          if (is.logical(chart_popup_popup_list_label_weight)) {
            chart_popup_popup_list_label_weight <- as.character(chart_popup_popup_list_label_weight)
          }
          named_list_value <- unname(named_list[chart_popup_popup_list_label_weight])[[1]]
          new_list$x$state$popup$popup_list_label_weight <- named_list_value
        }
      }
    }
  }
  list_chart_popup_popup_list_separator <- c(": ", "  ", " ", "<br />", NULL)
  if (!is.null(chart_popup_popup_list_separator)) {
    if (!chart_popup_popup_list_separator %in% list_chart_popup_popup_list_separator) {
      stop("`chart_popup_popup_list_separator` must be one of: c(': ', '  ', ' ', '<br />')")
    } else {
      if (length(jsonlite::fromJSON('{": ": ": ", " \u2013 ": " \u2013 ", " ": " ", "<br />": "<br />"}')) > 1) {
        named_list <- jsonlite::fromJSON('{": ": ": ", " \u2013 ": " \u2013 ", " ": " ", "<br />": "<br />"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_popup_popup_list_separator %in% names(named_list)) {
          if (is.logical(chart_popup_popup_list_separator)) {
            chart_popup_popup_list_separator <- as.character(chart_popup_popup_list_separator)
          }
          named_list_value <- unname(named_list[chart_popup_popup_list_separator])[[1]]
          new_list$x$state$popup$popup_list_separator <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popup$popup_shadow <- chart_popup_popup_shadow
  new_list$x$state$popup$popup_pointer <- chart_popup_popup_pointer
  list_chart_popup_panel_position <- c("overlay", "left", "right", "top", "bottom", NULL)
  if (!is.null(chart_popup_panel_position)) {
    if (!chart_popup_panel_position %in% list_chart_popup_panel_position) {
      stop("`chart_popup_panel_position` must be one of: c('overlay', 'left', 'right', 'top', 'bottom')")
    } else {
      if (length(jsonlite::fromJSON('{"overlay": "overlay", "left": "left", "right": "right", "top": "top", "bottom": "bottom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"overlay": "overlay", "left": "left", "right": "right", "top": "top", "bottom": "bottom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_popup_panel_position %in% names(named_list)) {
          if (is.logical(chart_popup_panel_position)) {
            chart_popup_panel_position <- as.character(chart_popup_panel_position)
          }
          named_list_value <- unname(named_list[chart_popup_panel_position])[[1]]
          new_list$x$state$popup$panel_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popup$panel_open_duration <- chart_popup_panel_open_duration
  new_list$x$state$popup$panel_side_fixed <- chart_popup_panel_side_fixed
  if (length(chart_popup_panel_side_default_content) > 1) {
    new_list$x$state$popup$panel_side_default_content <- paste(chart_popup_panel_side_default_content, collapse = "\n")
  } else {
    new_list$x$state$popup$panel_side_default_content <- chart_popup_panel_side_default_content
  }

  list_chart_popup_panel_is_custom <- c(FALSE, TRUE, NULL)
  if (!is.null(chart_popup_panel_is_custom)) {
    if (!chart_popup_panel_is_custom %in% list_chart_popup_panel_is_custom) {
      stop("`chart_popup_panel_is_custom` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && chart_popup_panel_is_custom %in% names(named_list)) {
          if (is.logical(chart_popup_panel_is_custom)) {
            chart_popup_panel_is_custom <- as.character(chart_popup_panel_is_custom)
          }
          named_list_value <- unname(named_list[chart_popup_panel_is_custom])[[1]]
          new_list$x$state$popup$panel_is_custom <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popup$show_panel_styles <- chart_popup_show_panel_styles
  if (length(chart_popup_panel_custom_header) > 1) {
    new_list$x$state$popup$panel_custom_header <- paste(chart_popup_panel_custom_header, collapse = "\n")
  } else {
    new_list$x$state$popup$panel_custom_header <- chart_popup_panel_custom_header
  }

  if (length(chart_popup_panel_custom_main) > 1) {
    new_list$x$state$popup$panel_custom_main <- paste(chart_popup_panel_custom_main, collapse = "\n")
  } else {
    new_list$x$state$popup$panel_custom_main <- chart_popup_panel_custom_main
  }

  new_list$x$state$popup$panel_width_overlay <- chart_popup_panel_width_overlay
  new_list$x$state$popup$panel_height_overlay <- chart_popup_panel_height_overlay
  new_list$x$state$popup$panel_width_side <- chart_popup_panel_width_side
  new_list$x$state$popup$panel_height_side <- chart_popup_panel_height_side
  new_list$x$state$popup$panel_max_width <- chart_popup_panel_max_width
  new_list$x$state$popup$panel_max_height <- chart_popup_panel_max_height
  list_chart_popup_panel_vertical_position <- c("click", "center", NULL)
  if (!is.null(chart_popup_panel_vertical_position)) {
    if (!chart_popup_panel_vertical_position %in% list_chart_popup_panel_vertical_position) {
      stop("`chart_popup_panel_vertical_position` must be one of: c('click', 'center')")
    } else {
      if (length(jsonlite::fromJSON('{"click": "click", "center": "center"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"click": "click", "center": "center"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_popup_panel_vertical_position %in% names(named_list)) {
          if (is.logical(chart_popup_panel_vertical_position)) {
            chart_popup_panel_vertical_position <- as.character(chart_popup_panel_vertical_position)
          }
          named_list_value <- unname(named_list[chart_popup_panel_vertical_position])[[1]]
          new_list$x$state$popup$panel_vertical_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popup$panel_text_color <- chart_popup_panel_text_color
  new_list$x$state$popup$panel_font_size <- chart_popup_panel_font_size
  list_chart_popup_panel_align <- c("start", "center", "end", NULL)
  if (!is.null(chart_popup_panel_align)) {
    if (!chart_popup_panel_align %in% list_chart_popup_panel_align) {
      stop("`chart_popup_panel_align` must be one of: c('start', 'center', 'end')")
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
        if (length(named_list) > 1 && chart_popup_panel_align %in% names(named_list)) {
          if (is.logical(chart_popup_panel_align)) {
            chart_popup_panel_align <- as.character(chart_popup_panel_align)
          }
          named_list_value <- unname(named_list[chart_popup_panel_align])[[1]]
          new_list$x$state$popup$panel_align <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popup$panel_background <- chart_popup_panel_background
  new_list$x$state$popup$panel_background_opacity <- chart_popup_panel_background_opacity
  new_list$x$state$popup$panel_padding <- chart_popup_panel_padding
  new_list$x$state$popup$panel_radius <- chart_popup_panel_radius
  list_chart_popup_panel_list_type <- c("table", "ul", NULL)
  if (!is.null(chart_popup_panel_list_type)) {
    if (!chart_popup_panel_list_type %in% list_chart_popup_panel_list_type) {
      stop("`chart_popup_panel_list_type` must be one of: c('table', 'ul')")
    } else {
      if (length(jsonlite::fromJSON('{"table": "table", "ul": "ul"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"table": "table", "ul": "ul"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_popup_panel_list_type %in% names(named_list)) {
          if (is.logical(chart_popup_panel_list_type)) {
            chart_popup_panel_list_type <- as.character(chart_popup_panel_list_type)
          }
          named_list_value <- unname(named_list[chart_popup_panel_list_type])[[1]]
          new_list$x$state$popup$panel_list_type <- named_list_value
        }
      }
    }
  }
  list_chart_popup_panel_list_label_weight <- c("normal", "bold", NULL)
  if (!is.null(chart_popup_panel_list_label_weight)) {
    if (!chart_popup_panel_list_label_weight %in% list_chart_popup_panel_list_label_weight) {
      stop("`chart_popup_panel_list_label_weight` must be one of: c('normal', 'bold')")
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
        if (length(named_list) > 1 && chart_popup_panel_list_label_weight %in% names(named_list)) {
          if (is.logical(chart_popup_panel_list_label_weight)) {
            chart_popup_panel_list_label_weight <- as.character(chart_popup_panel_list_label_weight)
          }
          named_list_value <- unname(named_list[chart_popup_panel_list_label_weight])[[1]]
          new_list$x$state$popup$panel_list_label_weight <- named_list_value
        }
      }
    }
  }
  list_chart_popup_panel_list_separator <- c(": ", "  ", " ", "<br />", NULL)
  if (!is.null(chart_popup_panel_list_separator)) {
    if (!chart_popup_panel_list_separator %in% list_chart_popup_panel_list_separator) {
      stop("`chart_popup_panel_list_separator` must be one of: c(': ', '  ', ' ', '<br />')")
    } else {
      if (length(jsonlite::fromJSON('{": ": ": ", " \u2013 ": " \u2013 ", " ": " ", "<br />": "<br />"}')) > 1) {
        named_list <- jsonlite::fromJSON('{": ": ": ", " \u2013 ": " \u2013 ", " ": " ", "<br />": "<br />"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_popup_panel_list_separator %in% names(named_list)) {
          if (is.logical(chart_popup_panel_list_separator)) {
            chart_popup_panel_list_separator <- as.character(chart_popup_panel_list_separator)
          }
          named_list_value <- unname(named_list[chart_popup_panel_list_separator])[[1]]
          new_list$x$state$popup$panel_list_separator <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popup$panel_shadow <- chart_popup_panel_shadow
  new_list$x$state$axes_highlights$x_enabled <- chart_axes_highlights_x_enabled
  if (length(chart_axes_highlights_x_lines) > 1) {
    new_list$x$state$axes_highlights$x_lines <- paste(chart_axes_highlights_x_lines, collapse = "\n")
  } else {
    new_list$x$state$axes_highlights$x_lines <- chart_axes_highlights_x_lines
  }

  new_list$x$state$axes_highlights$x_line_color <- chart_axes_highlights_x_line_color
  new_list$x$state$axes_highlights$x_line_width <- chart_axes_highlights_x_line_width
  new_list$x$state$axes_highlights$x_line_dash <- chart_axes_highlights_x_line_dash
  if (length(chart_axes_highlights_x_areas) > 1) {
    new_list$x$state$axes_highlights$x_areas <- paste(chart_axes_highlights_x_areas, collapse = "\n")
  } else {
    new_list$x$state$axes_highlights$x_areas <- chart_axes_highlights_x_areas
  }

  new_list$x$state$axes_highlights$x_area_color <- chart_axes_highlights_x_area_color
  new_list$x$state$axes_highlights$x_area_opacity <- chart_axes_highlights_x_area_opacity
  list_chart_axes_highlights_x_area_texture <- c("none", "pattern-diagonal", "pattern-grid", "pattern-dots", NULL)
  if (!is.null(chart_axes_highlights_x_area_texture)) {
    if (!chart_axes_highlights_x_area_texture %in% list_chart_axes_highlights_x_area_texture) {
      stop("`chart_axes_highlights_x_area_texture` must be one of: c('none', 'pattern-diagonal', 'pattern-grid', 'pattern-dots')")
    } else {
      if (length(jsonlite::fromJSON('{"none": "none", "pattern-diagonal": "fl-pattern-diagonal", "pattern-grid": "fl-pattern-grid", "pattern-dots": "fl-pattern-dots"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"none": "none", "pattern-diagonal": "fl-pattern-diagonal", "pattern-grid": "fl-pattern-grid", "pattern-dots": "fl-pattern-dots"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_axes_highlights_x_area_texture %in% names(named_list)) {
          if (is.logical(chart_axes_highlights_x_area_texture)) {
            chart_axes_highlights_x_area_texture <- as.character(chart_axes_highlights_x_area_texture)
          }
          named_list_value <- unname(named_list[chart_axes_highlights_x_area_texture])[[1]]
          new_list$x$state$axes_highlights$x_area_texture <- named_list_value
        }
      }
    }
  }
  new_list$x$state$axes_highlights$x_label_vertical <- chart_axes_highlights_x_label_vertical
  list_chart_axes_highlights_x_label_y_position <- c("bottom", "middle", "top", NULL)
  if (!is.null(chart_axes_highlights_x_label_y_position)) {
    if (!chart_axes_highlights_x_label_y_position %in% list_chart_axes_highlights_x_label_y_position) {
      stop("`chart_axes_highlights_x_label_y_position` must be one of: c('bottom', 'middle', 'top')")
    } else {
      if (length(jsonlite::fromJSON('{"bottom": "bottom", "middle": "middle", "top": "top"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"bottom": "bottom", "middle": "middle", "top": "top"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_axes_highlights_x_label_y_position %in% names(named_list)) {
          if (is.logical(chart_axes_highlights_x_label_y_position)) {
            chart_axes_highlights_x_label_y_position <- as.character(chart_axes_highlights_x_label_y_position)
          }
          named_list_value <- unname(named_list[chart_axes_highlights_x_label_y_position])[[1]]
          new_list$x$state$axes_highlights$x_label_y_position <- named_list_value
        }
      }
    }
  }
  list_chart_axes_highlights_x_label_x_position <- c("left", "middle", "right", NULL)
  if (!is.null(chart_axes_highlights_x_label_x_position)) {
    if (!chart_axes_highlights_x_label_x_position %in% list_chart_axes_highlights_x_label_x_position) {
      stop("`chart_axes_highlights_x_label_x_position` must be one of: c('left', 'middle', 'right')")
    } else {
      if (length(jsonlite::fromJSON('{"left": "left", "middle": "middle", "right": "right"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"left": "left", "middle": "middle", "right": "right"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_axes_highlights_x_label_x_position %in% names(named_list)) {
          if (is.logical(chart_axes_highlights_x_label_x_position)) {
            chart_axes_highlights_x_label_x_position <- as.character(chart_axes_highlights_x_label_x_position)
          }
          named_list_value <- unname(named_list[chart_axes_highlights_x_label_x_position])[[1]]
          new_list$x$state$axes_highlights$x_label_x_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$axes_highlights$x_label_max_width <- chart_axes_highlights_x_label_max_width
  new_list$x$state$axes_highlights$x_font_size <- chart_axes_highlights_x_font_size
  list_chart_axes_highlights_x_font_weight <- c("regular", "bold", NULL)
  if (!is.null(chart_axes_highlights_x_font_weight)) {
    if (!chart_axes_highlights_x_font_weight %in% list_chart_axes_highlights_x_font_weight) {
      stop("`chart_axes_highlights_x_font_weight` must be one of: c('regular', 'bold')")
    } else {
      if (length(jsonlite::fromJSON('{"regular": "regular", "bold": "bold"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"regular": "regular", "bold": "bold"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_axes_highlights_x_font_weight %in% names(named_list)) {
          if (is.logical(chart_axes_highlights_x_font_weight)) {
            chart_axes_highlights_x_font_weight <- as.character(chart_axes_highlights_x_font_weight)
          }
          named_list_value <- unname(named_list[chart_axes_highlights_x_font_weight])[[1]]
          new_list$x$state$axes_highlights$x_font_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$axes_highlights$x_label_color <- chart_axes_highlights_x_label_color
  new_list$x$state$axes_highlights$x_shadow_color <- chart_axes_highlights_x_shadow_color
  new_list$x$state$axes_highlights$x_shadow_enabled <- chart_axes_highlights_x_shadow_enabled
  new_list$x$state$axes_highlights$y_enabled <- chart_axes_highlights_y_enabled
  if (length(chart_axes_highlights_y_lines) > 1) {
    new_list$x$state$axes_highlights$y_lines <- paste(chart_axes_highlights_y_lines, collapse = "\n")
  } else {
    new_list$x$state$axes_highlights$y_lines <- chart_axes_highlights_y_lines
  }

  new_list$x$state$axes_highlights$y_line_color <- chart_axes_highlights_y_line_color
  new_list$x$state$axes_highlights$y_line_width <- chart_axes_highlights_y_line_width
  new_list$x$state$axes_highlights$y_line_dash <- chart_axes_highlights_y_line_dash
  if (length(chart_axes_highlights_y_areas) > 1) {
    new_list$x$state$axes_highlights$y_areas <- paste(chart_axes_highlights_y_areas, collapse = "\n")
  } else {
    new_list$x$state$axes_highlights$y_areas <- chart_axes_highlights_y_areas
  }

  new_list$x$state$axes_highlights$y_area_color <- chart_axes_highlights_y_area_color
  new_list$x$state$axes_highlights$y_area_opacity <- chart_axes_highlights_y_area_opacity
  list_chart_axes_highlights_y_area_texture <- c("none", "pattern-diagonal", "pattern-grid", "pattern-dots", NULL)
  if (!is.null(chart_axes_highlights_y_area_texture)) {
    if (!chart_axes_highlights_y_area_texture %in% list_chart_axes_highlights_y_area_texture) {
      stop("`chart_axes_highlights_y_area_texture` must be one of: c('none', 'pattern-diagonal', 'pattern-grid', 'pattern-dots')")
    } else {
      if (length(jsonlite::fromJSON('{"none": "none", "pattern-diagonal": "fl-pattern-diagonal", "pattern-grid": "fl-pattern-grid", "pattern-dots": "fl-pattern-dots"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"none": "none", "pattern-diagonal": "fl-pattern-diagonal", "pattern-grid": "fl-pattern-grid", "pattern-dots": "fl-pattern-dots"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_axes_highlights_y_area_texture %in% names(named_list)) {
          if (is.logical(chart_axes_highlights_y_area_texture)) {
            chart_axes_highlights_y_area_texture <- as.character(chart_axes_highlights_y_area_texture)
          }
          named_list_value <- unname(named_list[chart_axes_highlights_y_area_texture])[[1]]
          new_list$x$state$axes_highlights$y_area_texture <- named_list_value
        }
      }
    }
  }
  list_chart_axes_highlights_y_label_x_position <- c("left", "middle", "right", NULL)
  if (!is.null(chart_axes_highlights_y_label_x_position)) {
    if (!chart_axes_highlights_y_label_x_position %in% list_chart_axes_highlights_y_label_x_position) {
      stop("`chart_axes_highlights_y_label_x_position` must be one of: c('left', 'middle', 'right')")
    } else {
      if (length(jsonlite::fromJSON('{"left": "left", "middle": "middle", "right": "right"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"left": "left", "middle": "middle", "right": "right"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_axes_highlights_y_label_x_position %in% names(named_list)) {
          if (is.logical(chart_axes_highlights_y_label_x_position)) {
            chart_axes_highlights_y_label_x_position <- as.character(chart_axes_highlights_y_label_x_position)
          }
          named_list_value <- unname(named_list[chart_axes_highlights_y_label_x_position])[[1]]
          new_list$x$state$axes_highlights$y_label_x_position <- named_list_value
        }
      }
    }
  }
  list_chart_axes_highlights_y_label_y_position <- c("above", "middle", "below", NULL)
  if (!is.null(chart_axes_highlights_y_label_y_position)) {
    if (!chart_axes_highlights_y_label_y_position %in% list_chart_axes_highlights_y_label_y_position) {
      stop("`chart_axes_highlights_y_label_y_position` must be one of: c('above', 'middle', 'below')")
    } else {
      if (length(jsonlite::fromJSON('{"above": "above", "middle": "middle", "below": "below"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"above": "above", "middle": "middle", "below": "below"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_axes_highlights_y_label_y_position %in% names(named_list)) {
          if (is.logical(chart_axes_highlights_y_label_y_position)) {
            chart_axes_highlights_y_label_y_position <- as.character(chart_axes_highlights_y_label_y_position)
          }
          named_list_value <- unname(named_list[chart_axes_highlights_y_label_y_position])[[1]]
          new_list$x$state$axes_highlights$y_label_y_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$axes_highlights$y_label_max_width <- chart_axes_highlights_y_label_max_width
  new_list$x$state$axes_highlights$y_font_size <- chart_axes_highlights_y_font_size
  list_chart_axes_highlights_y_font_weight <- c("regular", "bold", NULL)
  if (!is.null(chart_axes_highlights_y_font_weight)) {
    if (!chart_axes_highlights_y_font_weight %in% list_chart_axes_highlights_y_font_weight) {
      stop("`chart_axes_highlights_y_font_weight` must be one of: c('regular', 'bold')")
    } else {
      if (length(jsonlite::fromJSON('{"regular": "regular", "bold": "bold"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"regular": "regular", "bold": "bold"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_axes_highlights_y_font_weight %in% names(named_list)) {
          if (is.logical(chart_axes_highlights_y_font_weight)) {
            chart_axes_highlights_y_font_weight <- as.character(chart_axes_highlights_y_font_weight)
          }
          named_list_value <- unname(named_list[chart_axes_highlights_y_font_weight])[[1]]
          new_list$x$state$axes_highlights$y_font_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$axes_highlights$y_label_color <- chart_axes_highlights_y_label_color
  new_list$x$state$axes_highlights$y_shadow_color <- chart_axes_highlights_y_shadow_color
  new_list$x$state$axes_highlights$y_shadow_enabled <- chart_axes_highlights_y_shadow_enabled
  new_list$x$state$animation_duration <- animation_duration
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
