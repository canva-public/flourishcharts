#' Set line, bar and pie charts chart details
#' @name set_line_bar_pie_details
#' @param dual_axis Axis type. Choices: `FALSE`, `TRUE`. Flourish type hint: boolean, defaults to `NULL`
#' @param secondary_series Number of combo lines. In  line-bar mode , sets how many of your value columns are treated as lines. In  line-line mode , sets how many lines use the right axis.  The order counts from the start, so if you want column B as a line and A as a column, set the order in the column bindings to "B, A". Flourish type hint: number, defaults to `NULL`
#' @param stack_sort Stack sort mode. Choices: data, ascending, descending. Whether each stack is in the default order or sorted by value. Use ascending or descending with a stacked area chart to make a "bump" area chart. Flourish type hint: string, defaults to `NULL`
#' @param facet_layout Grid mode. Choices: single, facets. By default,  Grid of charts  creates a mini chart for each series.  If Grid of charts is set in your column bindings, a mini chart will be created for each unique value in your specified column. Flourish type hint: string, defaults to `NULL`
#' @param height_mode Height mode. Choices: auto, fill_space, aspect. Auto: sets the height based on the chart type, data and width.  Standard: uses the default Flourish responsive sizing.  Aspect ratio: sets the aspect of each plot.  This setting is ignored when embedded in a fixed-height context, such as a simple iframe embedFlourish type hint: string, defaults to `NULL`
#' @param facet_aspect Aspect (desktop). Aspect ratio of each plot in desktop mode, where 1 is square, above 1 is wider, and below 1 is taller. Flourish type hint: number, defaults to `NULL`
#' @param facet_aspect_mobile Aspect (mobile). Aspect of each plot in mobile mode, where 1 is square, above 1 is wider, and below 1 is taller. Flourish type hint: number, defaults to `NULL`
#' @param facet_aspect_breakpoint Breakpoint. The width at which mobile mode ends and desktop begins. Flourish type hint: number, defaults to `NULL`
#' @param sort_mode Sort mode. Choices: data, value, label. Flourish type hint: string, defaults to `NULL`
#' @param chart_facet_columns_fixed Grid mode. Choices: `FALSE`, `TRUE`. In Auto mode, the number of columns will change with screen size. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_facet_columns Columns. The number of columns in the grid. (If specifying custom positions, extra columns may be added automatically.). Flourish type hint: number, defaults to `NULL`
#' @param chart_facet_min_width Min chart width. The minimum width of a chart or cell in the grid. Determines the number of columns. Flourish type hint: number, defaults to `NULL`
#' @param chart_facet_min_width_fixed Min chart width. Specify the minimum width of a chart or cell in the grid, below which the Fixed grid will be ignored and it will fall back to responsive Auto mode. Flourish type hint: number, defaults to `NULL`
#' @param chart_facet_custom_grid Add custom positions. Specify positions for individual charts in the grid useful for making a map layout. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_facet_custom_positions Custom positions. Enter the name of a facet, one per line, using the format: Facet name: row, column where row and column are numbers indicating the grid position where a facet should be positioned.  For example, Alaska : 1, 1 Maine : 1, 11 Wisconsin : 2, 6 Flourish type hint: text, defaults to `NULL`
#' @param chart_facet_max_width Max chart width. The maximum width of a chart or cell in the grid. Flourish type hint: number, defaults to `NULL`
#' @param chart_facet_gutter_w Horizontal margin. Flourish type hint: number, defaults to `NULL`
#' @param chart_facet_gutter_h Vertical margin. Flourish type hint: number, defaults to `NULL`
#' @param chart_facet_animation On data change. Choices: auto, name, reuse. If a chart in the grid is removed, that cell can either be animated out (with another cell moving to take its place) or reused for the new data in that cell. Auto decides for you based on the data. Flourish type hint: string, defaults to `NULL`
#' @param chart_facet_titles Show titles. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_facet_title_align Alignment. Choices: auto, left, center, right. Flourish type hint: string, defaults to `NULL`
#' @param chart_facet_title_size Size. Relative to the width of the chart. Flourish type hint: number, defaults to `NULL`
#' @param chart_facet_title_unit Scale with chart. Choices: rem, facet. Flourish type hint: string, defaults to `NULL`
#' @param chart_facet_title_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_facet_title_padding_top Space above. Flourish type hint: number, defaults to `NULL`
#' @param chart_facet_title_padding_bottom Space below. Flourish type hint: number, defaults to `NULL`
#' @param chart_facet_title_bg Background. Choices: none, full, text. Flourish type hint: string, defaults to `NULL`
#' @param chart_facet_title_bg_color Background color. Flourish type hint: color, defaults to `NULL`
#' @param chart_facet_title_bg_padding Background padding. Horizontal space between text and background. Flourish type hint: number, defaults to `NULL`
#' @param x_axis_matching Same across grid. Ensure the X scale is the same across the grid. Flourish type hint: boolean, defaults to `NULL`
#' @param x_axis_last_row_only Last row only. Only show the X axis on the last row, where possible. Ignored if the X axis is not positioned at the bottom. Flourish type hint: boolean, defaults to `NULL`
#' @param y_axis_matching Same across grid. Ensure the Y scale is the same across the grid. Flourish type hint: boolean, defaults to `NULL`
#' @param y_axis_first_col_only First column only. Only show the Y axis on the first column of the grid, where possible. Flourish type hint: boolean, defaults to `NULL`
#' @param y2_axis_matching Same across grid. Ensure the secondary Y scale is the same across the grid. Flourish type hint: boolean, defaults to `NULL`
#' @param y2_axis_last_col_only Last column only. Only show the secondary Y axis on the last column of the grid, where possible. Flourish type hint: boolean, defaults to `NULL`
#' @param series_filter_mode Series filter. Choices: none, single, multi. Filter control for series/columns. The user can also filter by clicking on the legend, except in single select mode.  Use the animation settings panel to determine whether series animate when changing the filter. Flourish type hint: string, defaults to `NULL`
#' @param series_control_multi_text Placeholder text. Flourish type hint: string, defaults to `NULL`
#' @param series_control_multi_none_text No more results text. Flourish type hint: string, defaults to `NULL`
#' @param series_control_select_text Select text. Flourish type hint: string, defaults to `NULL`
#' @param max_series Max series to show. Limits the number of series/columns that will be visualized at once. Flourish type hint: number, defaults to `NULL`
#' @param series_control_background Background. Flourish type hint: color, defaults to `NULL`
#' @param series_control_text Text. Flourish type hint: color, defaults to `NULL`
#' @param series_control_border Border. Flourish type hint: color, defaults to `NULL`
#' @param series_control_pill_background Background. Flourish type hint: color, defaults to `NULL`
#' @param series_control_pill_text Text. Flourish type hint: color, defaults to `NULL`
#' @param series_control_pill_radius Border radius. Flourish type hint: number, defaults to `NULL`
#' @param series_control_single_all Include "All". Flourish type hint: boolean, defaults to `NULL`
#' @param series_control_single_all_text Name for "All". Flourish type hint: string, defaults to `NULL`
#' @param filter_rows_with_no_data Filter rows that have no data. This setting filters rows that have no data, this is useful in combination with filters and datasets that have a lot of empty cells. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_series_filter_controls_control_type Control type. Choices: dropdown, buttons, slider. Choose between a dropdown, buttons or a  time slider Flourish type hint: string, defaults to `NULL`
#' @param chart_series_filter_controls_control_styles Adv. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_series_filter_controls_control_title Control title. Flourish type hint: string, defaults to `NULL`
#' @param chart_series_filter_controls_button_group Grouped. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_series_filter_controls_button_group_width_mode Button group width. Choices: auto, full, fixed. Flourish type hint: string, defaults to `NULL`
#' @param chart_series_filter_controls_button_group_width_fixed Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_series_filter_controls_dropdown_width_mode Dropdown width. Choices: auto, full, fixed. Flourish type hint: string, defaults to `NULL`
#' @param chart_series_filter_controls_dropdown_width_fixed Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_series_filter_controls_slider_width Slider width. Width of the slider track in rems Flourish type hint: number, defaults to `NULL`
#' @param chart_series_filter_controls_slider_max_label_width Max label width. In rems, multiples of base font size. If larger than the longest label, only the space required to fit labels will be used. Flourish type hint: number, defaults to `NULL`
#' @param chart_series_filter_controls_slider_step_time Time between steps. Measured in seconds, positive values move the slider left to right, negative values move the slider right to left. Flourish type hint: number, defaults to `NULL`
#' @param chart_series_filter_controls_slider_loop Loop. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_series_filter_controls_slider_restart_pause Pause before loop. Measured in seconds and in addition to the regular step time displayed above. Flourish type hint: number, defaults to `NULL`
#' @param chart_series_filter_controls_sort Sorting. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param row_filter_control_all Include "All". Flourish type hint: boolean, defaults to `NULL`
#' @param row_filter_control_all_text Name for "All". Flourish type hint: string, defaults to `NULL`
#' @param chart_row_filter_controls_control_type Control type. Choices: dropdown, buttons, slider. Choose between a dropdown, buttons or a  time slider Flourish type hint: string, defaults to `NULL`
#' @param chart_row_filter_controls_control_styles Adv. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_row_filter_controls_control_title Control title. Flourish type hint: string, defaults to `NULL`
#' @param chart_row_filter_controls_button_group Grouped. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_row_filter_controls_button_group_width_mode Button group width. Choices: auto, full, fixed. Flourish type hint: string, defaults to `NULL`
#' @param chart_row_filter_controls_button_group_width_fixed Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_row_filter_controls_dropdown_width_mode Dropdown width. Choices: auto, full, fixed. Flourish type hint: string, defaults to `NULL`
#' @param chart_row_filter_controls_dropdown_width_fixed Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_row_filter_controls_slider_width Slider width. Width of the slider track in rems Flourish type hint: number, defaults to `NULL`
#' @param chart_row_filter_controls_slider_max_label_width Max label width. In rems, multiples of base font size. If larger than the longest label, only the space required to fit labels will be used. Flourish type hint: number, defaults to `NULL`
#' @param chart_row_filter_controls_slider_step_time Time between steps. Measured in seconds, positive values move the slider left to right, negative values move the slider right to left. Flourish type hint: number, defaults to `NULL`
#' @param chart_row_filter_controls_slider_loop Loop. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_row_filter_controls_slider_restart_pause Pause before loop. Measured in seconds and in addition to the regular step time displayed above. Flourish type hint: number, defaults to `NULL`
#' @param chart_row_filter_controls_sort Sorting. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param log_control_y_visible Show log control for Y axis. Adds a tabbed control to allow users to switch between log and linear Y scales. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_log_control_y_filter_controls_control_type Control type. Choices: dropdown, buttons, slider. Choose between a dropdown, buttons or a  time slider Flourish type hint: string, defaults to `NULL`
#' @param chart_log_control_y_filter_controls_control_styles Adv. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_log_control_y_filter_controls_control_title Control title. Flourish type hint: string, defaults to `NULL`
#' @param chart_log_control_y_filter_controls_button_group Grouped. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_log_control_y_filter_controls_button_group_width_mode Button group width. Choices: auto, full, fixed. Flourish type hint: string, defaults to `NULL`
#' @param chart_log_control_y_filter_controls_button_group_width_fixed Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_log_control_y_filter_controls_dropdown_width_mode Dropdown width. Choices: auto, full, fixed. Flourish type hint: string, defaults to `NULL`
#' @param chart_log_control_y_filter_controls_dropdown_width_fixed Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_log_control_y_filter_controls_slider_width Slider width. Width of the slider track in rems Flourish type hint: number, defaults to `NULL`
#' @param chart_log_control_y_filter_controls_slider_max_label_width Max label width. In rems, multiples of base font size. If larger than the longest label, only the space required to fit labels will be used. Flourish type hint: number, defaults to `NULL`
#' @param chart_log_control_y_filter_controls_slider_step_time Time between steps. Measured in seconds, positive values move the slider left to right, negative values move the slider right to left. Flourish type hint: number, defaults to `NULL`
#' @param chart_log_control_y_filter_controls_slider_loop Loop. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_log_control_y_filter_controls_slider_restart_pause Pause before loop. Measured in seconds and in addition to the regular step time displayed above. Flourish type hint: number, defaults to `NULL`
#' @param chart_log_control_y_filter_controls_sort Sorting. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param log_control_y_text_linear Linear text. Flourish type hint: string, defaults to `NULL`
#' @param log_control_y_text_log Log text. Flourish type hint: string, defaults to `NULL`
#' @param chart_controls_style_font_size Text size. Flourish type hint: number, defaults to `NULL`
#' @param chart_controls_style_font_weight Text weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_controls_style_height Height. Flourish type hint: number, defaults to `NULL`
#' @param chart_dropdown_control_style_background Background. Flourish type hint: color, defaults to `NULL`
#' @param chart_dropdown_control_style_font_color Text color. Flourish type hint: color, defaults to `NULL`
#' @param chart_dropdown_control_style_border_styles_advanced Dropdown border styles. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_dropdown_control_style_border_style Border style. Choices: all, bottom. Show border on all sides, or only at the bottom. Flourish type hint: string, defaults to `NULL`
#' @param chart_dropdown_control_style_border_width Border width. Flourish type hint: number, defaults to `NULL`
#' @param chart_dropdown_control_style_border_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_dropdown_control_style_border_transparency Transparency. Flourish type hint: number, defaults to `NULL`
#' @param chart_dropdown_control_style_border_radius Radius. Flourish type hint: number, defaults to `NULL`
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
#' @param chart_filter_controls_container_alignment Alignment. Choices: start, center, end. Flourish type hint: string, defaults to `NULL`
#' @param chart_filter_controls_container_controls_spacing Spacing. The space between controls, like dropdowns and adjacent button sets, in em units. Flourish type hint: number, defaults to `NULL`
#' @param controls_position Control position. Choices: log_series_row, series_log_row, log_row_series, series_row_log, row_log_series, row_series_log. If you have two or more controls turned on for your chart, you can change the order the controls appear. Flourish type hint: string, defaults to `NULL`
#' @param color_mode Color mode. Choices: column, row. By column will set the colors by series. Each column listed in the value column binding in the datasheet will have a different color.  By row will instead set the color depending on the datas label/time column binding. Flourish type hint: string, defaults to `NULL`
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
#' @param line_width Width. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param line_opacity Opacity. Flourish type hint: number, defaults to `NULL`
#' @param line_stroke Outline. Add a stroke around your lines to enhance visibility when overlapping. Flourish type hint: boolean, defaults to `NULL`
#' @param line_curve Line curve. Choices: curve_linear, curve_monotone_x, curve_natural, curve_step, curve_step_before, curve_step_after. Flourish type hint: string, defaults to `NULL`
#' @param line_dash_items Dashed lines. Specify the series that you would like to display with a dashed line. Multiple dashed lines can be set using multiple lines. For example:  Party 1 Party 2 Party 3. Flourish type hint: text, defaults to `NULL`
#' @param line_dash_width Dash width. Flourish type hint: number, defaults to `NULL`
#' @param line_dash_space_width Space width. Flourish type hint: number, defaults to `NULL`
#' @param line_interpolate Missing data points. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param shade_between_lines Shade areas between lines. Shade the gap between any two lines on your chart. Flourish type hint: boolean, defaults to `NULL`
#' @param shade_between_lines_config Which lines to shade between. Specify each area as a pair of line names separated by `::`. For example:  Series A :: Series B Series C :: Series D  You can optionally add a specific color and opacity for each area, e.g.  `Series A :: Series B :: red :: 0.1`. Flourish type hint: text, defaults to `NULL`
#' @param shade_between_lines_color Color. Flourish type hint: color, defaults to `NULL`
#' @param shade_between_lines_opacity Opacity. Flourish type hint: number, defaults to `NULL`
#' @param area_opacity Opacity. Flourish type hint: number, defaults to `NULL`
#' @param dot_mode Choices: auto, on, off. " Auto will automatically show dots on lines if fewer than 250 data points. Note: avoid showing dots for large datasets since it can lead to poor performance issues and poor-looking charts". Flourish type hint: string, defaults to `NULL`
#' @param dot_opacity Opacity. Flourish type hint: number, defaults to `NULL`
#' @param dot_radius Radius. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param dot_radius_last Final dot scale (%). Making the last point on a line larger can help emphasise the final value. This will usually be the dot furthest right on the axis. Flourish type hint: number, defaults to `NULL`
#' @param dot_hollow Hollow. Flourish type hint: boolean, defaults to `NULL`
#' @param bar_height Bar height. The approximate height of the bar, the exact height depends on padding and label style. Specified in rems Ignored if the chart is embedded at a fixed height. Flourish type hint: number, defaults to `NULL`
#' @param column_opacity Bar opacity. Flourish type hint: number, defaults to `NULL`
#' @param uniform_column_width Uniform column width. Flourish type hint: boolean, defaults to `NULL`
#' @param uniform_bar_height Uniform bar height. Flourish type hint: boolean, defaults to `NULL`
#' @param column_padding_inner Spacing (main). Space between bar stacks or groups, as a % of the width of a whole bar stack or group. Flourish type hint: number, defaults to `NULL`
#' @param column_padding_in_group Spacing (in group). Space between bars in groups, as a % of the width of a single bar in the group. Ignored if only a single series is selected. Flourish type hint: number, defaults to `NULL`
#' @param column_padding_stack Spacing (in stack). Space each bar in the stack, in tenths of a rem Flourish type hint: number, defaults to `NULL`
#' @param column_stroke Outline. Add a stroke around your columns or bars (same color as text). Flourish type hint: boolean, defaults to `NULL`
#' @param column_stroke_opacity Outline opacity. Flourish type hint: number, defaults to `NULL`
#' @param column_stroke_color Outline color. Flourish type hint: color, defaults to `NULL`
#' @param donut_inner_radius Doughnut hole (%). Flourish type hint: number, defaults to `NULL`
#' @param donut_corner_radius Corner curve (pixels). Flourish type hint: number, defaults to `NULL`
#' @param donut_pad_angle Segment padding (degrees). Flourish type hint: number, defaults to `NULL`
#' @param donut_auto_scale Scale pies based on data. Scale each pie chart in the grid so that the area of each pie/donut reflect its value. Flourish type hint: boolean, defaults to `NULL`
#' @param bar_labels_above Label style. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param bar_labels_color Color. Flourish type hint: color, defaults to `NULL`
#' @param bar_labels_font_size Size. When in Standard or Aspect ratio height mode, the font size of the labels will be limited to the space available. In remsFlourish type hint: number, defaults to `NULL`
#' @param bar_labels_weight Choices: 600, 400. Flourish type hint: string, defaults to `NULL`
#' @param line_end_labels Show labels on lines. Show series labels on the end of lines if theres enough space. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_line_labels_max_width Max label width. The maximum allowed label width. Flourish type hint: number, defaults to `NULL`
#' @param chart_line_labels_overlap_mode Overlaps. Choices: spread, hide, none. What to do with overlaps. Flourish type hint: string, defaults to `NULL`
#' @param chart_line_labels_spreading_margin Space between labels. The space left between labels when spreading them out to avoid overlaps. Flourish type hint: number, defaults to `NULL`
#' @param chart_line_labels_data_point_margin Distance. The space between the data point and the label in rems (a multiple of base font size). Flourish type hint: number, defaults to `NULL`
#' @param chart_line_labels_show_only_labels Show only certain labels. Manually specify which labels youd like to display (one entry per line that should match headers from the Values columns). Flourish type hint: text, defaults to `NULL`
#' @param chart_line_labels_text_color Color. If cleared, uses the main text color from the Layout settings panel. Flourish type hint: color, defaults to `NULL`
#' @param chart_line_labels_text_size Size. Flourish type hint: number, defaults to `NULL`
#' @param chart_line_labels_text_bg_color Outline. If cleared, uses the main background color from the Layout settings panel. Flourish type hint: color, defaults to `NULL`
#' @param chart_line_labels_text_bg_size Outline width. As a % of the font size. Flourish type hint: number, defaults to `NULL`
#' @param chart_line_labels_text_line_height Line height. Flourish type hint: number, defaults to `NULL`
#' @param chart_line_labels_text_max_lines Max lines. The max number of lines for each label. Flourish type hint: number, defaults to `NULL`
#' @param chart_line_labels_text_weight Weight. Choices: 400, 700. Flourish type hint: string, defaults to `NULL`
#' @param chart_line_labels_lines Connector lines. Choices: auto, on, off. Flourish type hint: string, defaults to `NULL`
#' @param chart_line_labels_line_style Line style. Choices: straight, step. Flourish type hint: string, defaults to `NULL`
#' @param chart_line_labels_line_color Color. If cleared, uses the main text color from the Layout settings panel. Flourish type hint: color, defaults to `NULL`
#' @param chart_line_labels_line_width Width. In rems (a multiple of base font size). Flourish type hint: number, defaults to `NULL`
#' @param chart_line_labels_line_range Length. The width of the space given over to lines; in rems, a multiple of base font size. Flourish type hint: number, defaults to `NULL`
#' @param chart_line_labels_line_padding Padding. The padding to the left and right of the line; in rems, a multiple of base font size. Flourish type hint: number, defaults to `NULL`
#' @param labels Show labels on data points. Flourish type hint: boolean, defaults to `NULL`
#' @param labels_hide_overlaps Hide overlapping labels. Flourish type hint: boolean, defaults to `NULL`
#' @param labels_dot_center Position labels on center of dot. Flourish type hint: boolean, defaults to `NULL`
#' @param labels_column_align Bar label alignment. Choices: bottom, middle, top, above. The final above option puts the labels above the bars in standard column charts. In stacked charts, where the space above the stack is reserved for stack total the labels falls back to top alignment. Flourish type hint: string, defaults to `NULL`
#' @param labels_column_padding Padding. Space above or below, as a proportion of the font size in rems Flourish type hint: number, defaults to `NULL`
#' @param labels_bar_align Label alignment. Choices: left, center, right, out. In stacked bar charts the final out (outside of bar) option falls back to right alignment, since the space after the stack is reserved for stack total labels (see below). Flourish type hint: string, defaults to `NULL`
#' @param labels_bar_autohide Hide if too big. Turn off to force labels to show, even if they will overflow the bars. Ignored when labels are not inside the bars. Flourish type hint: boolean, defaults to `NULL`
#' @param labels_color_mode Text color. Choices: auto, data, contrast, fixed. Contrast mode is black or white depending on the color of the data point (or the background color for labels positioned over the background). Flourish type hint: string, defaults to `NULL`
#' @param labels_fixed_color Color. Flourish type hint: color, defaults to `NULL`
#' @param labels_font_weight Weight. Choices: 600, 400. Flourish type hint: string, defaults to `NULL`
#' @param labels_font_size_mode Size. Choices: auto, fixed. Flourish type hint: string, defaults to `NULL`
#' @param labels_font_size Size. Flourish type hint: number, defaults to `NULL`
#' @param labels_bg_mode Outline. Choices: on, off. A text outline/background can make the text more readable by increasing contrast. Flourish type hint: string, defaults to `NULL`
#' @param labels_bg_size Size. Size of the background, as % of text size. Flourish type hint: number, defaults to `NULL`
#' @param labels_content Label content. Choices: auto, value, label, both. Flourish type hint: string, defaults to `NULL`
#' @param stack_labels Show labels for stack totals. Flourish type hint: boolean, defaults to `NULL`
#' @param stack_labels_color Color. Flourish type hint: color, defaults to `NULL`
#' @param stack_labels_font_size Size. Flourish type hint: number, defaults to `NULL`
#' @param stack_labels_weight Weight. Choices: 600, 400. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_axis_position Position. Choices: bottom, float-below, float-above, top, off. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_y_axis_position Y value. Vertical position of the x axis on the y scale. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_numeric_scale_type Type. Choices: linear, log. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_linear_min Min. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_linear_max Max. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_log_min Min. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_log_max Max. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_datetime_min Min (date). Use the input date format as specified in the datasheet. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_datetime_max Max (date). Use the input date format as specified in the datasheet. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_flip Flip axis. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_x_axis_show_scale_settings Configure default min/max. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_x_axis_nice Round min/max. Choices: `TRUE`, `FALSE`. When enabled, scales automatically extend to "nice" rounded start/end values, such as hundreds or whole years. Overridden by any explicitly specified scale min and max. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_x_axis_zero_axis Include zero. Choices: auto, on, off. Whether to extend the axis to include zero if the data values are all positive or all negative. Overridden by any explicitly specified scale min and max. Flourish type hint: string, defaults to `NULL`
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
#' @param chart_x_axis_tick_label_space_mode Space mode. Choices: auto, max, fixed. How the vertical space available for tick labels is determined. "Auto" means that the space is automatically determined. "Max" lets you specify the maximum vertical space tick labels may occupy. "Fixed" lets you specify a fixed amount of vertical space for tick labels. Tick labels will be truncated to fit within the allocated horizontal space. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_tick_label_space Space. The space allocated for tick labels (relative to the root font size). Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_tick_mode Mode. Choices: auto, number, custom. Determines how the tick values are chosen. "Auto" mode chooses the ticks automatically. "Number" mode lets you specify how many ticks are drawn. "Custom" mode lets you specify which ticks are drawn. If the axis is categorical, "Number" mode is ignored. Flourish type hint: string, defaults to `NULL`
#' @param chart_x_axis_tick_number Number. Approximate number of ticks or gridlines. The actual number will depend on the range of values, chart size, etc. Flourish type hint: number, defaults to `NULL`
#' @param chart_x_axis_tick_custom One tick label per line. Specify the ticks to show, one per line. For dates, use the input format as specified in the datasheet. You can also use `{{FIRST}}` and `{{LAST}}` to add ticks at the minimum and maximum of the axis. For example: `{{FIRST}}` 25000 50000 75000 `{{LAST}}`. Flourish type hint: text, defaults to `NULL`
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
#' @param chart_x_axis_gridline_category_dividers Put lines between categories. On a categorical axis this option disables the gridline on each tick and instead adds rules between each category to give a table-like design. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_x_axis_gridline_category_dividers_extend Extend. Extends the dividers into the axis margins. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_y_axis_axis_visible Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_y_axis_numeric_scale_type Type. Choices: linear, log. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_linear_min Min. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_linear_max Max. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_log_min Min. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_log_max Max. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_datetime_min Min (date). Use the same format as displayed in the axis. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_datetime_max Max (date). Use the same format as displayed in the axis. Flourish type hint: string, defaults to `NULL`
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
#' @param chart_y_axis_tick_label_space_mode Space mode. Choices: auto, max, fixed. Sets how the horizontal space available for tick labels is determined. "Auto" means that the space is automatically determined. "Max" lets you specify the maximum horizontal space tick labels may occupy. "Fixed" lets you specify a fixed amount of horizontal space for tick labels. Tick labels will be truncated to fit within the allocated horizontal space. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_tick_label_space Space. The space allocated for tick labels (relative to the root font size). Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_tick_mode Mode. Choices: auto, number, custom. Determines how the tick values are chosen. "Auto" mode chooses the ticks automatically. "Number" mode lets you specify how many ticks are drawn. "Custom" mode lets you specify which ticks are drawn. If the axis is categorical, "Number" mode is ignored. Flourish type hint: string, defaults to `NULL`
#' @param chart_y_axis_tick_number Number. Approximate number of ticks or gridlines. The actual number will depend on the range of values, chart size, etc. Flourish type hint: number, defaults to `NULL`
#' @param chart_y_axis_tick_custom One tick label per line. Specify the ticks to show, one per line. For dates, use the input format as specified in the datasheet. You can also use `{{FIRST}}` and `{{LAST}}` to add ticks at the minimum and maximum of the axis. For example: `{{FIRST}}` 25000 50000 75000 `{{LAST}}`. Flourish type hint: text, defaults to `NULL`
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
#' @param chart_y_axis_gridline_category_dividers Put lines between categories. On a categorical axis this option disables the gridline on each tick and instead adds rules between each category to give a table-like design. Ignored for date and numeric axes. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_y_axis_gridline_category_dividers_extend Extend. Extends the dividers into the axis margins. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_secondary_y_axis_axis_visible Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_secondary_y_axis_numeric_scale_type Type. Choices: linear, log. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_y_axis_linear_min Min. Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_y_axis_linear_max Max. Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_y_axis_log_min Min. Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_y_axis_log_max Max. Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_y_axis_datetime_min Min (date). Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_y_axis_datetime_max Max (date). Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_y_axis_flip Flip axis. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_secondary_y_axis_show_scale_settings Configure default min/max. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_secondary_y_axis_nice Round min/max. Choices: `TRUE`, `FALSE`. When enabled, scales automatically extend to "nice" rounded start/end values, such as hundreds or whole years. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_secondary_y_axis_zero_axis Include zero. Choices: auto, on, off. Whether to extend the axis to include zero if the data values are all positive or all negative. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_y_axis_title_mode Type. Choices: auto, custom. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_y_axis_title Text. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_y_axis_title_styling Styling. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_secondary_y_axis_title_position Position. Choices: side, end. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_y_axis_title_weight Weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_y_axis_title_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_secondary_y_axis_title_size Size. Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_y_axis_title_padding Padding. Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_y_axis_tick_label_position Position. Choices: default, above, below. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_y_axis_tick_label_styling Styling. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_secondary_y_axis_tick_label_size Size. Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_y_axis_tick_label_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_secondary_y_axis_tick_padding Padding. Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_y_axis_tick_label_angle Angle. Choices: 0, 30, 45, 60, 90. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_y_axis_tick_label_weight Weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_y_axis_tick_label_max_lines Max lines. Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_y_axis_tick_label_line_height Line height. Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_y_axis_tick_label_space_mode Space mode. Choices: auto, max, fixed. Sets how the horizontal space available for tick labels is determined. "Auto" means that the space is automatically determined. "Max" lets you specify the maximum horizontal space tick labels may occupy. "Fixed" lets you specify a fixed amount of horizontal space for tick labels. Tick labels will be truncated to fit within the allocated horizontal space. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_y_axis_tick_label_space Space. The space allocated for tick labels (relative to the root font size). Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_y_axis_tick_mode Mode. Choices: auto, number, custom. Determines how the tick values are chosen. "Auto" mode chooses the ticks automatically. "Number" mode lets you specify how many ticks are drawn. "Custom" mode lets you specify which ticks are drawn. If the axis is categorical, "Number" mode is ignored. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_y_axis_tick_number Number. Approximate number of ticks or gridlines. The actual number will depend on the range of values, chart size, etc. Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_y_axis_tick_custom One tick label per line. Specify the ticks to show, one per line. For dates, use the input format as specified in the datasheet. You can also use `{{FIRST}}` and `{{LAST}}` to add ticks at the minimum and maximum of the axis. For example: `{{FIRST}}` 25000 50000 75000 `{{LAST}}`. Flourish type hint: text, defaults to `NULL`
#' @param chart_secondary_y_axis_line_and_tick_color Line color. Flourish type hint: color, defaults to `NULL`
#' @param chart_secondary_y_axis_line_and_tick_width Line width. Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_y_axis_tick_length Tick length. Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_y_axis_tick_side Side. Choices: out, in. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_y_axis_line_visible Axis line. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_secondary_y_axis_edge_padding Edge padding (%). Space between start/end of axis line and first/last category tick as a percentage of the spacing between ticks. Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_y_axis_gridlines_visible Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_secondary_y_axis_gridlines_styling Styling. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_secondary_y_axis_gridline_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_secondary_y_axis_gridline_style Style. Choices: solid, dash, dot, dot_dash. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_y_axis_gridline_width Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_y_axis_gridline_category_dividers Put lines between categories. On a categorical axis this option disables the gridline on each tick and instead adds rules between each category to give a table-like design. Ignored for date and numeric axes. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_secondary_y_axis_gridline_category_dividers_extend Extend. Extends the dividers into the axis margins. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_background_background_color_enabled Color. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_background_background_image_enabled Image. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_background_background_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_background_background_image_src Image URL. Flourish type hint: url, defaults to `NULL`
#' @param chart_background_background_image_size Size. Choices: stretch, slice, meet. Flourish type hint: string, defaults to `NULL`
#' @param chart_background_background_image_position Position. Choices: x_min_y_min, x_mid_y_min, x_max_y_min, x_max_y_mid, x_mid_y_mid, x_min_y_max, x_mid_y_max, x_max_y_max. Flourish type hint: string, defaults to `NULL`
#' @param number_format_labels_prefix Prefix. Text to place in front of a number. Flourish type hint: string, defaults to `NULL`
#' @param number_format_labels_suffix Suffix. Text to place after a number. Flourish type hint: string, defaults to `NULL`
#' @param number_format_labels_n_dec Decimal places. Decimal places. You can also enter a negative integer to round to a whole number with that many zeros. For example, -2 will round to the nearest hundred. Flourish type hint: number, defaults to `NULL`
#' @param number_format_labels_advanced Advanced. Flourish type hint: boolean, defaults to `NULL`
#' @param number_format_labels_negative_sign Styling of negative numbers. Choices: -$nk, $-nk, ($nk), $(n)k, none. Flourish type hint: string, defaults to `NULL`
#' @param number_format_labels_strip_zeros Remove trailing zeros. Flourish type hint: boolean, defaults to `NULL`
#' @param number_format_labels_strip_separator Hide thousands separator below 10,000. Turn off if you want four-digit numbers to include a separator, e.g. 1,234 rather than 1234. Flourish type hint: boolean, defaults to `NULL`
#' @param number_format_labels_transform_labels Multiply/divide values. Flourish type hint: boolean, defaults to `NULL`
#' @param number_format_labels_transform Choices: multiply, divide, exponentiate. Flourish type hint: string, defaults to `NULL`
#' @param number_format_labels_multiply_divide_constant Flourish type hint: number, defaults to `NULL`
#' @param number_format_labels_exponentiate_constant Flourish type hint: number, defaults to `NULL`
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
#' @param number_format_prop Show % values. Toggles between showing the raw values from the datasheet and the computed percent values for the row in popups/panels. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_secondary_number_date_format_prefix Prefix. Text to place in front of a number. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_number_date_format_suffix Suffix. Text to place after a number. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_number_date_format_n_dec Decimal places. Decimal places. You can also enter a negative integer to round to a whole number with that many zeros. For example, -2 will round to the nearest hundred. Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_number_date_format_advanced Advanced. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_secondary_number_date_format_negative_sign Styling of negative numbers. Choices: -$nk, $-nk, ($nk), $(n)k, none. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_number_date_format_strip_zeros Remove trailing zeros. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_secondary_number_date_format_strip_separator Hide thousands separator below 10,000. Turn off if you want four-digit numbers to include a separator, e.g. 1,234 rather than 1234. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_secondary_number_date_format_transform_labels Multiply/divide values. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_secondary_number_date_format_transform Choices: multiply, divide, exponentiate. Flourish type hint: string, defaults to `NULL`
#' @param chart_secondary_number_date_format_multiply_divide_constant Flourish type hint: number, defaults to `NULL`
#' @param chart_secondary_number_date_format_exponentiate_constant Flourish type hint: number, defaults to `NULL`
#' @param legend_mode Legend mode. Choices: auto, on, off. Auto mode hides the legend in certain situations, such as when each color is already explained by the chart titles in a grid of charts A legend will not show with a single entry. Flourish type hint: string, defaults to `NULL`
#' @param legend_filter_mode Click legend to filter data. Choices: none, filter-in, filter-out. Single select : When clicked only shows the series selected  Multi select : When clicked, hides series selected. Multiple series can be hidden  Filterable legends are ignored in certain situations, such as when shading by series and using a series filter Flourish type hint: string, defaults to `NULL`
#' @param chart_legend_container_alignment Alignment. Choices: start, center, end. Flourish type hint: string, defaults to `NULL`
#' @param chart_legend_container_orientation Orientation. Choices: horizontal, vertical. Flourish type hint: string, defaults to `NULL`
#' @param chart_legend_container_title_weight Title weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_legend_container_text_weight Text weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param chart_legend_container_text_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_legend_container_text_size Size. Flourish type hint: number, defaults to `NULL`
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
#' @param legend_position Legend position. Choices: above, below. Flourish type hint: string, defaults to `NULL`
#' @param text_legend Add data colors to header text. Choices: auto, custom, off. When selected, this will change the color of any text in your header which matches the name of a series in your data.  This feature can be used instead of a legend when there are a small number of series, or it can be used to highlight a particular series. Note using optional HTML in the header is disabled if using this feature. Flourish type hint: string, defaults to `NULL`
#' @param text_legend_title Title. Flourish type hint: boolean, defaults to `NULL`
#' @param text_legend_subtitle Subtitle. Flourish type hint: boolean, defaults to `NULL`
#' @param text_legend_bold Bold. If checked, always use bold for colored items. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_popup_mode Choices: none, popup, panel, both. Flourish type hint: string, defaults to `NULL`
#' @param chart_popup_popup_is_custom Popup content. Choices: `FALSE`, `TRUE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_popup_show_popup_styles Show popup styles. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_popup_popup_custom_header Popup custom header. Use `{{VALUE}}` to include the numerical value of the current data point, or `{{SERIES}}` to display its series name. For any other selected columns use `{{column_name}}`.  Advanced users can include HTML to apply layouts, formatting, images, etc.  You can also hide content based on a column name being empty using `{{#if column_name}} Text to display when column_name is not empty {{/if}}`. For example, `{{Country}}` `{{#if Capital}}(Capital: {{Capital}}){{/if}}` Flourish type hint: html, defaults to `NULL`
#' @param chart_popup_popup_custom_main Popup custom main content. Use `{{VALUE}}` to include the numerical value of the current data point, or `{{SERIES}}` to display its series name. For any other selected columns use `{{column_name}}`.  Advanced users can include HTML to apply layouts, formatting, images, etc.  You can also hide content based on a column name being empty using `{{#if column_name}} Text to display when column_name is not empty {{/if}}`. For example, `{{Country}}` `{{#if Capital}}(Capital: {{Capital}}){{/if}}` Flourish type hint: html, defaults to `NULL`
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
#' @param chart_popup_panel_custom_header Panel custom header. Use `{{VALUE}}` to include the numerical value of the current data point, or `{{SERIES}}` to display its series name. For any other selected columns use `{{column_name}}`.  Advanced users can include HTML to apply layouts, formatting, images, etc.  You can also hide content based on a column name being empty using `{{#if column_name}} Text to display when column_name is not empty {{/if}}`. For example, `{{Country}}` `{{#if Capital}}(Capital: {{Capital}}){{/if}}` Flourish type hint: html, defaults to `NULL`
#' @param chart_popup_panel_custom_main Panel custom main content. Use `{{VALUE}}` to include the numerical value of the current data point, or `{{SERIES}}` to display its series name. For any other selected columns use `{{column_name}}`.  Advanced users can include HTML to apply layouts, formatting, images, etc.  You can also hide content based on a column name being empty using `{{#if column_name}} Text to display when column_name is not empty {{/if}}`. For example, `{{Country}}` `{{#if Capital}}(Capital: {{Capital}}){{/if}}` Flourish type hint: html, defaults to `NULL`
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
#' @param popup_color_headers Color headers to match data. Flourish type hint: boolean, defaults to `NULL`
#' @param show_series_text Set series info in popups. Allows you to add information about each series/column (e.g. each line) to the popups. Note: This is incompatible with custom popup content. Flourish type hint: boolean, defaults to `NULL`
#' @param popup_series_text Popup content for series. Adds content to the popup about the series. Separate column name and text with a double colon. For example:  Series 1 :: Comment about Series 1 Series 2 :: Comment about series 2. Flourish type hint: text, defaults to `NULL`
#' @param chart_axes_highlights_placement Placement of axis highlights. Choices: above, below. Flourish type hint: string, defaults to `NULL`
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
#' @param annotations_styles Show styling options. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_annotations_defaults_text_weight Weight. Choices: normal, bold. Flourish type hint: string, defaults to `NULL`
#' @param chart_annotations_defaults_text_size Text size. Flourish type hint: number, defaults to `NULL`
#' @param chart_annotations_defaults_text_color Text color. Flourish type hint: color, defaults to `NULL`
#' @param chart_annotations_defaults_label_width Max width. Flourish type hint: number, defaults to `NULL`
#' @param chart_annotations_defaults_text_background_mode Text background. Choices: none, outline, background. Flourish type hint: string, defaults to `NULL`
#' @param chart_annotations_defaults_text_bg Outline. Flourish type hint: color, defaults to `NULL`
#' @param chart_annotations_defaults_label_bg Background. Flourish type hint: color, defaults to `NULL`
#' @param chart_annotations_defaults_text_alignment Alignment. Choices: auto, start, center, end. Flourish type hint: string, defaults to `NULL`
#' @param chart_annotations_defaults_popup_position Popup position. Choices: center, left, right, top, bottom. Flourish type hint: string, defaults to `NULL`
#' @param chart_annotations_defaults_line_marker Marker. Choices: none, arrowhead_open, arrowhead. Flourish type hint: string, defaults to `NULL`
#' @param chart_annotations_defaults_stroke_width Width. Flourish type hint: number, defaults to `NULL`
#' @param chart_annotations_defaults_stroke_color Color. Flourish type hint: color, defaults to `NULL`
#' @param chart_annotations_defaults_connector_extend_line Extend line. Choices: enabled, disabled. Flourish type hint: string, defaults to `NULL`
#' @param data_trans_duration Animation duration. The duration of transitions in milliseconds, for example between two slides in a story. Flourish type hint: number, defaults to `NULL`
#' @param animate_on_load Animate on load. Flourish type hint: boolean, defaults to `NULL`
#' @param data_trans_bind_series Only animate series with same name. Determines how animations work when the data changes (e.g. between slides in a story ). When this is on, series (e.g. lines) will attempt to animate to become another line only if they have the same name (i.e. the same column header). Flourish type hint: boolean, defaults to `NULL`
#' @param data_trans_bind_data_points Only animate points with same label. Determines how animations work when the data changes (e.g. between slides in a story ). When this is on, data points (e.g. dots or bars) will attempt to animate to become other data points if they have the same label (e.g. date or category). Flourish type hint: boolean, defaults to `NULL`
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
#' @param chart_url_settings_enabled Update project from URL. Make it possible to change the visualizations settings/state from the URL hash, for example when embedding in an iframe or popup panel. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_url_settings_whitelist Allowed state properties. List each state property you want to make changeable with the URL hash See the template page for a full list of state properties.  Add one property name per line. Use dot format for nested properties, e.g. `layout.background_color`. Flourish type hint: text, defaults to `NULL`
#' @param . The prior Flourish object. No need to specify name if piping graph as the graph will take the first argument (i.e. the prior existing graph).
#' @return A Flourish chart
#' @examples 
#' try(
#'   flourish(chart_type = "line", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_line_bar_pie_data(gapminder) |> 
#'   set_line_bar_pie_details()
#' )
#' @export

