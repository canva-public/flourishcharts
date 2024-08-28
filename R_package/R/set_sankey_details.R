#' Set sankey diagram chart details
#' @name set_sankey_details
#' @param mode Mode. Choices: alluvial, sankey. Flourish type hint: string, defaults to `NULL`
#' @param spread Spread. Choices: step, column. Flourish type hint: string, defaults to `NULL`
#' @param alignment Alignment. Choices: justify, center, left, right. Flourish type hint: string, defaults to `NULL`
#' @param sorting_mode Sorting. Choices: datasheet, name, value, reduce_overlaps. Match sheet sorts based on the order of the categories as they appear in the datasheet.  Value sorts by the value of the nodes at each stage.  Reduce overlaps reduces the overlapping of links. Flourish type hint: string, defaults to `NULL`
#' @param node_sort_order Order. Choices: ascending, descending. Flourish type hint: string, defaults to `NULL`
#' @param iterations Iterations. Number of iterations of the layout algorithm before the diagram is drawn. The higher the value, the fewer link crossings you will see but the less likely the order is to match that in the datasheet. Flourish type hint: number, defaults to `NULL`
#' @param setup_settings Advanced. Flourish type hint: boolean, defaults to `NULL`
#' @param node_width Node width. Flourish type hint: number, defaults to `NULL`
#' @param node_padding Node spacing. The vertical gap between nodes. Flourish type hint: number, defaults to `NULL`
#' @param top_padding Margin above. Adds space at the top of the diagram; useful to accommodate any overflowing labels. Flourish type hint: number, defaults to `NULL`
#' @param bottom_padding Margin below. Adds space at the bottom of the diagram; useful to accommodate any overflowing labels. Flourish type hint: number, defaults to `NULL`
#' @param height_mode Height mode. Choices: aspect, standard. Whether responsive embeds should set their own height or use the standard responsive Flourish embed heights. Ignored in simple Iframe embeds, Canva and other fixed-height contexts. Flourish type hint: string, defaults to `NULL`
#' @param facet_aspect Aspect. Aspect ratio of each plot in desktop mode, where 1 is square, above 1 is wider, and below 1 is taller. Flourish type hint: number, defaults to `NULL`
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
#' @param facets_hide_empty Hide empty charts when filtering. Flourish type hint: boolean, defaults to `NULL`
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
#' @param link_opacity Link opacity. Flourish type hint: number, defaults to `NULL`
#' @param background_opacity Defocused opacity. When a node or link is in focus, this sets the opacity of the links and nodes not in focus. Flourish type hint: number, defaults to `NULL`
#' @param custom_node_color Custom node color. Flourish type hint: color, defaults to `NULL`
#' @param links_color_mode Links color mode. Choices: node, source, target. Flourish type hint: string, defaults to `NULL`
#' @param label_mode Position. Choices: outwards, inwards. Flourish type hint: string, defaults to `NULL`
#' @param label_outwards_max_width Space. The max space available for the labels, as a percentage of the chart width. Flourish type hint: number, defaults to `NULL`
#' @param label_color_mode Color mode. Choices: auto, fixed. Flourish type hint: string, defaults to `NULL`
#' @param label_color Color. Flourish type hint: color, defaults to `NULL`
#' @param label_bold Bold. Flourish type hint: boolean, defaults to `NULL`
#' @param label_show_values Include values. Flourish type hint: boolean, defaults to `NULL`
#' @param label_show_values_links Show link values. Choices: never, focused, always. Flourish type hint: string, defaults to `NULL`
#' @param label_color_links Colour. Flourish type hint: color, defaults to `NULL`
#' @param label_outline Outline. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param label_outline_width Width. As a percent of the font size. Flourish type hint: number, defaults to `NULL`
#' @param label_font_size Font size. In rems, a multiple of the pages base font size. Flourish type hint: number, defaults to `NULL`
#' @param label_facet_scaling Scale with grid. Sets a max size based on the facet size, regardless of the page width. Flourish type hint: boolean, defaults to `NULL`
#' @param show_node_headings Show headings. Enables the labels above each column of nodes in an Alluvial diagram. Flourish type hint: boolean, defaults to `NULL`
#' @param node_headings_bold Bold. Flourish type hint: boolean, defaults to `NULL`
#' @param node_headings_font_size Font size. Flourish type hint: number, defaults to `NULL`
#' @param node_headings_padding Padding. Flourish type hint: number, defaults to `NULL`
#' @param node_headings_max_width Max width. Flourish type hint: number, defaults to `NULL`
#' @param node_headings_color Color. Flourish type hint: color, defaults to `NULL`
#' @param node_headings_overrides Custom overrides. On each line, type the step heading that you want to override, a double colon and then the replacement step heading. For example: 1 :: Phase A 2 :: Phase B. Flourish type hint: text, defaults to `NULL`
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
#' @param filter_show_all Include "All". Flourish type hint: boolean, defaults to `NULL`
#' @param filter_show_all_text “All” label. Flourish type hint: string, defaults to `NULL`
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
#' @param chart_slider_control_style_track_color Track. Flourish type hint: color, defaults to `NULL`
#' @param chart_slider_control_style_font_color Text. Flourish type hint: color, defaults to `NULL`
#' @param chart_slider_control_style_handle_color Handle. Flourish type hint: color, defaults to `NULL`
#' @param chart_slider_control_style_play_color Play/pause. Flourish type hint: color, defaults to `NULL`
#' @param chart_slider_control_style_track_height Track height. Flourish type hint: number, defaults to `NULL`
#' @param chart_slider_control_style_handle_height Height. Flourish type hint: number, defaults to `NULL`
#' @param chart_slider_control_style_play_button Play button. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_popup_mode Choices: none, popup, panel, both. Flourish type hint: string, defaults to `NULL`
#' @param chart_popup_popup_is_custom Popup content. Choices: `FALSE`, `TRUE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_popup_show_popup_styles Show popup styles. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_popup_popup_custom_header Popup custom header. Use `{{LABEL}}` to include the Label for the current element. For links, this will show in the format of "Source Target", for nodes this will show the name of the node. For any other selected columns use `{{column_name}}`. Advanced users can include HTML to apply layouts, formatting, images, etc.  You can also hide content based on a column name being empty using `{{# if column_name}}Text to display when column_name is not empty{{/if}}`. For example: `{{Country}} {{#if Capital}}(Capital: {{Capital}}){{/if}}`  If statements can also be used to show certain content for links only or nodes only. Use `{{#if IS_LINK}}` or `{{#if IS_NODE}}` like so:   `{{#if IS_LINK}} This is a link popup {{/if}}`  `{{#if IS_NODE}} This is a node popup {{/if}}` Flourish type hint: html, defaults to `NULL`
#' @param chart_popup_popup_custom_main Popup custom main content. Use `{{LABEL}}` to include the Label for the current element. For links, this will show in the format of "Source Target", for nodes this will show the name of the node. For any other selected columns use `{{column_name}}`. Advanced users can include HTML to apply layouts, formatting, images, etc.  You can also hide content based on a column name being empty using `{{# if column_name}}Text to display when column_name is not empty{{/if}}`. For example: `{{Country}} {{#if Capital}}(Capital: {{Capital}}){{/if}}`  If statements can also be used to show certain content for links only or nodes only. Use `{{#if IS_LINK}}` or `{{#if IS_NODE}}` like so:   `{{#if IS_LINK}} This is a link popup {{/if}}`  `{{#if IS_NODE}} This is a node popup {{/if}}` Flourish type hint: html, defaults to `NULL`
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
#' @param chart_popup_panel_custom_header Panel custom header. Use `{{LABEL}}` to include the Label for the current element. For links, this will show in the format of "Source Target", for nodes this will show the name of the node. For any other selected columns use `{{column_name}}`. Advanced users can include HTML to apply layouts, formatting, images, etc.  You can also hide content based on a column name being empty using `{{# if column_name}}Text to display when column_name is not empty{{/if}}`. For example: `{{Country}} {{#if Capital}}(Capital: {{Capital}}){{/if}}`  If statements can also be used to show certain content for links only or nodes only. Use `{{#if IS_LINK}}` or `{{#if IS_NODE}}` like so:   `{{#if IS_LINK}} This is a link panel {{/if}}`  `{{#if IS_NODE}} This is a node panel {{/if}}` Flourish type hint: html, defaults to `NULL`
#' @param chart_popup_panel_custom_main Panel custom main content. Use `{{LABEL}}` to include the Label for the current element. For links, this will show in the format of "Source Target", for nodes this will show the name of the node. For any other selected columns use `{{column_name}}`. Advanced users can include HTML to apply layouts, formatting, images, etc.  You can also hide content based on a column name being empty using `{{# if column_name}}Text to display when column_name is not empty{{/if}}`. For example: `{{Country}} {{#if Capital}}(Capital: {{Capital}}){{/if}}`  If statements can also be used to show certain content for links only or nodes only. Use `{{#if IS_LINK}}` or `{{#if IS_NODE}}` like so:   `{{#if IS_LINK}} This is a link panel {{/if}}`  `{{#if IS_NODE}} This is a node panel {{/if}}` Flourish type hint: html, defaults to `NULL`
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
#' @param popup_type Type. Choices: links, nodes, all. Flourish type hint: string, defaults to `NULL`
#' @param intro_duration Duration. Flourish type hint: number, defaults to `NULL`
#' @param intro_ease_range Speed variation. When set at zero, all the links are revealed at an even speed. When set above zero, the lines randomly accelerate and decelerate slightly to give a more natural effect. Flourish type hint: number, defaults to `NULL`
#' @param transition_duration Duration. In seconds. Flourish type hint: number, defaults to `NULL`
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
#'   flourish(chart_type = "sankey", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_sankey_data(gapminder) |> 
#'   set_sankey_details()
#' )
#' @export

set_sankey_details <- function(
    .,
    mode = NULL,
    spread = NULL,
    alignment = NULL,
    sorting_mode = NULL,
    node_sort_order = NULL,
    iterations = NULL,
    setup_settings = NULL,
    node_width = NULL,
    node_padding = NULL,
    top_padding = NULL,
    bottom_padding = NULL,
    height_mode = NULL,
    facet_aspect = NULL,
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
    facets_hide_empty = NULL,
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
    link_opacity = NULL,
    background_opacity = NULL,
    custom_node_color = NULL,
    links_color_mode = NULL,
    label_mode = NULL,
    label_outwards_max_width = NULL,
    label_color_mode = NULL,
    label_color = NULL,
    label_bold = NULL,
    label_show_values = NULL,
    label_show_values_links = NULL,
    label_color_links = NULL,
    label_outline = NULL,
    label_outline_width = NULL,
    label_font_size = NULL,
    label_facet_scaling = NULL,
    show_node_headings = NULL,
    node_headings_bold = NULL,
    node_headings_font_size = NULL,
    node_headings_padding = NULL,
    node_headings_max_width = NULL,
    node_headings_color = NULL,
    node_headings_overrides = NULL,
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
    filter_show_all = NULL,
    filter_show_all_text = NULL,
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
    chart_slider_control_style_track_color = NULL,
    chart_slider_control_style_font_color = NULL,
    chart_slider_control_style_handle_color = NULL,
    chart_slider_control_style_play_color = NULL,
    chart_slider_control_style_track_height = NULL,
    chart_slider_control_style_handle_height = NULL,
    chart_slider_control_style_play_button = NULL,
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
    popup_type = NULL,
    intro_duration = NULL,
    intro_ease_range = NULL,
    transition_duration = NULL,
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
  details_error(., "sankey")

  old_list <- .
  new_list <- list()

  if (isTRUE(old_list$x$template != "@flourish/sankey")) {
    stop("`set_sankey_details()` is not supported for this chart type.")
  }
  list_mode <- c("alluvial", "sankey", NULL)
  if (!is.null(mode)) {
    if (!mode %in% list_mode) {
      stop("`mode` must be one of: c('alluvial', 'sankey')")
    } else {
      if (length(jsonlite::fromJSON('{"alluvial": "alluvial", "sankey": "sankey"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"alluvial": "alluvial", "sankey": "sankey"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && mode %in% names(named_list)) {
          if (is.logical(mode)) {
            mode <- as.character(mode)
          }
          named_list_value <- unname(named_list[mode])[[1]]
          new_list$x$state$mode <- named_list_value
        }
      }
    }
  }
  list_spread <- c("step", "column", NULL)
  if (!is.null(spread)) {
    if (!spread %in% list_spread) {
      stop("`spread` must be one of: c('step', 'column')")
    } else {
      if (length(jsonlite::fromJSON('{"step": "step", "column": "column"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"step": "step", "column": "column"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && spread %in% names(named_list)) {
          if (is.logical(spread)) {
            spread <- as.character(spread)
          }
          named_list_value <- unname(named_list[spread])[[1]]
          new_list$x$state$spread <- named_list_value
        }
      }
    }
  }
  list_alignment <- c("justify", "center", "left", "right", NULL)
  if (!is.null(alignment)) {
    if (!alignment %in% list_alignment) {
      stop("`alignment` must be one of: c('justify', 'center', 'left', 'right')")
    } else {
      if (length(jsonlite::fromJSON('{"justify": "justify", "center": "center", "left": "left", "right": "right"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"justify": "justify", "center": "center", "left": "left", "right": "right"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && alignment %in% names(named_list)) {
          if (is.logical(alignment)) {
            alignment <- as.character(alignment)
          }
          named_list_value <- unname(named_list[alignment])[[1]]
          new_list$x$state$alignment <- named_list_value
        }
      }
    }
  }
  list_sorting_mode <- c("datasheet", "name", "value", "reduce_overlaps", NULL)
  if (!is.null(sorting_mode)) {
    if (!sorting_mode %in% list_sorting_mode) {
      stop("`sorting_mode` must be one of: c('datasheet', 'name', 'value', 'reduce_overlaps')")
    } else {
      if (length(jsonlite::fromJSON('{"datasheet": "datasheet", "name": "name", "value": "value", "reduce_overlaps": "reduce_overlaps"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"datasheet": "datasheet", "name": "name", "value": "value", "reduce_overlaps": "reduce_overlaps"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && sorting_mode %in% names(named_list)) {
          if (is.logical(sorting_mode)) {
            sorting_mode <- as.character(sorting_mode)
          }
          named_list_value <- unname(named_list[sorting_mode])[[1]]
          new_list$x$state$sorting_mode <- named_list_value
        }
      }
    }
  }
  list_node_sort_order <- c("ascending", "descending", NULL)
  if (!is.null(node_sort_order)) {
    if (!node_sort_order %in% list_node_sort_order) {
      stop("`node_sort_order` must be one of: c('ascending', 'descending')")
    } else {
      if (length(jsonlite::fromJSON('{"ascending": "ascending", "descending": "descending"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"ascending": "ascending", "descending": "descending"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && node_sort_order %in% names(named_list)) {
          if (is.logical(node_sort_order)) {
            node_sort_order <- as.character(node_sort_order)
          }
          named_list_value <- unname(named_list[node_sort_order])[[1]]
          new_list$x$state$node_sort_order <- named_list_value
        }
      }
    }
  }
  new_list$x$state$iterations <- iterations
  new_list$x$state$setup_settings <- setup_settings
  new_list$x$state$node_width <- node_width
  new_list$x$state$node_padding <- node_padding
  new_list$x$state$top_padding <- top_padding
  new_list$x$state$bottom_padding <- bottom_padding
  list_height_mode <- c("aspect", "standard", NULL)
  if (!is.null(height_mode)) {
    if (!height_mode %in% list_height_mode) {
      stop("`height_mode` must be one of: c('aspect', 'standard')")
    } else {
      if (length(jsonlite::fromJSON('{"aspect": "aspect", "standard": "standard"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"aspect": "aspect", "standard": "standard"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
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
  new_list$x$state$facets_hide_empty <- facets_hide_empty
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
  new_list$x$state$link_opacity <- link_opacity
  new_list$x$state$background_opacity <- background_opacity
  new_list$x$state$custom_node_color <- custom_node_color
  list_links_color_mode <- c("node", "source", "target", NULL)
  if (!is.null(links_color_mode)) {
    if (!links_color_mode %in% list_links_color_mode) {
      stop("`links_color_mode` must be one of: c('node', 'source', 'target')")
    } else {
      if (length(jsonlite::fromJSON('{"node": "node", "source": "source", "target": "target"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"node": "node", "source": "source", "target": "target"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && links_color_mode %in% names(named_list)) {
          if (is.logical(links_color_mode)) {
            links_color_mode <- as.character(links_color_mode)
          }
          named_list_value <- unname(named_list[links_color_mode])[[1]]
          new_list$x$state$links_color_mode <- named_list_value
        }
      }
    }
  }
  list_label_mode <- c("outwards", "inwards", NULL)
  if (!is.null(label_mode)) {
    if (!label_mode %in% list_label_mode) {
      stop("`label_mode` must be one of: c('outwards', 'inwards')")
    } else {
      if (length(jsonlite::fromJSON('{"outwards": "outwards", "inwards": "inwards"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"outwards": "outwards", "inwards": "inwards"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && label_mode %in% names(named_list)) {
          if (is.logical(label_mode)) {
            label_mode <- as.character(label_mode)
          }
          named_list_value <- unname(named_list[label_mode])[[1]]
          new_list$x$state$label_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$label_outwards_max_width <- label_outwards_max_width
  list_label_color_mode <- c("auto", "fixed", NULL)
  if (!is.null(label_color_mode)) {
    if (!label_color_mode %in% list_label_color_mode) {
      stop("`label_color_mode` must be one of: c('auto', 'fixed')")
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
        if (length(named_list) > 1 && label_color_mode %in% names(named_list)) {
          if (is.logical(label_color_mode)) {
            label_color_mode <- as.character(label_color_mode)
          }
          named_list_value <- unname(named_list[label_color_mode])[[1]]
          new_list$x$state$label_color_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$label_color <- label_color
  new_list$x$state$label_bold <- label_bold
  new_list$x$state$label_show_values <- label_show_values
  list_label_show_values_links <- c("never", "focused", "always", NULL)
  if (!is.null(label_show_values_links)) {
    if (!label_show_values_links %in% list_label_show_values_links) {
      stop("`label_show_values_links` must be one of: c('never', 'focused', 'always')")
    } else {
      if (length(jsonlite::fromJSON('{"never": "never", "focused": "focused", "always": "always"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"never": "never", "focused": "focused", "always": "always"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && label_show_values_links %in% names(named_list)) {
          if (is.logical(label_show_values_links)) {
            label_show_values_links <- as.character(label_show_values_links)
          }
          named_list_value <- unname(named_list[label_show_values_links])[[1]]
          new_list$x$state$label_show_values_links <- named_list_value
        }
      }
    }
  }
  new_list$x$state$label_color_links <- label_color_links
  list_label_outline <- c(TRUE, FALSE, NULL)
  if (!is.null(label_outline)) {
    if (!label_outline %in% list_label_outline) {
      stop("`label_outline` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && label_outline %in% names(named_list)) {
          if (is.logical(label_outline)) {
            label_outline <- as.character(label_outline)
          }
          named_list_value <- unname(named_list[label_outline])[[1]]
          new_list$x$state$label_outline <- named_list_value
        }
      }
    }
  }
  new_list$x$state$label_outline_width <- label_outline_width
  new_list$x$state$label_font_size <- label_font_size
  new_list$x$state$label_facet_scaling <- label_facet_scaling
  new_list$x$state$show_node_headings <- show_node_headings
  new_list$x$state$node_headings_bold <- node_headings_bold
  new_list$x$state$node_headings_font_size <- node_headings_font_size
  new_list$x$state$node_headings_padding <- node_headings_padding
  new_list$x$state$node_headings_max_width <- node_headings_max_width
  new_list$x$state$node_headings_color <- node_headings_color
  if (length(node_headings_overrides) > 1) {
    new_list$x$state$node_headings_overrides <- paste(node_headings_overrides, collapse = "\n")
  } else {
    new_list$x$state$node_headings_overrides <- node_headings_overrides
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
          new_list$x$state$filter_controls$control_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$filter_controls$control_styles <- chart_filter_controls_control_styles
  new_list$x$state$filter_controls$control_title <- chart_filter_controls_control_title
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
          new_list$x$state$filter_controls$button_group <- named_list_value
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
          new_list$x$state$filter_controls$button_group_width_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$filter_controls$button_group_width_fixed <- chart_filter_controls_button_group_width_fixed
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
          new_list$x$state$filter_controls$dropdown_width_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$filter_controls$dropdown_width_fixed <- chart_filter_controls_dropdown_width_fixed
  new_list$x$state$filter_controls$slider_width <- chart_filter_controls_slider_width
  new_list$x$state$filter_controls$slider_max_label_width <- chart_filter_controls_slider_max_label_width
  new_list$x$state$filter_controls$slider_step_time <- chart_filter_controls_slider_step_time
  new_list$x$state$filter_controls$slider_loop <- chart_filter_controls_slider_loop
  new_list$x$state$filter_controls$slider_restart_pause <- chart_filter_controls_slider_restart_pause
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
          new_list$x$state$filter_controls$sort <- named_list_value
        }
      }
    }
  }
  new_list$x$state$filter_show_all <- filter_show_all
  new_list$x$state$filter_show_all_text <- filter_show_all_text
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
  new_list$x$state$slider_style$track_color <- chart_slider_control_style_track_color
  new_list$x$state$slider_style$font_color <- chart_slider_control_style_font_color
  new_list$x$state$slider_style$handle_color <- chart_slider_control_style_handle_color
  new_list$x$state$slider_style$play_color <- chart_slider_control_style_play_color
  new_list$x$state$slider_style$track_height <- chart_slider_control_style_track_height
  new_list$x$state$slider_style$handle_height <- chart_slider_control_style_handle_height
  new_list$x$state$slider_style$play_button <- chart_slider_control_style_play_button
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
  list_popup_type <- c("links", "nodes", "all", NULL)
  if (!is.null(popup_type)) {
    if (!popup_type %in% list_popup_type) {
      stop("`popup_type` must be one of: c('links', 'nodes', 'all')")
    } else {
      if (length(jsonlite::fromJSON('{"links": "links", "nodes": "nodes", "all": "all"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"links": "links", "nodes": "nodes", "all": "all"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && popup_type %in% names(named_list)) {
          if (is.logical(popup_type)) {
            popup_type <- as.character(popup_type)
          }
          named_list_value <- unname(named_list[popup_type])[[1]]
          new_list$x$state$popup_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$intro_duration <- intro_duration
  new_list$x$state$intro_ease_range <- intro_ease_range
  new_list$x$state$transition_duration <- transition_duration
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