set_line_bar_pie_details <- function(
    .,
    dual_axis = NULL,
    secondary_series = NULL,
    stack_sort = NULL,
    facet_layout = NULL,
    height_mode = NULL,
    facet_aspect = NULL,
    facet_aspect_mobile = NULL,
    facet_aspect_breakpoint = NULL,
    sort_mode = NULL,
    chart_facet_columns_fixed = NULL,
    chart_facet_columns = NULL,
    chart_facet_min_width = NULL,
    chart_facet_min_width_fixed = NULL,
    chart_facet_custom_grid = NULL,
    chart_facet_custom_positions = NULL,
    chart_facet_max_width = NULL,
    chart_facet_gutter_w = NULL,
    chart_facet_gutter_h = NULL,
    chart_facet_animation = NULL,
    chart_facet_titles = NULL,
    chart_facet_title_align = NULL,
    chart_facet_title_size = NULL,
    chart_facet_title_unit = NULL,
    chart_facet_title_color = NULL,
    chart_facet_title_padding_top = NULL,
    chart_facet_title_padding_bottom = NULL,
    chart_facet_title_bg = NULL,
    chart_facet_title_bg_color = NULL,
    chart_facet_title_bg_padding = NULL,
    x_axis_matching = NULL,
    x_axis_last_row_only = NULL,
    y_axis_matching = NULL,
    y_axis_first_col_only = NULL,
    y2_axis_matching = NULL,
    y2_axis_last_col_only = NULL,
    series_filter_mode = NULL,
    series_control_multi_text = NULL,
    series_control_multi_none_text = NULL,
    series_control_select_text = NULL,
    max_series = NULL,
    series_control_background = NULL,
    series_control_text = NULL,
    series_control_border = NULL,
    series_control_pill_background = NULL,
    series_control_pill_text = NULL,
    series_control_pill_radius = NULL,
    series_control_single_all = NULL,
    series_control_single_all_text = NULL,
    filter_rows_with_no_data = NULL,
    chart_series_filter_controls_control_type = NULL,
    chart_series_filter_controls_control_styles = NULL,
    chart_series_filter_controls_control_title = NULL,
    chart_series_filter_controls_button_group = NULL,
    chart_series_filter_controls_button_group_width_mode = NULL,
    chart_series_filter_controls_button_group_width_fixed = NULL,
    chart_series_filter_controls_dropdown_width_mode = NULL,
    chart_series_filter_controls_dropdown_width_fixed = NULL,
    chart_series_filter_controls_slider_width = NULL,
    chart_series_filter_controls_slider_max_label_width = NULL,
    chart_series_filter_controls_slider_step_time = NULL,
    chart_series_filter_controls_slider_loop = NULL,
    chart_series_filter_controls_slider_restart_pause = NULL,
    chart_series_filter_controls_sort = NULL,
    row_filter_control_all = NULL,
    row_filter_control_all_text = NULL,
    chart_row_filter_controls_control_type = NULL,
    chart_row_filter_controls_control_styles = NULL,
    chart_row_filter_controls_control_title = NULL,
    chart_row_filter_controls_button_group = NULL,
    chart_row_filter_controls_button_group_width_mode = NULL,
    chart_row_filter_controls_button_group_width_fixed = NULL,
    chart_row_filter_controls_dropdown_width_mode = NULL,
    chart_row_filter_controls_dropdown_width_fixed = NULL,
    chart_row_filter_controls_slider_width = NULL,
    chart_row_filter_controls_slider_max_label_width = NULL,
    chart_row_filter_controls_slider_step_time = NULL,
    chart_row_filter_controls_slider_loop = NULL,
    chart_row_filter_controls_slider_restart_pause = NULL,
    chart_row_filter_controls_sort = NULL,
    log_control_y_visible = NULL,
    chart_log_control_y_filter_controls_control_type = NULL,
    chart_log_control_y_filter_controls_control_styles = NULL,
    chart_log_control_y_filter_controls_control_title = NULL,
    chart_log_control_y_filter_controls_button_group = NULL,
    chart_log_control_y_filter_controls_button_group_width_mode = NULL,
    chart_log_control_y_filter_controls_button_group_width_fixed = NULL,
    chart_log_control_y_filter_controls_dropdown_width_mode = NULL,
    chart_log_control_y_filter_controls_dropdown_width_fixed = NULL,
    chart_log_control_y_filter_controls_slider_width = NULL,
    chart_log_control_y_filter_controls_slider_max_label_width = NULL,
    chart_log_control_y_filter_controls_slider_step_time = NULL,
    chart_log_control_y_filter_controls_slider_loop = NULL,
    chart_log_control_y_filter_controls_slider_restart_pause = NULL,
    chart_log_control_y_filter_controls_sort = NULL,
    log_control_y_text_linear = NULL,
    log_control_y_text_log = NULL,
    chart_controls_style_font_size = NULL,
    chart_controls_style_font_weight = NULL,
    chart_controls_style_height = NULL,
    chart_dropdown_control_style_background = NULL,
    chart_dropdown_control_style_font_color = NULL,
    chart_dropdown_control_style_border_styles_advanced = NULL,
    chart_dropdown_control_style_border_style = NULL,
    chart_dropdown_control_style_border_width = NULL,
    chart_dropdown_control_style_border_color = NULL,
    chart_dropdown_control_style_border_transparency = NULL,
    chart_dropdown_control_style_border_radius = NULL,
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
    chart_filter_controls_container_alignment = NULL,
    chart_filter_controls_container_controls_spacing = NULL,
    controls_position = NULL,
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
    line_width = NULL,
    line_opacity = NULL,
    line_stroke = NULL,
    line_curve = NULL,
    line_dash_items = NULL,
    line_dash_width = NULL,
    line_dash_space_width = NULL,
    line_interpolate = NULL,
    shade_between_lines = NULL,
    shade_between_lines_config = NULL,
    shade_between_lines_color = NULL,
    shade_between_lines_opacity = NULL,
    area_opacity = NULL,
    dot_mode = NULL,
    dot_opacity = NULL,
    dot_radius = NULL,
    dot_radius_last = NULL,
    dot_hollow = NULL,
    bar_height = NULL,
    column_opacity = NULL,
    uniform_column_width = NULL,
    uniform_bar_height = NULL,
    column_padding_inner = NULL,
    column_padding_in_group = NULL,
    column_padding_stack = NULL,
    column_stroke = NULL,
    column_stroke_opacity = NULL,
    column_stroke_color = NULL,
    donut_inner_radius = NULL,
    donut_corner_radius = NULL,
    donut_pad_angle = NULL,
    donut_auto_scale = NULL,
    bar_labels_above = NULL,
    bar_labels_color = NULL,
    bar_labels_font_size = NULL,
    bar_labels_weight = NULL,
    line_end_labels = NULL,
    chart_line_labels_max_width = NULL,
    chart_line_labels_overlap_mode = NULL,
    chart_line_labels_spreading_margin = NULL,
    chart_line_labels_data_point_margin = NULL,
    chart_line_labels_show_only_labels = NULL,
    chart_line_labels_text_color = NULL,
    chart_line_labels_text_size = NULL,
    chart_line_labels_text_bg_color = NULL,
    chart_line_labels_text_bg_size = NULL,
    chart_line_labels_text_line_height = NULL,
    chart_line_labels_text_max_lines = NULL,
    chart_line_labels_text_weight = NULL,
    chart_line_labels_lines = NULL,
    chart_line_labels_line_style = NULL,
    chart_line_labels_line_color = NULL,
    chart_line_labels_line_width = NULL,
    chart_line_labels_line_range = NULL,
    chart_line_labels_line_padding = NULL,
    labels = NULL,
    labels_hide_overlaps = NULL,
    labels_dot_center = NULL,
    labels_column_align = NULL,
    labels_column_padding = NULL,
    labels_bar_align = NULL,
    labels_bar_autohide = NULL,
    labels_color_mode = NULL,
    labels_fixed_color = NULL,
    labels_font_weight = NULL,
    labels_font_size_mode = NULL,
    labels_font_size = NULL,
    labels_bg_mode = NULL,
    labels_bg_size = NULL,
    labels_content = NULL,
    stack_labels = NULL,
    stack_labels_color = NULL,
    stack_labels_font_size = NULL,
    stack_labels_weight = NULL,
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
    chart_secondary_y_axis_axis_visible = NULL,
    chart_secondary_y_axis_numeric_scale_type = NULL,
    chart_secondary_y_axis_linear_min = NULL,
    chart_secondary_y_axis_linear_max = NULL,
    chart_secondary_y_axis_log_min = NULL,
    chart_secondary_y_axis_log_max = NULL,
    chart_secondary_y_axis_datetime_min = NULL,
    chart_secondary_y_axis_datetime_max = NULL,
    chart_secondary_y_axis_flip = NULL,
    chart_secondary_y_axis_show_scale_settings = NULL,
    chart_secondary_y_axis_nice = NULL,
    chart_secondary_y_axis_zero_axis = NULL,
    chart_secondary_y_axis_title_mode = NULL,
    chart_secondary_y_axis_title = NULL,
    chart_secondary_y_axis_title_styling = NULL,
    chart_secondary_y_axis_title_position = NULL,
    chart_secondary_y_axis_title_weight = NULL,
    chart_secondary_y_axis_title_color = NULL,
    chart_secondary_y_axis_title_size = NULL,
    chart_secondary_y_axis_title_padding = NULL,
    chart_secondary_y_axis_tick_label_position = NULL,
    chart_secondary_y_axis_tick_label_styling = NULL,
    chart_secondary_y_axis_tick_label_size = NULL,
    chart_secondary_y_axis_tick_label_color = NULL,
    chart_secondary_y_axis_tick_padding = NULL,
    chart_secondary_y_axis_tick_label_angle = NULL,
    chart_secondary_y_axis_tick_label_weight = NULL,
    chart_secondary_y_axis_tick_label_max_lines = NULL,
    chart_secondary_y_axis_tick_label_line_height = NULL,
    chart_secondary_y_axis_tick_label_space_mode = NULL,
    chart_secondary_y_axis_tick_label_space = NULL,
    chart_secondary_y_axis_tick_mode = NULL,
    chart_secondary_y_axis_tick_number = NULL,
    chart_secondary_y_axis_tick_custom = NULL,
    chart_secondary_y_axis_line_and_tick_color = NULL,
    chart_secondary_y_axis_line_and_tick_width = NULL,
    chart_secondary_y_axis_tick_length = NULL,
    chart_secondary_y_axis_tick_side = NULL,
    chart_secondary_y_axis_line_visible = NULL,
    chart_secondary_y_axis_edge_padding = NULL,
    chart_secondary_y_axis_gridlines_visible = NULL,
    chart_secondary_y_axis_gridlines_styling = NULL,
    chart_secondary_y_axis_gridline_color = NULL,
    chart_secondary_y_axis_gridline_style = NULL,
    chart_secondary_y_axis_gridline_width = NULL,
    chart_secondary_y_axis_gridline_category_dividers = NULL,
    chart_secondary_y_axis_gridline_category_dividers_extend = NULL,
    chart_background_background_color_enabled = NULL,
    chart_background_background_image_enabled = NULL,
    chart_background_background_color = NULL,
    chart_background_background_image_src = NULL,
    chart_background_background_image_size = NULL,
    chart_background_background_image_position = NULL,
    number_format_labels_prefix = NULL,
    number_format_labels_suffix = NULL,
    number_format_labels_n_dec = NULL,
    number_format_labels_advanced = NULL,
    number_format_labels_negative_sign = NULL,
    number_format_labels_strip_zeros = NULL,
    number_format_labels_strip_separator = NULL,
    number_format_labels_transform_labels = NULL,
    number_format_labels_transform = NULL,
    number_format_labels_multiply_divide_constant = NULL,
    number_format_labels_exponentiate_constant = NULL,
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
    number_format_prop = NULL,
    chart_secondary_number_date_format_prefix = NULL,
    chart_secondary_number_date_format_suffix = NULL,
    chart_secondary_number_date_format_n_dec = NULL,
    chart_secondary_number_date_format_advanced = NULL,
    chart_secondary_number_date_format_negative_sign = NULL,
    chart_secondary_number_date_format_strip_zeros = NULL,
    chart_secondary_number_date_format_strip_separator = NULL,
    chart_secondary_number_date_format_transform_labels = NULL,
    chart_secondary_number_date_format_transform = NULL,
    chart_secondary_number_date_format_multiply_divide_constant = NULL,
    chart_secondary_number_date_format_exponentiate_constant = NULL,
    legend_mode = NULL,
    legend_filter_mode = NULL,
    chart_legend_container_alignment = NULL,
    chart_legend_container_orientation = NULL,
    chart_legend_container_title_weight = NULL,
    chart_legend_container_text_weight = NULL,
    chart_legend_container_text_color = NULL,
    chart_legend_container_text_size = NULL,
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
    legend_position = NULL,
    text_legend = NULL,
    text_legend_title = NULL,
    text_legend_subtitle = NULL,
    text_legend_bold = NULL,
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
    popup_color_headers = NULL,
    show_series_text = NULL,
    popup_series_text = NULL,
    chart_axes_highlights_placement = NULL,
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
    annotations_styles = NULL,
    chart_annotations_defaults_text_weight = NULL,
    chart_annotations_defaults_text_size = NULL,
    chart_annotations_defaults_text_color = NULL,
    chart_annotations_defaults_label_width = NULL,
    chart_annotations_defaults_text_background_mode = NULL,
    chart_annotations_defaults_text_bg = NULL,
    chart_annotations_defaults_label_bg = NULL,
    chart_annotations_defaults_text_alignment = NULL,
    chart_annotations_defaults_popup_position = NULL,
    chart_annotations_defaults_line_marker = NULL,
    chart_annotations_defaults_stroke_width = NULL,
    chart_annotations_defaults_stroke_color = NULL,
    chart_annotations_defaults_connector_extend_line = NULL,
    data_trans_duration = NULL,
    animate_on_load = NULL,
    data_trans_bind_series = NULL,
    data_trans_bind_data_points = NULL,
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
    chart_layout_screenreader_hide_primary = NULL,
    chart_url_settings_enabled = NULL,
    chart_url_settings_whitelist = NULL) {
  details_error(., "line_bar_pie")

  old_list <- .
  new_list <- list()

  if (isTRUE(old_list$x$template != "@flourish/line-bar-pie")) {
    stop("`set_line_bar_pie_details()` is not supported for this chart type.")
  }
  list_dual_axis <- c(FALSE, TRUE, NULL)
  if (!is.null(dual_axis)) {
    if (!dual_axis %in% list_dual_axis) {
      stop("`dual_axis` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && dual_axis %in% names(named_list)) {
          if (is.logical(dual_axis)) {
            dual_axis <- as.character(dual_axis)
          }
          named_list_value <- unname(named_list[dual_axis])[[1]]
          new_list$x$state$dual_axis <- named_list_value
        }
      }
    }
  }
  new_list$x$state$secondary_series <- secondary_series
  list_stack_sort <- c("data", "ascending", "descending", NULL)
  if (!is.null(stack_sort)) {
    if (!stack_sort %in% list_stack_sort) {
      stop("`stack_sort` must be one of: c('data', 'ascending', 'descending')")
    } else {
      if (length(jsonlite::fromJSON('{"data": "data", "ascending": "ascending", "descending": "descending"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"data": "data", "ascending": "ascending", "descending": "descending"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && stack_sort %in% names(named_list)) {
          if (is.logical(stack_sort)) {
            stack_sort <- as.character(stack_sort)
          }
          named_list_value <- unname(named_list[stack_sort])[[1]]
          new_list$x$state$stack_sort <- named_list_value
        }
      }
    }
  }
  list_facet_layout <- c("single", "facets", NULL)
  if (!is.null(facet_layout)) {
    if (!facet_layout %in% list_facet_layout) {
      stop("`facet_layout` must be one of: c('single', 'facets')")
    } else {
      if (length(jsonlite::fromJSON('{"single": "single", "facets": "facets"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"single": "single", "facets": "facets"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && facet_layout %in% names(named_list)) {
          if (is.logical(facet_layout)) {
            facet_layout <- as.character(facet_layout)
          }
          named_list_value <- unname(named_list[facet_layout])[[1]]
          new_list$x$state$facet_layout <- named_list_value
        }
      }
    }
  }
  list_height_mode <- c("auto", "fill_space", "aspect", NULL)
  if (!is.null(height_mode)) {
    if (!height_mode %in% list_height_mode) {
      stop("`height_mode` must be one of: c('auto', 'fill_space', 'aspect')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "fill_space": "fill_space", "aspect": "aspect"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "fill_space": "fill_space", "aspect": "aspect"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
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
  new_list$x$state$facet_aspect <- facet_aspect
  new_list$x$state$facet_aspect_mobile <- facet_aspect_mobile
  new_list$x$state$facet_aspect_breakpoint <- facet_aspect_breakpoint
  list_sort_mode <- c("data", "value", "label", NULL)
  if (!is.null(sort_mode)) {
    if (!sort_mode %in% list_sort_mode) {
      stop("`sort_mode` must be one of: c('data', 'value', 'label')")
    } else {
      if (length(jsonlite::fromJSON('{"data": "data", "value": "value", "label": "label"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"data": "data", "value": "value", "label": "label"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && sort_mode %in% names(named_list)) {
          if (is.logical(sort_mode)) {
            sort_mode <- as.character(sort_mode)
          }
          named_list_value <- unname(named_list[sort_mode])[[1]]
          new_list$x$state$sort_mode <- named_list_value
        }
      }
    }
  }
  list_chart_facet_columns_fixed <- c(FALSE, TRUE, NULL)
  if (!is.null(chart_facet_columns_fixed)) {
    if (!chart_facet_columns_fixed %in% list_chart_facet_columns_fixed) {
      stop("`chart_facet_columns_fixed` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && chart_facet_columns_fixed %in% names(named_list)) {
          if (is.logical(chart_facet_columns_fixed)) {
            chart_facet_columns_fixed <- as.character(chart_facet_columns_fixed)
          }
          named_list_value <- unname(named_list[chart_facet_columns_fixed])[[1]]
          new_list$x$state$facets$columns_fixed <- named_list_value
        }
      }
    }
  }
  new_list$x$state$facets$columns <- chart_facet_columns
  new_list$x$state$facets$min_width <- chart_facet_min_width
  new_list$x$state$facets$min_width_fixed <- chart_facet_min_width_fixed
  new_list$x$state$facets$custom_grid <- chart_facet_custom_grid
  if (length(chart_facet_custom_positions) > 1) {
    new_list$x$state$facets$custom_positions <- paste(chart_facet_custom_positions, collapse = "\n")
  } else {
    new_list$x$state$facets$custom_positions <- chart_facet_custom_positions
  }

  new_list$x$state$facets$max_width <- chart_facet_max_width
  new_list$x$state$facets$gutter_w <- chart_facet_gutter_w
  new_list$x$state$facets$gutter_h <- chart_facet_gutter_h
  list_chart_facet_animation <- c("auto", "name", "reuse", NULL)
  if (!is.null(chart_facet_animation)) {
    if (!chart_facet_animation %in% list_chart_facet_animation) {
      stop("`chart_facet_animation` must be one of: c('auto', 'name', 'reuse')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "name": "name", "reuse": "reuse"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "name": "name", "reuse": "reuse"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_facet_animation %in% names(named_list)) {
          if (is.logical(chart_facet_animation)) {
            chart_facet_animation <- as.character(chart_facet_animation)
          }
          named_list_value <- unname(named_list[chart_facet_animation])[[1]]
          new_list$x$state$facets$animation <- named_list_value
        }
      }
    }
  }
  new_list$x$state$facets$titles <- chart_facet_titles
  list_chart_facet_title_align <- c("auto", "left", "center", "right", NULL)
  if (!is.null(chart_facet_title_align)) {
    if (!chart_facet_title_align %in% list_chart_facet_title_align) {
      stop("`chart_facet_title_align` must be one of: c('auto', 'left', 'center', 'right')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "left": "left", "center": "center", "right": "right"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "left": "left", "center": "center", "right": "right"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_facet_title_align %in% names(named_list)) {
          if (is.logical(chart_facet_title_align)) {
            chart_facet_title_align <- as.character(chart_facet_title_align)
          }
          named_list_value <- unname(named_list[chart_facet_title_align])[[1]]
          new_list$x$state$facets$title_align <- named_list_value
        }
      }
    }
  }
  new_list$x$state$facets$title_size <- chart_facet_title_size
  list_chart_facet_title_unit <- c("rem", "facet", NULL)
  if (!is.null(chart_facet_title_unit)) {
    if (!chart_facet_title_unit %in% list_chart_facet_title_unit) {
      stop("`chart_facet_title_unit` must be one of: c('rem', 'facet')")
    } else {
      if (length(jsonlite::fromJSON('{"rem": "rem", "facet": "facet"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"rem": "rem", "facet": "facet"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_facet_title_unit %in% names(named_list)) {
          if (is.logical(chart_facet_title_unit)) {
            chart_facet_title_unit <- as.character(chart_facet_title_unit)
          }
          named_list_value <- unname(named_list[chart_facet_title_unit])[[1]]
          new_list$x$state$facets$title_unit <- named_list_value
        }
      }
    }
  }
  new_list$x$state$facets$title_color <- chart_facet_title_color
  new_list$x$state$facets$title_padding_top <- chart_facet_title_padding_top
  new_list$x$state$facets$title_padding_bottom <- chart_facet_title_padding_bottom
  list_chart_facet_title_bg <- c("none", "full", "text", NULL)
  if (!is.null(chart_facet_title_bg)) {
    if (!chart_facet_title_bg %in% list_chart_facet_title_bg) {
      stop("`chart_facet_title_bg` must be one of: c('none', 'full', 'text')")
    } else {
      if (length(jsonlite::fromJSON('{"none": "none", "full": "full", "text": "text"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"none": "none", "full": "full", "text": "text"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_facet_title_bg %in% names(named_list)) {
          if (is.logical(chart_facet_title_bg)) {
            chart_facet_title_bg <- as.character(chart_facet_title_bg)
          }
          named_list_value <- unname(named_list[chart_facet_title_bg])[[1]]
          new_list$x$state$facets$title_bg <- named_list_value
        }
      }
    }
  }
  new_list$x$state$facets$title_bg_color <- chart_facet_title_bg_color
  new_list$x$state$facets$title_bg_padding <- chart_facet_title_bg_padding
  new_list$x$state$x_axis_matching <- x_axis_matching
  new_list$x$state$x_axis_last_row_only <- x_axis_last_row_only
  new_list$x$state$y_axis_matching <- y_axis_matching
  new_list$x$state$y_axis_first_col_only <- y_axis_first_col_only
  new_list$x$state$y2_axis_matching <- y2_axis_matching
  new_list$x$state$y2_axis_last_col_only <- y2_axis_last_col_only
  list_series_filter_mode <- c("none", "single", "multi", NULL)
  if (!is.null(series_filter_mode)) {
    if (!series_filter_mode %in% list_series_filter_mode) {
      stop("`series_filter_mode` must be one of: c('none', 'single', 'multi')")
    } else {
      if (length(jsonlite::fromJSON('{"none": "none", "single": "single", "multi": "multi"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"none": "none", "single": "single", "multi": "multi"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && series_filter_mode %in% names(named_list)) {
          if (is.logical(series_filter_mode)) {
            series_filter_mode <- as.character(series_filter_mode)
          }
          named_list_value <- unname(named_list[series_filter_mode])[[1]]
          new_list$x$state$series_filter_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$series_control_multi_text <- series_control_multi_text
  new_list$x$state$series_control_multi_none_text <- series_control_multi_none_text
  new_list$x$state$series_control_select_text <- series_control_select_text
  new_list$x$state$max_series <- max_series
  new_list$x$state$series_control_background <- series_control_background
  new_list$x$state$series_control_text <- series_control_text
  new_list$x$state$series_control_border <- series_control_border
  new_list$x$state$series_control_pill_background <- series_control_pill_background
  new_list$x$state$series_control_pill_text <- series_control_pill_text
  new_list$x$state$series_control_pill_radius <- series_control_pill_radius
  new_list$x$state$series_control_single_all <- series_control_single_all
  new_list$x$state$series_control_single_all_text <- series_control_single_all_text
  new_list$x$state$filter_rows_with_no_data <- filter_rows_with_no_data
  list_chart_series_filter_controls_control_type <- c("dropdown", "buttons", "slider", NULL)
  if (!is.null(chart_series_filter_controls_control_type)) {
    if (!chart_series_filter_controls_control_type %in% list_chart_series_filter_controls_control_type) {
      stop("`chart_series_filter_controls_control_type` must be one of: c('dropdown', 'buttons', 'slider')")
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
        if (length(named_list) > 1 && chart_series_filter_controls_control_type %in% names(named_list)) {
          if (is.logical(chart_series_filter_controls_control_type)) {
            chart_series_filter_controls_control_type <- as.character(chart_series_filter_controls_control_type)
          }
          named_list_value <- unname(named_list[chart_series_filter_controls_control_type])[[1]]
          new_list$x$state$series_control_single$control_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$series_control_single$control_styles <- chart_series_filter_controls_control_styles
  new_list$x$state$series_control_single$control_title <- chart_series_filter_controls_control_title
  list_chart_series_filter_controls_button_group <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_series_filter_controls_button_group)) {
    if (!chart_series_filter_controls_button_group %in% list_chart_series_filter_controls_button_group) {
      stop("`chart_series_filter_controls_button_group` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_series_filter_controls_button_group %in% names(named_list)) {
          if (is.logical(chart_series_filter_controls_button_group)) {
            chart_series_filter_controls_button_group <- as.character(chart_series_filter_controls_button_group)
          }
          named_list_value <- unname(named_list[chart_series_filter_controls_button_group])[[1]]
          new_list$x$state$series_control_single$button_group <- named_list_value
        }
      }
    }
  }
  list_chart_series_filter_controls_button_group_width_mode <- c("auto", "full", "fixed", NULL)
  if (!is.null(chart_series_filter_controls_button_group_width_mode)) {
    if (!chart_series_filter_controls_button_group_width_mode %in% list_chart_series_filter_controls_button_group_width_mode) {
      stop("`chart_series_filter_controls_button_group_width_mode` must be one of: c('auto', 'full', 'fixed')")
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
        if (length(named_list) > 1 && chart_series_filter_controls_button_group_width_mode %in% names(named_list)) {
          if (is.logical(chart_series_filter_controls_button_group_width_mode)) {
            chart_series_filter_controls_button_group_width_mode <- as.character(chart_series_filter_controls_button_group_width_mode)
          }
          named_list_value <- unname(named_list[chart_series_filter_controls_button_group_width_mode])[[1]]
          new_list$x$state$series_control_single$button_group_width_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$series_control_single$button_group_width_fixed <- chart_series_filter_controls_button_group_width_fixed
  list_chart_series_filter_controls_dropdown_width_mode <- c("auto", "full", "fixed", NULL)
  if (!is.null(chart_series_filter_controls_dropdown_width_mode)) {
    if (!chart_series_filter_controls_dropdown_width_mode %in% list_chart_series_filter_controls_dropdown_width_mode) {
      stop("`chart_series_filter_controls_dropdown_width_mode` must be one of: c('auto', 'full', 'fixed')")
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
        if (length(named_list) > 1 && chart_series_filter_controls_dropdown_width_mode %in% names(named_list)) {
          if (is.logical(chart_series_filter_controls_dropdown_width_mode)) {
            chart_series_filter_controls_dropdown_width_mode <- as.character(chart_series_filter_controls_dropdown_width_mode)
          }
          named_list_value <- unname(named_list[chart_series_filter_controls_dropdown_width_mode])[[1]]
          new_list$x$state$series_control_single$dropdown_width_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$series_control_single$dropdown_width_fixed <- chart_series_filter_controls_dropdown_width_fixed
  new_list$x$state$series_control_single$slider_width <- chart_series_filter_controls_slider_width
  new_list$x$state$series_control_single$slider_max_label_width <- chart_series_filter_controls_slider_max_label_width
  new_list$x$state$series_control_single$slider_step_time <- chart_series_filter_controls_slider_step_time
  new_list$x$state$series_control_single$slider_loop <- chart_series_filter_controls_slider_loop
  new_list$x$state$series_control_single$slider_restart_pause <- chart_series_filter_controls_slider_restart_pause
  list_chart_series_filter_controls_sort <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_series_filter_controls_sort)) {
    if (!chart_series_filter_controls_sort %in% list_chart_series_filter_controls_sort) {
      stop("`chart_series_filter_controls_sort` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_series_filter_controls_sort %in% names(named_list)) {
          if (is.logical(chart_series_filter_controls_sort)) {
            chart_series_filter_controls_sort <- as.character(chart_series_filter_controls_sort)
          }
          named_list_value <- unname(named_list[chart_series_filter_controls_sort])[[1]]
          new_list$x$state$series_control_single$sort <- named_list_value
        }
      }
    }
  }
  new_list$x$state$row_filter_control_all <- row_filter_control_all
  new_list$x$state$row_filter_control_all_text <- row_filter_control_all_text
  list_chart_row_filter_controls_control_type <- c("dropdown", "buttons", "slider", NULL)
  if (!is.null(chart_row_filter_controls_control_type)) {
    if (!chart_row_filter_controls_control_type %in% list_chart_row_filter_controls_control_type) {
      stop("`chart_row_filter_controls_control_type` must be one of: c('dropdown', 'buttons', 'slider')")
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
        if (length(named_list) > 1 && chart_row_filter_controls_control_type %in% names(named_list)) {
          if (is.logical(chart_row_filter_controls_control_type)) {
            chart_row_filter_controls_control_type <- as.character(chart_row_filter_controls_control_type)
          }
          named_list_value <- unname(named_list[chart_row_filter_controls_control_type])[[1]]
          new_list$x$state$row_filter_control$control_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$row_filter_control$control_styles <- chart_row_filter_controls_control_styles
  new_list$x$state$row_filter_control$control_title <- chart_row_filter_controls_control_title
  list_chart_row_filter_controls_button_group <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_row_filter_controls_button_group)) {
    if (!chart_row_filter_controls_button_group %in% list_chart_row_filter_controls_button_group) {
      stop("`chart_row_filter_controls_button_group` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_row_filter_controls_button_group %in% names(named_list)) {
          if (is.logical(chart_row_filter_controls_button_group)) {
            chart_row_filter_controls_button_group <- as.character(chart_row_filter_controls_button_group)
          }
          named_list_value <- unname(named_list[chart_row_filter_controls_button_group])[[1]]
          new_list$x$state$row_filter_control$button_group <- named_list_value
        }
      }
    }
  }
  list_chart_row_filter_controls_button_group_width_mode <- c("auto", "full", "fixed", NULL)
  if (!is.null(chart_row_filter_controls_button_group_width_mode)) {
    if (!chart_row_filter_controls_button_group_width_mode %in% list_chart_row_filter_controls_button_group_width_mode) {
      stop("`chart_row_filter_controls_button_group_width_mode` must be one of: c('auto', 'full', 'fixed')")
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
        if (length(named_list) > 1 && chart_row_filter_controls_button_group_width_mode %in% names(named_list)) {
          if (is.logical(chart_row_filter_controls_button_group_width_mode)) {
            chart_row_filter_controls_button_group_width_mode <- as.character(chart_row_filter_controls_button_group_width_mode)
          }
          named_list_value <- unname(named_list[chart_row_filter_controls_button_group_width_mode])[[1]]
          new_list$x$state$row_filter_control$button_group_width_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$row_filter_control$button_group_width_fixed <- chart_row_filter_controls_button_group_width_fixed
  list_chart_row_filter_controls_dropdown_width_mode <- c("auto", "full", "fixed", NULL)
  if (!is.null(chart_row_filter_controls_dropdown_width_mode)) {
    if (!chart_row_filter_controls_dropdown_width_mode %in% list_chart_row_filter_controls_dropdown_width_mode) {
      stop("`chart_row_filter_controls_dropdown_width_mode` must be one of: c('auto', 'full', 'fixed')")
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
        if (length(named_list) > 1 && chart_row_filter_controls_dropdown_width_mode %in% names(named_list)) {
          if (is.logical(chart_row_filter_controls_dropdown_width_mode)) {
            chart_row_filter_controls_dropdown_width_mode <- as.character(chart_row_filter_controls_dropdown_width_mode)
          }
          named_list_value <- unname(named_list[chart_row_filter_controls_dropdown_width_mode])[[1]]
          new_list$x$state$row_filter_control$dropdown_width_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$row_filter_control$dropdown_width_fixed <- chart_row_filter_controls_dropdown_width_fixed
  new_list$x$state$row_filter_control$slider_width <- chart_row_filter_controls_slider_width
  new_list$x$state$row_filter_control$slider_max_label_width <- chart_row_filter_controls_slider_max_label_width
  new_list$x$state$row_filter_control$slider_step_time <- chart_row_filter_controls_slider_step_time
  new_list$x$state$row_filter_control$slider_loop <- chart_row_filter_controls_slider_loop
  new_list$x$state$row_filter_control$slider_restart_pause <- chart_row_filter_controls_slider_restart_pause
  list_chart_row_filter_controls_sort <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_row_filter_controls_sort)) {
    if (!chart_row_filter_controls_sort %in% list_chart_row_filter_controls_sort) {
      stop("`chart_row_filter_controls_sort` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_row_filter_controls_sort %in% names(named_list)) {
          if (is.logical(chart_row_filter_controls_sort)) {
            chart_row_filter_controls_sort <- as.character(chart_row_filter_controls_sort)
          }
          named_list_value <- unname(named_list[chart_row_filter_controls_sort])[[1]]
          new_list$x$state$row_filter_control$sort <- named_list_value
        }
      }
    }
  }
  new_list$x$state$log_control_y_visible <- log_control_y_visible
  list_chart_log_control_y_filter_controls_control_type <- c("dropdown", "buttons", "slider", NULL)
  if (!is.null(chart_log_control_y_filter_controls_control_type)) {
    if (!chart_log_control_y_filter_controls_control_type %in% list_chart_log_control_y_filter_controls_control_type) {
      stop("`chart_log_control_y_filter_controls_control_type` must be one of: c('dropdown', 'buttons', 'slider')")
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
        if (length(named_list) > 1 && chart_log_control_y_filter_controls_control_type %in% names(named_list)) {
          if (is.logical(chart_log_control_y_filter_controls_control_type)) {
            chart_log_control_y_filter_controls_control_type <- as.character(chart_log_control_y_filter_controls_control_type)
          }
          named_list_value <- unname(named_list[chart_log_control_y_filter_controls_control_type])[[1]]
          new_list$x$state$log_control_y$control_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$log_control_y$control_styles <- chart_log_control_y_filter_controls_control_styles
  new_list$x$state$log_control_y$control_title <- chart_log_control_y_filter_controls_control_title
  list_chart_log_control_y_filter_controls_button_group <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_log_control_y_filter_controls_button_group)) {
    if (!chart_log_control_y_filter_controls_button_group %in% list_chart_log_control_y_filter_controls_button_group) {
      stop("`chart_log_control_y_filter_controls_button_group` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_log_control_y_filter_controls_button_group %in% names(named_list)) {
          if (is.logical(chart_log_control_y_filter_controls_button_group)) {
            chart_log_control_y_filter_controls_button_group <- as.character(chart_log_control_y_filter_controls_button_group)
          }
          named_list_value <- unname(named_list[chart_log_control_y_filter_controls_button_group])[[1]]
          new_list$x$state$log_control_y$button_group <- named_list_value
        }
      }
    }
  }
  list_chart_log_control_y_filter_controls_button_group_width_mode <- c("auto", "full", "fixed", NULL)
  if (!is.null(chart_log_control_y_filter_controls_button_group_width_mode)) {
    if (!chart_log_control_y_filter_controls_button_group_width_mode %in% list_chart_log_control_y_filter_controls_button_group_width_mode) {
      stop("`chart_log_control_y_filter_controls_button_group_width_mode` must be one of: c('auto', 'full', 'fixed')")
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
        if (length(named_list) > 1 && chart_log_control_y_filter_controls_button_group_width_mode %in% names(named_list)) {
          if (is.logical(chart_log_control_y_filter_controls_button_group_width_mode)) {
            chart_log_control_y_filter_controls_button_group_width_mode <- as.character(chart_log_control_y_filter_controls_button_group_width_mode)
          }
          named_list_value <- unname(named_list[chart_log_control_y_filter_controls_button_group_width_mode])[[1]]
          new_list$x$state$log_control_y$button_group_width_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$log_control_y$button_group_width_fixed <- chart_log_control_y_filter_controls_button_group_width_fixed
  list_chart_log_control_y_filter_controls_dropdown_width_mode <- c("auto", "full", "fixed", NULL)
  if (!is.null(chart_log_control_y_filter_controls_dropdown_width_mode)) {
    if (!chart_log_control_y_filter_controls_dropdown_width_mode %in% list_chart_log_control_y_filter_controls_dropdown_width_mode) {
      stop("`chart_log_control_y_filter_controls_dropdown_width_mode` must be one of: c('auto', 'full', 'fixed')")
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
        if (length(named_list) > 1 && chart_log_control_y_filter_controls_dropdown_width_mode %in% names(named_list)) {
          if (is.logical(chart_log_control_y_filter_controls_dropdown_width_mode)) {
            chart_log_control_y_filter_controls_dropdown_width_mode <- as.character(chart_log_control_y_filter_controls_dropdown_width_mode)
          }
          named_list_value <- unname(named_list[chart_log_control_y_filter_controls_dropdown_width_mode])[[1]]
          new_list$x$state$log_control_y$dropdown_width_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$log_control_y$dropdown_width_fixed <- chart_log_control_y_filter_controls_dropdown_width_fixed
  new_list$x$state$log_control_y$slider_width <- chart_log_control_y_filter_controls_slider_width
  new_list$x$state$log_control_y$slider_max_label_width <- chart_log_control_y_filter_controls_slider_max_label_width
  new_list$x$state$log_control_y$slider_step_time <- chart_log_control_y_filter_controls_slider_step_time
  new_list$x$state$log_control_y$slider_loop <- chart_log_control_y_filter_controls_slider_loop
  new_list$x$state$log_control_y$slider_restart_pause <- chart_log_control_y_filter_controls_slider_restart_pause
  list_chart_log_control_y_filter_controls_sort <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_log_control_y_filter_controls_sort)) {
    if (!chart_log_control_y_filter_controls_sort %in% list_chart_log_control_y_filter_controls_sort) {
      stop("`chart_log_control_y_filter_controls_sort` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_log_control_y_filter_controls_sort %in% names(named_list)) {
          if (is.logical(chart_log_control_y_filter_controls_sort)) {
            chart_log_control_y_filter_controls_sort <- as.character(chart_log_control_y_filter_controls_sort)
          }
          named_list_value <- unname(named_list[chart_log_control_y_filter_controls_sort])[[1]]
          new_list$x$state$log_control_y$sort <- named_list_value
        }
      }
    }
  }
  new_list$x$state$log_control_y_text_linear <- log_control_y_text_linear
  new_list$x$state$log_control_y_text_log <- log_control_y_text_log
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
  list_controls_position <- c("log_series_row", "series_log_row", "log_row_series", "series_row_log", "row_log_series", "row_series_log", NULL)
  if (!is.null(controls_position)) {
    if (!controls_position %in% list_controls_position) {
      stop("`controls_position` must be one of: c('log_series_row', 'series_log_row', 'log_row_series', 'series_row_log', 'row_log_series', 'row_series_log')")
    } else {
      if (length(jsonlite::fromJSON('{"log_series_row": "log_series_row", "series_log_row": "series_log_row", "log_row_series": "log_row_series", "series_row_log": "series_row_log", "row_log_series": "row_log_series", "row_series_log": "row_series_log"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"log_series_row": "log_series_row", "series_log_row": "series_log_row", "log_row_series": "log_row_series", "series_row_log": "series_row_log", "row_log_series": "row_log_series", "row_series_log": "row_series_log"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && controls_position %in% names(named_list)) {
          if (is.logical(controls_position)) {
            controls_position <- as.character(controls_position)
          }
          named_list_value <- unname(named_list[controls_position])[[1]]
          new_list$x$state$controls_position <- named_list_value
        }
      }
    }
  }
  list_color_mode <- c("column", "row", NULL)
  if (!is.null(color_mode)) {
    if (!color_mode %in% list_color_mode) {
      stop("`color_mode` must be one of: c('column', 'row')")
    } else {
      if (length(jsonlite::fromJSON('{"column": "column", "row": "row"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"column": "column", "row": "row"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
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
  new_list$x$state$line_width <- line_width
  new_list$x$state$line_opacity <- line_opacity
  new_list$x$state$line_stroke <- line_stroke
  list_line_curve <- c("curve_linear", "curve_monotone_x", "curve_natural", "curve_step", "curve_step_before", "curve_step_after", NULL)
  if (!is.null(line_curve)) {
    if (!line_curve %in% list_line_curve) {
      stop("`line_curve` must be one of: c('curve_linear', 'curve_monotone_x', 'curve_natural', 'curve_step', 'curve_step_before', 'curve_step_after')")
    } else {
      if (length(jsonlite::fromJSON('{"curve_linear": "curveLinear", "curve_monotone_x": "curveMonotoneX", "curve_natural": "curveNatural", "curve_step": "curveStep", "curve_step_before": "curveStepBefore", "curve_step_after": "curveStepAfter"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"curve_linear": "curveLinear", "curve_monotone_x": "curveMonotoneX", "curve_natural": "curveNatural", "curve_step": "curveStep", "curve_step_before": "curveStepBefore", "curve_step_after": "curveStepAfter"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
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
  if (length(line_dash_items) > 1) {
    new_list$x$state$line_dash_items <- paste(line_dash_items, collapse = "\n")
  } else {
    new_list$x$state$line_dash_items <- line_dash_items
  }

  new_list$x$state$line_dash_width <- line_dash_width
  new_list$x$state$line_dash_space_width <- line_dash_space_width
  list_line_interpolate <- c(TRUE, FALSE, NULL)
  if (!is.null(line_interpolate)) {
    if (!line_interpolate %in% list_line_interpolate) {
      stop("`line_interpolate` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && line_interpolate %in% names(named_list)) {
          if (is.logical(line_interpolate)) {
            line_interpolate <- as.character(line_interpolate)
          }
          named_list_value <- unname(named_list[line_interpolate])[[1]]
          new_list$x$state$line_interpolate <- named_list_value
        }
      }
    }
  }
  new_list$x$state$shade_between_lines <- shade_between_lines
  if (length(shade_between_lines_config) > 1) {
    new_list$x$state$shade_between_lines_config <- paste(shade_between_lines_config, collapse = "\n")
  } else {
    new_list$x$state$shade_between_lines_config <- shade_between_lines_config
  }

  new_list$x$state$shade_between_lines_color <- shade_between_lines_color
  new_list$x$state$shade_between_lines_opacity <- shade_between_lines_opacity
  new_list$x$state$area_opacity <- area_opacity
  list_dot_mode <- c("auto", "on", "off", NULL)
  if (!is.null(dot_mode)) {
    if (!dot_mode %in% list_dot_mode) {
      stop("`dot_mode` must be one of: c('auto', 'on', 'off')")
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
        if (length(named_list) > 1 && dot_mode %in% names(named_list)) {
          if (is.logical(dot_mode)) {
            dot_mode <- as.character(dot_mode)
          }
          named_list_value <- unname(named_list[dot_mode])[[1]]
          new_list$x$state$dot_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$dot_opacity <- dot_opacity
  new_list$x$state$dot_radius <- dot_radius
  new_list$x$state$dot_radius_last <- dot_radius_last
  new_list$x$state$dot_hollow <- dot_hollow
  new_list$x$state$bar_height <- bar_height
  new_list$x$state$column_opacity <- column_opacity
  new_list$x$state$uniform_column_width <- uniform_column_width
  new_list$x$state$uniform_bar_height <- uniform_bar_height
  new_list$x$state$column_padding_inner <- column_padding_inner
  new_list$x$state$column_padding_in_group <- column_padding_in_group
  new_list$x$state$column_padding_stack <- column_padding_stack
  new_list$x$state$column_stroke <- column_stroke
  new_list$x$state$column_stroke_opacity <- column_stroke_opacity
  new_list$x$state$column_stroke_color <- column_stroke_color
  new_list$x$state$donut_inner_radius <- donut_inner_radius
  new_list$x$state$donut_corner_radius <- donut_corner_radius
  new_list$x$state$donut_pad_angle <- donut_pad_angle
  new_list$x$state$donut_auto_scale <- donut_auto_scale
  list_bar_labels_above <- c(TRUE, FALSE, NULL)
  if (!is.null(bar_labels_above)) {
    if (!bar_labels_above %in% list_bar_labels_above) {
      stop("`bar_labels_above` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && bar_labels_above %in% names(named_list)) {
          if (is.logical(bar_labels_above)) {
            bar_labels_above <- as.character(bar_labels_above)
          }
          named_list_value <- unname(named_list[bar_labels_above])[[1]]
          new_list$x$state$bar_labels_above <- named_list_value
        }
      }
    }
  }
  new_list$x$state$bar_labels_color <- bar_labels_color
  new_list$x$state$bar_labels_font_size <- bar_labels_font_size
  list_bar_labels_weight <- c("600", "400", NULL)
  if (!is.null(bar_labels_weight)) {
    if (!bar_labels_weight %in% list_bar_labels_weight) {
      stop("`bar_labels_weight` must be one of: c('600', '400')")
    } else {
      if (length(jsonlite::fromJSON('{"600": "600", "400": "400"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"600": "600", "400": "400"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && bar_labels_weight %in% names(named_list)) {
          if (is.logical(bar_labels_weight)) {
            bar_labels_weight <- as.character(bar_labels_weight)
          }
          named_list_value <- unname(named_list[bar_labels_weight])[[1]]
          new_list$x$state$bar_labels_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$line_end_labels <- line_end_labels
  new_list$x$state$line_labels$max_width <- chart_line_labels_max_width
  list_chart_line_labels_overlap_mode <- c("spread", "hide", "none", NULL)
  if (!is.null(chart_line_labels_overlap_mode)) {
    if (!chart_line_labels_overlap_mode %in% list_chart_line_labels_overlap_mode) {
      stop("`chart_line_labels_overlap_mode` must be one of: c('spread', 'hide', 'none')")
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
        if (length(named_list) > 1 && chart_line_labels_overlap_mode %in% names(named_list)) {
          if (is.logical(chart_line_labels_overlap_mode)) {
            chart_line_labels_overlap_mode <- as.character(chart_line_labels_overlap_mode)
          }
          named_list_value <- unname(named_list[chart_line_labels_overlap_mode])[[1]]
          new_list$x$state$line_labels$overlap_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$line_labels$spreading_margin <- chart_line_labels_spreading_margin
  new_list$x$state$line_labels$data_point_margin <- chart_line_labels_data_point_margin
  if (length(chart_line_labels_show_only_labels) > 1) {
    new_list$x$state$line_labels$show_only_labels <- paste(chart_line_labels_show_only_labels, collapse = "\n")
  } else {
    new_list$x$state$line_labels$show_only_labels <- chart_line_labels_show_only_labels
  }

  new_list$x$state$line_labels$text_color <- chart_line_labels_text_color
  new_list$x$state$line_labels$text_size <- chart_line_labels_text_size
  new_list$x$state$line_labels$text_bg_color <- chart_line_labels_text_bg_color
  new_list$x$state$line_labels$text_bg_size <- chart_line_labels_text_bg_size
  new_list$x$state$line_labels$text_line_height <- chart_line_labels_text_line_height
  new_list$x$state$line_labels$text_max_lines <- chart_line_labels_text_max_lines
  list_chart_line_labels_text_weight <- c(400, 700, NULL)
  if (!is.null(chart_line_labels_text_weight)) {
    if (!chart_line_labels_text_weight %in% list_chart_line_labels_text_weight) {
      stop("`chart_line_labels_text_weight` must be one of: c(400, 700)")
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
        if (length(named_list) > 1 && chart_line_labels_text_weight %in% names(named_list)) {
          if (is.logical(chart_line_labels_text_weight)) {
            chart_line_labels_text_weight <- as.character(chart_line_labels_text_weight)
          }
          named_list_value <- unname(named_list[chart_line_labels_text_weight])[[1]]
          new_list$x$state$line_labels$text_weight <- named_list_value
        }
      }
    }
  }
  list_chart_line_labels_lines <- c("auto", "on", "off", NULL)
  if (!is.null(chart_line_labels_lines)) {
    if (!chart_line_labels_lines %in% list_chart_line_labels_lines) {
      stop("`chart_line_labels_lines` must be one of: c('auto', 'on', 'off')")
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
        if (length(named_list) > 1 && chart_line_labels_lines %in% names(named_list)) {
          if (is.logical(chart_line_labels_lines)) {
            chart_line_labels_lines <- as.character(chart_line_labels_lines)
          }
          named_list_value <- unname(named_list[chart_line_labels_lines])[[1]]
          new_list$x$state$line_labels$lines <- named_list_value
        }
      }
    }
  }
  list_chart_line_labels_line_style <- c("straight", "step", NULL)
  if (!is.null(chart_line_labels_line_style)) {
    if (!chart_line_labels_line_style %in% list_chart_line_labels_line_style) {
      stop("`chart_line_labels_line_style` must be one of: c('straight', 'step')")
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
        if (length(named_list) > 1 && chart_line_labels_line_style %in% names(named_list)) {
          if (is.logical(chart_line_labels_line_style)) {
            chart_line_labels_line_style <- as.character(chart_line_labels_line_style)
          }
          named_list_value <- unname(named_list[chart_line_labels_line_style])[[1]]
          new_list$x$state$line_labels$line_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$line_labels$line_color <- chart_line_labels_line_color
  new_list$x$state$line_labels$line_width <- chart_line_labels_line_width
  new_list$x$state$line_labels$line_range <- chart_line_labels_line_range
  new_list$x$state$line_labels$line_padding <- chart_line_labels_line_padding
  new_list$x$state$labels <- labels
  new_list$x$state$labels_hide_overlaps <- labels_hide_overlaps
  new_list$x$state$labels_dot_center <- labels_dot_center
  list_labels_column_align <- c("bottom", "middle", "top", "above", NULL)
  if (!is.null(labels_column_align)) {
    if (!labels_column_align %in% list_labels_column_align) {
      stop("`labels_column_align` must be one of: c('bottom', 'middle', 'top', 'above')")
    } else {
      if (length(jsonlite::fromJSON('{"bottom": "bottom", "middle": "middle", "top": "top", "above": "above"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"bottom": "bottom", "middle": "middle", "top": "top", "above": "above"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && labels_column_align %in% names(named_list)) {
          if (is.logical(labels_column_align)) {
            labels_column_align <- as.character(labels_column_align)
          }
          named_list_value <- unname(named_list[labels_column_align])[[1]]
          new_list$x$state$labels_column_align <- named_list_value
        }
      }
    }
  }
  new_list$x$state$labels_column_padding <- labels_column_padding
  list_labels_bar_align <- c("left", "center", "right", "out", NULL)
  if (!is.null(labels_bar_align)) {
    if (!labels_bar_align %in% list_labels_bar_align) {
      stop("`labels_bar_align` must be one of: c('left', 'center', 'right', 'out')")
    } else {
      if (length(jsonlite::fromJSON('{"left": "left", "center": "center", "right": "right", "out": "out"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"left": "left", "center": "center", "right": "right", "out": "out"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && labels_bar_align %in% names(named_list)) {
          if (is.logical(labels_bar_align)) {
            labels_bar_align <- as.character(labels_bar_align)
          }
          named_list_value <- unname(named_list[labels_bar_align])[[1]]
          new_list$x$state$labels_bar_align <- named_list_value
        }
      }
    }
  }
  new_list$x$state$labels_bar_autohide <- labels_bar_autohide
  list_labels_color_mode <- c("auto", "data", "contrast", "fixed", NULL)
  if (!is.null(labels_color_mode)) {
    if (!labels_color_mode %in% list_labels_color_mode) {
      stop("`labels_color_mode` must be one of: c('auto', 'data', 'contrast', 'fixed')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "data": "data", "contrast": "contrast", "fixed": "fixed"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "data": "data", "contrast": "contrast", "fixed": "fixed"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && labels_color_mode %in% names(named_list)) {
          if (is.logical(labels_color_mode)) {
            labels_color_mode <- as.character(labels_color_mode)
          }
          named_list_value <- unname(named_list[labels_color_mode])[[1]]
          new_list$x$state$labels_color_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$labels_fixed_color <- labels_fixed_color
  list_labels_font_weight <- c("600", "400", NULL)
  if (!is.null(labels_font_weight)) {
    if (!labels_font_weight %in% list_labels_font_weight) {
      stop("`labels_font_weight` must be one of: c('600', '400')")
    } else {
      if (length(jsonlite::fromJSON('{"600": "600", "400": "400"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"600": "600", "400": "400"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && labels_font_weight %in% names(named_list)) {
          if (is.logical(labels_font_weight)) {
            labels_font_weight <- as.character(labels_font_weight)
          }
          named_list_value <- unname(named_list[labels_font_weight])[[1]]
          new_list$x$state$labels_font_weight <- named_list_value
        }
      }
    }
  }
  list_labels_font_size_mode <- c("auto", "fixed", NULL)
  if (!is.null(labels_font_size_mode)) {
    if (!labels_font_size_mode %in% list_labels_font_size_mode) {
      stop("`labels_font_size_mode` must be one of: c('auto', 'fixed')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "fixed": "fixed"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "fixed": "fixed"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && labels_font_size_mode %in% names(named_list)) {
          if (is.logical(labels_font_size_mode)) {
            labels_font_size_mode <- as.character(labels_font_size_mode)
          }
          named_list_value <- unname(named_list[labels_font_size_mode])[[1]]
          new_list$x$state$labels_font_size_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$labels_font_size <- labels_font_size
  list_labels_bg_mode <- c("on", "off", NULL)
  if (!is.null(labels_bg_mode)) {
    if (!labels_bg_mode %in% list_labels_bg_mode) {
      stop("`labels_bg_mode` must be one of: c('on', 'off')")
    } else {
      if (length(jsonlite::fromJSON('{"on": "on", "off": "off"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"on": "on", "off": "off"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && labels_bg_mode %in% names(named_list)) {
          if (is.logical(labels_bg_mode)) {
            labels_bg_mode <- as.character(labels_bg_mode)
          }
          named_list_value <- unname(named_list[labels_bg_mode])[[1]]
          new_list$x$state$labels_bg_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$labels_bg_size <- labels_bg_size
  list_labels_content <- c("auto", "value", "label", "both", NULL)
  if (!is.null(labels_content)) {
    if (!labels_content %in% list_labels_content) {
      stop("`labels_content` must be one of: c('auto', 'value', 'label', 'both')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "value": "value", "label": "label", "both": "both"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "value": "value", "label": "label", "both": "both"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && labels_content %in% names(named_list)) {
          if (is.logical(labels_content)) {
            labels_content <- as.character(labels_content)
          }
          named_list_value <- unname(named_list[labels_content])[[1]]
          new_list$x$state$labels_content <- named_list_value
        }
      }
    }
  }
  new_list$x$state$stack_labels <- stack_labels
  new_list$x$state$stack_labels_color <- stack_labels_color
  new_list$x$state$stack_labels_font_size <- stack_labels_font_size
  list_stack_labels_weight <- c("600", "400", NULL)
  if (!is.null(stack_labels_weight)) {
    if (!stack_labels_weight %in% list_stack_labels_weight) {
      stop("`stack_labels_weight` must be one of: c('600', '400')")
    } else {
      if (length(jsonlite::fromJSON('{"600": "600", "400": "400"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"600": "600", "400": "400"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && stack_labels_weight %in% names(named_list)) {
          if (is.logical(stack_labels_weight)) {
            stack_labels_weight <- as.character(stack_labels_weight)
          }
          named_list_value <- unname(named_list[stack_labels_weight])[[1]]
          new_list$x$state$stack_labels_weight <- named_list_value
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
  list_chart_secondary_y_axis_axis_visible <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_secondary_y_axis_axis_visible)) {
    if (!chart_secondary_y_axis_axis_visible %in% list_chart_secondary_y_axis_axis_visible) {
      stop("`chart_secondary_y_axis_axis_visible` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_secondary_y_axis_axis_visible %in% names(named_list)) {
          if (is.logical(chart_secondary_y_axis_axis_visible)) {
            chart_secondary_y_axis_axis_visible <- as.character(chart_secondary_y_axis_axis_visible)
          }
          named_list_value <- unname(named_list[chart_secondary_y_axis_axis_visible])[[1]]
          new_list$x$state$y2$axis_visible <- named_list_value
        }
      }
    }
  }
  list_chart_secondary_y_axis_numeric_scale_type <- c("linear", "log", NULL)
  if (!is.null(chart_secondary_y_axis_numeric_scale_type)) {
    if (!chart_secondary_y_axis_numeric_scale_type %in% list_chart_secondary_y_axis_numeric_scale_type) {
      stop("`chart_secondary_y_axis_numeric_scale_type` must be one of: c('linear', 'log')")
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
        if (length(named_list) > 1 && chart_secondary_y_axis_numeric_scale_type %in% names(named_list)) {
          if (is.logical(chart_secondary_y_axis_numeric_scale_type)) {
            chart_secondary_y_axis_numeric_scale_type <- as.character(chart_secondary_y_axis_numeric_scale_type)
          }
          named_list_value <- unname(named_list[chart_secondary_y_axis_numeric_scale_type])[[1]]
          new_list$x$state$y2$numeric_scale_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y2$linear_min <- chart_secondary_y_axis_linear_min
  new_list$x$state$y2$linear_max <- chart_secondary_y_axis_linear_max
  new_list$x$state$y2$log_min <- chart_secondary_y_axis_log_min
  new_list$x$state$y2$log_max <- chart_secondary_y_axis_log_max
  new_list$x$state$y2$datetime_min <- chart_secondary_y_axis_datetime_min
  new_list$x$state$y2$datetime_max <- chart_secondary_y_axis_datetime_max
  new_list$x$state$y2$flip <- chart_secondary_y_axis_flip
  new_list$x$state$y2$show_scale_settings <- chart_secondary_y_axis_show_scale_settings
  list_chart_secondary_y_axis_nice <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_secondary_y_axis_nice)) {
    if (!chart_secondary_y_axis_nice %in% list_chart_secondary_y_axis_nice) {
      stop("`chart_secondary_y_axis_nice` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_secondary_y_axis_nice %in% names(named_list)) {
          if (is.logical(chart_secondary_y_axis_nice)) {
            chart_secondary_y_axis_nice <- as.character(chart_secondary_y_axis_nice)
          }
          named_list_value <- unname(named_list[chart_secondary_y_axis_nice])[[1]]
          new_list$x$state$y2$nice <- named_list_value
        }
      }
    }
  }
  list_chart_secondary_y_axis_zero_axis <- c("auto", "on", "off", NULL)
  if (!is.null(chart_secondary_y_axis_zero_axis)) {
    if (!chart_secondary_y_axis_zero_axis %in% list_chart_secondary_y_axis_zero_axis) {
      stop("`chart_secondary_y_axis_zero_axis` must be one of: c('auto', 'on', 'off')")
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
        if (length(named_list) > 1 && chart_secondary_y_axis_zero_axis %in% names(named_list)) {
          if (is.logical(chart_secondary_y_axis_zero_axis)) {
            chart_secondary_y_axis_zero_axis <- as.character(chart_secondary_y_axis_zero_axis)
          }
          named_list_value <- unname(named_list[chart_secondary_y_axis_zero_axis])[[1]]
          new_list$x$state$y2$zero_axis <- named_list_value
        }
      }
    }
  }
  list_chart_secondary_y_axis_title_mode <- c("auto", "custom", NULL)
  if (!is.null(chart_secondary_y_axis_title_mode)) {
    if (!chart_secondary_y_axis_title_mode %in% list_chart_secondary_y_axis_title_mode) {
      stop("`chart_secondary_y_axis_title_mode` must be one of: c('auto', 'custom')")
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
        if (length(named_list) > 1 && chart_secondary_y_axis_title_mode %in% names(named_list)) {
          if (is.logical(chart_secondary_y_axis_title_mode)) {
            chart_secondary_y_axis_title_mode <- as.character(chart_secondary_y_axis_title_mode)
          }
          named_list_value <- unname(named_list[chart_secondary_y_axis_title_mode])[[1]]
          new_list$x$state$y2$title_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y2$title <- chart_secondary_y_axis_title
  new_list$x$state$y2$title_styling <- chart_secondary_y_axis_title_styling
  list_chart_secondary_y_axis_title_position <- c("side", "end", NULL)
  if (!is.null(chart_secondary_y_axis_title_position)) {
    if (!chart_secondary_y_axis_title_position %in% list_chart_secondary_y_axis_title_position) {
      stop("`chart_secondary_y_axis_title_position` must be one of: c('side', 'end')")
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
        if (length(named_list) > 1 && chart_secondary_y_axis_title_position %in% names(named_list)) {
          if (is.logical(chart_secondary_y_axis_title_position)) {
            chart_secondary_y_axis_title_position <- as.character(chart_secondary_y_axis_title_position)
          }
          named_list_value <- unname(named_list[chart_secondary_y_axis_title_position])[[1]]
          new_list$x$state$y2$title_position <- named_list_value
        }
      }
    }
  }
  list_chart_secondary_y_axis_title_weight <- c("bold", "normal", NULL)
  if (!is.null(chart_secondary_y_axis_title_weight)) {
    if (!chart_secondary_y_axis_title_weight %in% list_chart_secondary_y_axis_title_weight) {
      stop("`chart_secondary_y_axis_title_weight` must be one of: c('bold', 'normal')")
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
        if (length(named_list) > 1 && chart_secondary_y_axis_title_weight %in% names(named_list)) {
          if (is.logical(chart_secondary_y_axis_title_weight)) {
            chart_secondary_y_axis_title_weight <- as.character(chart_secondary_y_axis_title_weight)
          }
          named_list_value <- unname(named_list[chart_secondary_y_axis_title_weight])[[1]]
          new_list$x$state$y2$title_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y2$title_color <- chart_secondary_y_axis_title_color
  new_list$x$state$y2$title_size <- chart_secondary_y_axis_title_size
  new_list$x$state$y2$title_padding <- chart_secondary_y_axis_title_padding
  list_chart_secondary_y_axis_tick_label_position <- c("default", "above", "below", NULL)
  if (!is.null(chart_secondary_y_axis_tick_label_position)) {
    if (!chart_secondary_y_axis_tick_label_position %in% list_chart_secondary_y_axis_tick_label_position) {
      stop("`chart_secondary_y_axis_tick_label_position` must be one of: c('default', 'above', 'below')")
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
        if (length(named_list) > 1 && chart_secondary_y_axis_tick_label_position %in% names(named_list)) {
          if (is.logical(chart_secondary_y_axis_tick_label_position)) {
            chart_secondary_y_axis_tick_label_position <- as.character(chart_secondary_y_axis_tick_label_position)
          }
          named_list_value <- unname(named_list[chart_secondary_y_axis_tick_label_position])[[1]]
          new_list$x$state$y2$tick_label_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y2$tick_label_styling <- chart_secondary_y_axis_tick_label_styling
  new_list$x$state$y2$tick_label_size <- chart_secondary_y_axis_tick_label_size
  new_list$x$state$y2$tick_label_color <- chart_secondary_y_axis_tick_label_color
  new_list$x$state$y2$tick_padding <- chart_secondary_y_axis_tick_padding
  list_chart_secondary_y_axis_tick_label_angle <- c("0", "30", "45", "60", "90", NULL)
  if (!is.null(chart_secondary_y_axis_tick_label_angle)) {
    if (!chart_secondary_y_axis_tick_label_angle %in% list_chart_secondary_y_axis_tick_label_angle) {
      stop("`chart_secondary_y_axis_tick_label_angle` must be one of: c('0', '30', '45', '60', '90')")
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
        if (length(named_list) > 1 && chart_secondary_y_axis_tick_label_angle %in% names(named_list)) {
          if (is.logical(chart_secondary_y_axis_tick_label_angle)) {
            chart_secondary_y_axis_tick_label_angle <- as.character(chart_secondary_y_axis_tick_label_angle)
          }
          named_list_value <- unname(named_list[chart_secondary_y_axis_tick_label_angle])[[1]]
          new_list$x$state$y2$tick_label_angle <- named_list_value
        }
      }
    }
  }
  list_chart_secondary_y_axis_tick_label_weight <- c("bold", "normal", NULL)
  if (!is.null(chart_secondary_y_axis_tick_label_weight)) {
    if (!chart_secondary_y_axis_tick_label_weight %in% list_chart_secondary_y_axis_tick_label_weight) {
      stop("`chart_secondary_y_axis_tick_label_weight` must be one of: c('bold', 'normal')")
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
        if (length(named_list) > 1 && chart_secondary_y_axis_tick_label_weight %in% names(named_list)) {
          if (is.logical(chart_secondary_y_axis_tick_label_weight)) {
            chart_secondary_y_axis_tick_label_weight <- as.character(chart_secondary_y_axis_tick_label_weight)
          }
          named_list_value <- unname(named_list[chart_secondary_y_axis_tick_label_weight])[[1]]
          new_list$x$state$y2$tick_label_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y2$tick_label_max_lines <- chart_secondary_y_axis_tick_label_max_lines
  new_list$x$state$y2$tick_label_line_height <- chart_secondary_y_axis_tick_label_line_height
  list_chart_secondary_y_axis_tick_label_space_mode <- c("auto", "max", "fixed", NULL)
  if (!is.null(chart_secondary_y_axis_tick_label_space_mode)) {
    if (!chart_secondary_y_axis_tick_label_space_mode %in% list_chart_secondary_y_axis_tick_label_space_mode) {
      stop("`chart_secondary_y_axis_tick_label_space_mode` must be one of: c('auto', 'max', 'fixed')")
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
        if (length(named_list) > 1 && chart_secondary_y_axis_tick_label_space_mode %in% names(named_list)) {
          if (is.logical(chart_secondary_y_axis_tick_label_space_mode)) {
            chart_secondary_y_axis_tick_label_space_mode <- as.character(chart_secondary_y_axis_tick_label_space_mode)
          }
          named_list_value <- unname(named_list[chart_secondary_y_axis_tick_label_space_mode])[[1]]
          new_list$x$state$y2$tick_label_space_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y2$tick_label_space <- chart_secondary_y_axis_tick_label_space
  list_chart_secondary_y_axis_tick_mode <- c("auto", "number", "custom", NULL)
  if (!is.null(chart_secondary_y_axis_tick_mode)) {
    if (!chart_secondary_y_axis_tick_mode %in% list_chart_secondary_y_axis_tick_mode) {
      stop("`chart_secondary_y_axis_tick_mode` must be one of: c('auto', 'number', 'custom')")
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
        if (length(named_list) > 1 && chart_secondary_y_axis_tick_mode %in% names(named_list)) {
          if (is.logical(chart_secondary_y_axis_tick_mode)) {
            chart_secondary_y_axis_tick_mode <- as.character(chart_secondary_y_axis_tick_mode)
          }
          named_list_value <- unname(named_list[chart_secondary_y_axis_tick_mode])[[1]]
          new_list$x$state$y2$tick_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y2$tick_number <- chart_secondary_y_axis_tick_number
  if (length(chart_secondary_y_axis_tick_custom) > 1) {
    new_list$x$state$y2$tick_custom <- paste(chart_secondary_y_axis_tick_custom, collapse = "\n")
  } else {
    new_list$x$state$y2$tick_custom <- chart_secondary_y_axis_tick_custom
  }

  new_list$x$state$y2$line_and_tick_color <- chart_secondary_y_axis_line_and_tick_color
  new_list$x$state$y2$line_and_tick_width <- chart_secondary_y_axis_line_and_tick_width
  new_list$x$state$y2$tick_length <- chart_secondary_y_axis_tick_length
  list_chart_secondary_y_axis_tick_side <- c("out", "in", NULL)
  if (!is.null(chart_secondary_y_axis_tick_side)) {
    if (!chart_secondary_y_axis_tick_side %in% list_chart_secondary_y_axis_tick_side) {
      stop("`chart_secondary_y_axis_tick_side` must be one of: c('out', 'in')")
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
        if (length(named_list) > 1 && chart_secondary_y_axis_tick_side %in% names(named_list)) {
          if (is.logical(chart_secondary_y_axis_tick_side)) {
            chart_secondary_y_axis_tick_side <- as.character(chart_secondary_y_axis_tick_side)
          }
          named_list_value <- unname(named_list[chart_secondary_y_axis_tick_side])[[1]]
          new_list$x$state$y2$tick_side <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y2$line_visible <- chart_secondary_y_axis_line_visible
  new_list$x$state$y2$edge_padding <- chart_secondary_y_axis_edge_padding
  list_chart_secondary_y_axis_gridlines_visible <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_secondary_y_axis_gridlines_visible)) {
    if (!chart_secondary_y_axis_gridlines_visible %in% list_chart_secondary_y_axis_gridlines_visible) {
      stop("`chart_secondary_y_axis_gridlines_visible` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_secondary_y_axis_gridlines_visible %in% names(named_list)) {
          if (is.logical(chart_secondary_y_axis_gridlines_visible)) {
            chart_secondary_y_axis_gridlines_visible <- as.character(chart_secondary_y_axis_gridlines_visible)
          }
          named_list_value <- unname(named_list[chart_secondary_y_axis_gridlines_visible])[[1]]
          new_list$x$state$y2$gridlines_visible <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y2$gridlines_styling <- chart_secondary_y_axis_gridlines_styling
  new_list$x$state$y2$gridline_color <- chart_secondary_y_axis_gridline_color
  list_chart_secondary_y_axis_gridline_style <- c("solid", "dash", "dot", "dot_dash", NULL)
  if (!is.null(chart_secondary_y_axis_gridline_style)) {
    if (!chart_secondary_y_axis_gridline_style %in% list_chart_secondary_y_axis_gridline_style) {
      stop("`chart_secondary_y_axis_gridline_style` must be one of: c('solid', 'dash', 'dot', 'dot_dash')")
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
        if (length(named_list) > 1 && chart_secondary_y_axis_gridline_style %in% names(named_list)) {
          if (is.logical(chart_secondary_y_axis_gridline_style)) {
            chart_secondary_y_axis_gridline_style <- as.character(chart_secondary_y_axis_gridline_style)
          }
          named_list_value <- unname(named_list[chart_secondary_y_axis_gridline_style])[[1]]
          new_list$x$state$y2$gridline_style <- named_list_value
        }
      }
    }
  }
  new_list$x$state$y2$gridline_width <- chart_secondary_y_axis_gridline_width
  new_list$x$state$y2$gridline_category_dividers <- chart_secondary_y_axis_gridline_category_dividers
  new_list$x$state$y2$gridline_category_dividers_extend <- chart_secondary_y_axis_gridline_category_dividers_extend
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
          new_list$x$state$chart_bg$background_color_enabled <- named_list_value
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
          new_list$x$state$chart_bg$background_image_enabled <- named_list_value
        }
      }
    }
  }
  new_list$x$state$chart_bg$background_color <- chart_background_background_color
  new_list$x$state$chart_bg$background_image_src <- chart_background_background_image_src
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
          new_list$x$state$chart_bg$background_image_size <- named_list_value
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
          new_list$x$state$chart_bg$background_image_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$number_format_labels$prefix <- number_format_labels_prefix
  new_list$x$state$number_format_labels$suffix <- number_format_labels_suffix
  new_list$x$state$number_format_labels$n_dec <- number_format_labels_n_dec
  new_list$x$state$number_format_labels$advanced <- number_format_labels_advanced
  list_number_format_labels_negative_sign <- c("-$nk", "$-nk", "($nk)", "$(n)k", "none", NULL)
  if (!is.null(number_format_labels_negative_sign)) {
    if (!number_format_labels_negative_sign %in% list_number_format_labels_negative_sign) {
      stop("`number_format_labels_negative_sign` must be one of: c('-$nk', '$-nk', '($nk)', '$(n)k', 'none')")
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
        if (length(named_list) > 1 && number_format_labels_negative_sign %in% names(named_list)) {
          if (is.logical(number_format_labels_negative_sign)) {
            number_format_labels_negative_sign <- as.character(number_format_labels_negative_sign)
          }
          named_list_value <- unname(named_list[number_format_labels_negative_sign])[[1]]
          new_list$x$state$number_format_labels$negative_sign <- named_list_value
        }
      }
    }
  }
  new_list$x$state$number_format_labels$strip_zeros <- number_format_labels_strip_zeros
  new_list$x$state$number_format_labels$strip_separator <- number_format_labels_strip_separator
  new_list$x$state$number_format_labels$transform_labels <- number_format_labels_transform_labels
  list_number_format_labels_transform <- c("multiply", "divide", "exponentiate", NULL)
  if (!is.null(number_format_labels_transform)) {
    if (!number_format_labels_transform %in% list_number_format_labels_transform) {
      stop("`number_format_labels_transform` must be one of: c('multiply', 'divide', 'exponentiate')")
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
        if (length(named_list) > 1 && number_format_labels_transform %in% names(named_list)) {
          if (is.logical(number_format_labels_transform)) {
            number_format_labels_transform <- as.character(number_format_labels_transform)
          }
          named_list_value <- unname(named_list[number_format_labels_transform])[[1]]
          new_list$x$state$number_format_labels$transform <- named_list_value
        }
      }
    }
  }
  new_list$x$state$number_format_labels$multiply_divide_constant <- number_format_labels_multiply_divide_constant
  new_list$x$state$number_format_labels$exponentiate_constant <- number_format_labels_exponentiate_constant
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
  new_list$x$state$number_format_prop <- number_format_prop
  new_list$x$state$number_format_secondary$prefix <- chart_secondary_number_date_format_prefix
  new_list$x$state$number_format_secondary$suffix <- chart_secondary_number_date_format_suffix
  new_list$x$state$number_format_secondary$n_dec <- chart_secondary_number_date_format_n_dec
  new_list$x$state$number_format_secondary$advanced <- chart_secondary_number_date_format_advanced
  list_chart_secondary_number_date_format_negative_sign <- c("-$nk", "$-nk", "($nk)", "$(n)k", "none", NULL)
  if (!is.null(chart_secondary_number_date_format_negative_sign)) {
    if (!chart_secondary_number_date_format_negative_sign %in% list_chart_secondary_number_date_format_negative_sign) {
      stop("`chart_secondary_number_date_format_negative_sign` must be one of: c('-$nk', '$-nk', '($nk)', '$(n)k', 'none')")
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
        if (length(named_list) > 1 && chart_secondary_number_date_format_negative_sign %in% names(named_list)) {
          if (is.logical(chart_secondary_number_date_format_negative_sign)) {
            chart_secondary_number_date_format_negative_sign <- as.character(chart_secondary_number_date_format_negative_sign)
          }
          named_list_value <- unname(named_list[chart_secondary_number_date_format_negative_sign])[[1]]
          new_list$x$state$number_format_secondary$negative_sign <- named_list_value
        }
      }
    }
  }
  new_list$x$state$number_format_secondary$strip_zeros <- chart_secondary_number_date_format_strip_zeros
  new_list$x$state$number_format_secondary$strip_separator <- chart_secondary_number_date_format_strip_separator
  new_list$x$state$number_format_secondary$transform_labels <- chart_secondary_number_date_format_transform_labels
  list_chart_secondary_number_date_format_transform <- c("multiply", "divide", "exponentiate", NULL)
  if (!is.null(chart_secondary_number_date_format_transform)) {
    if (!chart_secondary_number_date_format_transform %in% list_chart_secondary_number_date_format_transform) {
      stop("`chart_secondary_number_date_format_transform` must be one of: c('multiply', 'divide', 'exponentiate')")
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
        if (length(named_list) > 1 && chart_secondary_number_date_format_transform %in% names(named_list)) {
          if (is.logical(chart_secondary_number_date_format_transform)) {
            chart_secondary_number_date_format_transform <- as.character(chart_secondary_number_date_format_transform)
          }
          named_list_value <- unname(named_list[chart_secondary_number_date_format_transform])[[1]]
          new_list$x$state$number_format_secondary$transform <- named_list_value
        }
      }
    }
  }
  new_list$x$state$number_format_secondary$multiply_divide_constant <- chart_secondary_number_date_format_multiply_divide_constant
  new_list$x$state$number_format_secondary$exponentiate_constant <- chart_secondary_number_date_format_exponentiate_constant
  list_legend_mode <- c("auto", "on", "off", NULL)
  if (!is.null(legend_mode)) {
    if (!legend_mode %in% list_legend_mode) {
      stop("`legend_mode` must be one of: c('auto', 'on', 'off')")
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
        if (length(named_list) > 1 && legend_mode %in% names(named_list)) {
          if (is.logical(legend_mode)) {
            legend_mode <- as.character(legend_mode)
          }
          named_list_value <- unname(named_list[legend_mode])[[1]]
          new_list$x$state$legend_mode <- named_list_value
        }
      }
    }
  }
  list_legend_filter_mode <- c("none", "filter-in", "filter-out", NULL)
  if (!is.null(legend_filter_mode)) {
    if (!legend_filter_mode %in% list_legend_filter_mode) {
      stop("`legend_filter_mode` must be one of: c('none', 'filter-in', 'filter-out')")
    } else {
      if (length(jsonlite::fromJSON('{"none": "none", "filter-in": "filter-in", "filter-out": "filter-out"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"none": "none", "filter-in": "filter-in", "filter-out": "filter-out"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && legend_filter_mode %in% names(named_list)) {
          if (is.logical(legend_filter_mode)) {
            legend_filter_mode <- as.character(legend_filter_mode)
          }
          named_list_value <- unname(named_list[legend_filter_mode])[[1]]
          new_list$x$state$legend_filter_mode <- named_list_value
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
  list_legend_position <- c("above", "below", NULL)
  if (!is.null(legend_position)) {
    if (!legend_position %in% list_legend_position) {
      stop("`legend_position` must be one of: c('above', 'below')")
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
        if (length(named_list) > 1 && legend_position %in% names(named_list)) {
          if (is.logical(legend_position)) {
            legend_position <- as.character(legend_position)
          }
          named_list_value <- unname(named_list[legend_position])[[1]]
          new_list$x$state$legend_position <- named_list_value
        }
      }
    }
  }
  list_text_legend <- c("auto", "custom", "off", NULL)
  if (!is.null(text_legend)) {
    if (!text_legend %in% list_text_legend) {
      stop("`text_legend` must be one of: c('auto', 'custom', 'off')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "custom": "custom", "off": "off"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "custom": "custom", "off": "off"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && text_legend %in% names(named_list)) {
          if (is.logical(text_legend)) {
            text_legend <- as.character(text_legend)
          }
          named_list_value <- unname(named_list[text_legend])[[1]]
          new_list$x$state$text_legend <- named_list_value
        }
      }
    }
  }
  new_list$x$state$text_legend_title <- text_legend_title
  new_list$x$state$text_legend_subtitle <- text_legend_subtitle
  new_list$x$state$text_legend_bold <- text_legend_bold
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
  new_list$x$state$popup_color_headers <- popup_color_headers
  new_list$x$state$show_series_text <- show_series_text
  if (length(popup_series_text) > 1) {
    new_list$x$state$popup_series_text <- paste(popup_series_text, collapse = "\n")
  } else {
    new_list$x$state$popup_series_text <- popup_series_text
  }

  list_chart_axes_highlights_placement <- c("above", "below", NULL)
  if (!is.null(chart_axes_highlights_placement)) {
    if (!chart_axes_highlights_placement %in% list_chart_axes_highlights_placement) {
      stop("`chart_axes_highlights_placement` must be one of: c('above', 'below')")
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
        if (length(named_list) > 1 && chart_axes_highlights_placement %in% names(named_list)) {
          if (is.logical(chart_axes_highlights_placement)) {
            chart_axes_highlights_placement <- as.character(chart_axes_highlights_placement)
          }
          named_list_value <- unname(named_list[chart_axes_highlights_placement])[[1]]
          new_list$x$state$axes_highlights$placement <- named_list_value
        }
      }
    }
  }
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
  new_list$x$state$annotations_styles <- annotations_styles
  list_chart_annotations_defaults_text_weight <- c("normal", "bold", NULL)
  if (!is.null(chart_annotations_defaults_text_weight)) {
    if (!chart_annotations_defaults_text_weight %in% list_chart_annotations_defaults_text_weight) {
      stop("`chart_annotations_defaults_text_weight` must be one of: c('normal', 'bold')")
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
        if (length(named_list) > 1 && chart_annotations_defaults_text_weight %in% names(named_list)) {
          if (is.logical(chart_annotations_defaults_text_weight)) {
            chart_annotations_defaults_text_weight <- as.character(chart_annotations_defaults_text_weight)
          }
          named_list_value <- unname(named_list[chart_annotations_defaults_text_weight])[[1]]
          new_list$x$state$annotations$defaults$text_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$annotations$defaults$text_size <- chart_annotations_defaults_text_size
  new_list$x$state$annotations$defaults$text_color <- chart_annotations_defaults_text_color
  new_list$x$state$annotations$defaults$label_width <- chart_annotations_defaults_label_width
  list_chart_annotations_defaults_text_background_mode <- c("none", "outline", "background", NULL)
  if (!is.null(chart_annotations_defaults_text_background_mode)) {
    if (!chart_annotations_defaults_text_background_mode %in% list_chart_annotations_defaults_text_background_mode) {
      stop("`chart_annotations_defaults_text_background_mode` must be one of: c('none', 'outline', 'background')")
    } else {
      if (length(jsonlite::fromJSON('{"none": "none", "outline": "outline", "background": "background"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"none": "none", "outline": "outline", "background": "background"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_annotations_defaults_text_background_mode %in% names(named_list)) {
          if (is.logical(chart_annotations_defaults_text_background_mode)) {
            chart_annotations_defaults_text_background_mode <- as.character(chart_annotations_defaults_text_background_mode)
          }
          named_list_value <- unname(named_list[chart_annotations_defaults_text_background_mode])[[1]]
          new_list$x$state$annotations$defaults$text_background_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$annotations$defaults$text_bg <- chart_annotations_defaults_text_bg
  new_list$x$state$annotations$defaults$label_bg <- chart_annotations_defaults_label_bg
  list_chart_annotations_defaults_text_alignment <- c("auto", "start", "center", "end", NULL)
  if (!is.null(chart_annotations_defaults_text_alignment)) {
    if (!chart_annotations_defaults_text_alignment %in% list_chart_annotations_defaults_text_alignment) {
      stop("`chart_annotations_defaults_text_alignment` must be one of: c('auto', 'start', 'center', 'end')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "start": "start", "center": "center", "end": "end"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "start": "start", "center": "center", "end": "end"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_annotations_defaults_text_alignment %in% names(named_list)) {
          if (is.logical(chart_annotations_defaults_text_alignment)) {
            chart_annotations_defaults_text_alignment <- as.character(chart_annotations_defaults_text_alignment)
          }
          named_list_value <- unname(named_list[chart_annotations_defaults_text_alignment])[[1]]
          new_list$x$state$annotations$defaults$text_alignment <- named_list_value
        }
      }
    }
  }
  list_chart_annotations_defaults_popup_position <- c("center", "left", "right", "top", "bottom", NULL)
  if (!is.null(chart_annotations_defaults_popup_position)) {
    if (!chart_annotations_defaults_popup_position %in% list_chart_annotations_defaults_popup_position) {
      stop("`chart_annotations_defaults_popup_position` must be one of: c('center', 'left', 'right', 'top', 'bottom')")
    } else {
      if (length(jsonlite::fromJSON('{"center": "center", "left": "left", "right": "right", "top": "top", "bottom": "bottom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"center": "center", "left": "left", "right": "right", "top": "top", "bottom": "bottom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_annotations_defaults_popup_position %in% names(named_list)) {
          if (is.logical(chart_annotations_defaults_popup_position)) {
            chart_annotations_defaults_popup_position <- as.character(chart_annotations_defaults_popup_position)
          }
          named_list_value <- unname(named_list[chart_annotations_defaults_popup_position])[[1]]
          new_list$x$state$annotations$defaults$popup_position <- named_list_value
        }
      }
    }
  }
  list_chart_annotations_defaults_line_marker <- c("none", "arrowhead_open", "arrowhead", NULL)
  if (!is.null(chart_annotations_defaults_line_marker)) {
    if (!chart_annotations_defaults_line_marker %in% list_chart_annotations_defaults_line_marker) {
      stop("`chart_annotations_defaults_line_marker` must be one of: c('none', 'arrowhead_open', 'arrowhead')")
    } else {
      if (length(jsonlite::fromJSON('{"none": "none", "arrowhead_open": "arrowhead_open", "arrowhead": "arrowhead"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"none": "none", "arrowhead_open": "arrowhead_open", "arrowhead": "arrowhead"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_annotations_defaults_line_marker %in% names(named_list)) {
          if (is.logical(chart_annotations_defaults_line_marker)) {
            chart_annotations_defaults_line_marker <- as.character(chart_annotations_defaults_line_marker)
          }
          named_list_value <- unname(named_list[chart_annotations_defaults_line_marker])[[1]]
          new_list$x$state$annotations$defaults$line_marker <- named_list_value
        }
      }
    }
  }
  new_list$x$state$annotations$defaults$stroke_width <- chart_annotations_defaults_stroke_width
  new_list$x$state$annotations$defaults$stroke_color <- chart_annotations_defaults_stroke_color
  list_chart_annotations_defaults_connector_extend_line <- c("enabled", "disabled", NULL)
  if (!is.null(chart_annotations_defaults_connector_extend_line)) {
    if (!chart_annotations_defaults_connector_extend_line %in% list_chart_annotations_defaults_connector_extend_line) {
      stop("`chart_annotations_defaults_connector_extend_line` must be one of: c('enabled', 'disabled')")
    } else {
      if (length(jsonlite::fromJSON('{"enabled": "enabled", "disabled": "disabled"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"enabled": "enabled", "disabled": "disabled"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_annotations_defaults_connector_extend_line %in% names(named_list)) {
          if (is.logical(chart_annotations_defaults_connector_extend_line)) {
            chart_annotations_defaults_connector_extend_line <- as.character(chart_annotations_defaults_connector_extend_line)
          }
          named_list_value <- unname(named_list[chart_annotations_defaults_connector_extend_line])[[1]]
          new_list$x$state$annotations$defaults$connector_extend_line <- named_list_value
        }
      }
    }
  }
  new_list$x$state$data_trans_duration <- data_trans_duration
  new_list$x$state$animate_on_load <- animate_on_load
  new_list$x$state$data_trans_bind_series <- data_trans_bind_series
  new_list$x$state$data_trans_bind_data_points <- data_trans_bind_data_points
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
  new_list$x$state$url_state$enabled <- chart_url_settings_enabled
  if (length(chart_url_settings_whitelist) > 1) {
    new_list$x$state$url_state$whitelist <- paste(chart_url_settings_whitelist, collapse = "\n")
  } else {
    new_list$x$state$url_state$whitelist <- chart_url_settings_whitelist
  }

  deep_merge(old_list, new_list)
}
