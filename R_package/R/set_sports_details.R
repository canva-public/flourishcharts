#' Set sports chart details
#' @name set_sports_details
#' @param positions_type Position points by. Choices: auto, formation, data. Position points automatically based on your data, on a specific formation, or use X and Y coordinates. Flourish type hint: string, defaults to `NULL`
#' @param positions_scale_custom Position scale. Choices: auto, custom. "Auto" will set the position scale based on the minimum and maximum values in your data. "Custom" allows you to set a custom minimum and maximum. Flourish type hint: string, defaults to `NULL`
#' @param positions_x_min X min. Flourish type hint: number, defaults to `NULL`
#' @param positions_x_max X max. Flourish type hint: number, defaults to `NULL`
#' @param positions_y_min Y min. Flourish type hint: number, defaults to `NULL`
#' @param positions_y_max Y max. Flourish type hint: number, defaults to `NULL`
#' @param formation_type Formation type. Choices: preset, custom. Flourish type hint: string, defaults to `NULL`
#' @param formation Formation. Choices: 3-5-2, 4-3-3, 4-3-2-1, 4-4-2, 3-4-3, 4-2-3-1. Flourish type hint: string, defaults to `NULL`
#' @param formation_custom Custom formation. Use a "*"" for every player and a "-" for every space on the pitch. Flourish type hint: code, defaults to `NULL`
#' @param pitch_margin_top Top. Increases the gap between the top of the pitch and the first dot. Flourish type hint: number, defaults to `NULL`
#' @param pitch_margin_bottom Bottom. Increases the gap between the bottom of the pitch and the last dot. Flourish type hint: number, defaults to `NULL`
#' @param pitch_type Sport. Choices: football, basketball, tennis, custom. Flourish type hint: string, defaults to `NULL`
#' @param pitch_type_custom Choices: upload, svg. Flourish type hint: string, defaults to `NULL`
#' @param pitch_type_upload Upload. Flourish type hint: url, defaults to `NULL`
#' @param pitch_type_svg SVG. Flourish type hint: text, defaults to `NULL`
#' @param pitch_line_color Color. Flourish type hint: color, defaults to `NULL`
#' @param pitch_line_opacity Opacity. Opacity of the pitch marking lines. Flourish type hint: number, defaults to `NULL`
#' @param pitch_line_width Line width. Line width of the pitch markings in pixels. Flourish type hint: number, defaults to `NULL`
#' @param pitch_height Pitch height. As a percentage of the width. Flourish type hint: number, defaults to `NULL`
#' @param pitch_background Background color. Background color of the pitch. To change the color of the background outside of the pitch, instead slect Background color in the layout section. Flourish type hint: color, defaults to `NULL`
#' @param pitch_opacity Background opacity. Opacity of the pitch background. Flourish type hint: number, defaults to `NULL`
#' @param pitch_orientation Orientation. Choices: vertical, horizontal. Flourish type hint: string, defaults to `NULL`
#' @param pitch_crop Crop pitch. Choices: 1, custom. Show the full pitch, or only show a portion. Flourish type hint: string, defaults to `NULL`
#' @param pitch_crop_custom Custom. Flourish type hint: number, defaults to `NULL`
#' @param pitch_flip_dots Flip dots. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param pitch_flip_pitch Flip pitch. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param colors_categorical_palette Palette. Flourish type hint: colors, defaults to `NULL`
#' @param colors_categorical_extend Extend. Automatically generate additional colours when needed to avoid the palette colours being used more than once. Flourish type hint: boolean, defaults to `NULL`
#' @param colors_categorical_custom_palette Custom overrides. Enter the label name for which you wish to set the color, followed by a colon and the desired color value.  Colors can be set using Hex, RGB, color names or RGBA, if you want to set the opacity Multiple colors can be set using multiple lines. For example:  Party 1: red Party 2: #4455AA Party 3: rgb(30,168,26). Flourish type hint: text, defaults to `NULL`
#' @param colors_numeric_type Scale type. Choices: sequential, diverging. Flourish type hint: string, defaults to `NULL`
#' @param colors_binning Choices: `FALSE`, `TRUE`. In linear mode, the color scale will run as a smooth gradient between 2 colors. In binned mode, the gradient will be divided in smaller blocks. Flourish type hint: boolean, defaults to `NULL`
#' @param colors_bin_mode Binning mode. Choices: fixed, quantile, custom. Flourish type hint: string, defaults to `NULL`
#' @param colors_bin_count Number of bins. Flourish type hint: number, defaults to `NULL`
#' @param colors_bin_thresholds Custom thresholds. Enter your desired thresholds, separating them with a ";". For instance, "5;10;15".  Bins form as follows:  From the datas minimum value (domain minimum) up to the first threshold.  Between consecutive thresholds.  From the last threshold to the datas maximum value (domain maximum).   For "5;10;15", youll get four bins based on your datas range. Flourish type hint: string, defaults to `NULL`
#' @param colors_sequential_palette Palette. Flourish type hint: string, defaults to `NULL`
#' @param colors_sequential_reverse Reverse. Flourish type hint: boolean, defaults to `NULL`
#' @param colors_sequential_custom_min Minimum color. Flourish type hint: color, defaults to `NULL`
#' @param colors_sequential_custom_max Maximum color. Flourish type hint: color, defaults to `NULL`
#' @param colors_sequential_color_space Color space. Choices: rgb, lab, hcl, hsl. Flourish type hint: string, defaults to `NULL`
#' @param colors_sequential_custom_domain Domain. Choices: `FALSE`, `TRUE`. Flourish type hint: boolean, defaults to `NULL`
#' @param colors_sequential_domain_min Min. Flourish type hint: number, defaults to `NULL`
#' @param colors_sequential_domain_max Max. Flourish type hint: number, defaults to `NULL`
#' @param colors_diverging_palette Palette. Flourish type hint: string, defaults to `NULL`
#' @param colors_diverging_reverse Reverse. Flourish type hint: boolean, defaults to `NULL`
#' @param colors_diverging_custom_min Minimum color. Flourish type hint: color, defaults to `NULL`
#' @param colors_diverging_custom_mid Midpoint color. Flourish type hint: color, defaults to `NULL`
#' @param colors_diverging_custom_max Maximum color. Flourish type hint: color, defaults to `NULL`
#' @param colors_diverging_color_space Color space. Choices: rgb, lab, hcl, hsl. Flourish type hint: string, defaults to `NULL`
#' @param colors_diverging_custom_domain Domain. Choices: `FALSE`, `TRUE`. Flourish type hint: boolean, defaults to `NULL`
#' @param colors_diverging_domain_min Min. Flourish type hint: number, defaults to `NULL`
#' @param colors_diverging_domain_mid Mid. Flourish type hint: number, defaults to `NULL`
#' @param colors_diverging_domain_max Max. Flourish type hint: number, defaults to `NULL`
#' @param dot_opacity Opacity. Opacity of the dots. Flourish type hint: number, defaults to `NULL`
#' @param dot_size Size. Choices: 1.3, 2.5, 6, custom. Flourish type hint: string, defaults to `NULL`
#' @param dot_size_custom Custom. Flourish type hint: number, defaults to `NULL`
#' @param dot_border Border size. Choices: 0, 0.2, 0.5, custom. Flourish type hint: string, defaults to `NULL`
#' @param dot_border_custom Custom. Flourish type hint: number, defaults to `NULL`
#' @param dot_border_color Color. Outline color of the dots. Flourish type hint: color, defaults to `NULL`
#' @param label_mode Labels. Choices: `TRUE`, `FALSE`. Labels will always be hidden if there are more than 200 data points. Flourish type hint: boolean, defaults to `NULL`
#' @param label_color Color. Label color. Defaults to layout font color settings if not set. Flourish type hint: color, defaults to `NULL`
#' @param label_weight Weight. Choices: normal, bold. Flourish type hint: string, defaults to `NULL`
#' @param label_size Size. Choices: 0.8, 1, 1.2, custom. Sizing unit is relative to root font size. Flourish type hint: string, defaults to `NULL`
#' @param label_size_custom Custom. Specify a custom responsive font size. Best results will be with values between 1.2 and 3. Flourish type hint: number, defaults to `NULL`
#' @param show_squad_numbers Show Squad Numbers. Optional squad number to appear within dot. Flourish type hint: boolean, defaults to `NULL`
#' @param squad_number_size Size Mode. Choices: 1.1, 1.4, 1.7, custom. Resizes the font size as a proportion of the dots radius. Flourish type hint: string, defaults to `NULL`
#' @param squad_number_size_custom Custom. Specify a custom responsive font size. Best results are betwen 0.8 and 2. Flourish type hint: number, defaults to `NULL`
#' @param squad_number_weight Weight. Choices: normal, bold. Flourish type hint: string, defaults to `NULL`
#' @param squad_number_color Color. Flourish type hint: color, defaults to `NULL`
#' @param squad_number_vertical_adjust Adjust vertical spacing. Adjust vertical centering for custom fonts. Flourish type hint: number, defaults to `NULL`
#' @param image_contrast Contrast. Flourish type hint: number, defaults to `NULL`
#' @param image_brightness Brightness. Flourish type hint: number, defaults to `NULL`
#' @param image_saturation Saturation. Flourish type hint: number, defaults to `NULL`
#' @param image_blend_mode Blend mode. Choices: normal, multiply, screen, overlay, darken, lighten. Flourish type hint: string, defaults to `NULL`
#' @param animation_target Animate. Choices: position, opacity, both. Choose whether you want to animate the animate the positions or fade, for example when changing the filter, or drag players positions in the story editor. Flourish type hint: string, defaults to `NULL`
#' @param animation_duration Duration. Specified in seconds. Flourish type hint: number, defaults to `NULL`
#' @param trail Trail lines. Choices: `FALSE`, `TRUE`. Show trail lines when a point is dragged to a new position. Only visible in the story editor. Flourish type hint: boolean, defaults to `NULL`
#' @param trail_color Color. Flourish type hint: color, defaults to `NULL`
#' @param trail_opacity Opacity. Flourish type hint: number, defaults to `NULL`
#' @param trail_size Size. Choices: 0.2, 0.5, custom. Flourish type hint: string, defaults to `NULL`
#' @param trail_size_custom Custom. Proportional to the smallest point size. Flourish type hint: number, defaults to `NULL`
#' @param trail_style Style. Choices: solid, dotted. Flourish type hint: string, defaults to `NULL`
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
#' @param chart_filter_controls_container_alignment Alignment. Choices: start, center, end. Flourish type hint: string, defaults to `NULL`
#' @param chart_filter_controls_container_controls_spacing Spacing. The space between controls, like dropdowns and adjacent button sets, in em units. Flourish type hint: number, defaults to `NULL`
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
#' @param filter_include_all Include "all". Include "All" in the filter dropdown. Flourish type hint: boolean, defaults to `NULL`
#' @param filter_all_label All label. Flourish type hint: string, defaults to `NULL`
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
#'   flourish(chart_type = "sports", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_sports_data(gapminder) |> 
#'   set_sports_details()
#' )
#' @export

set_sports_details <- function(
    .,
    positions_type = NULL,
    positions_scale_custom = NULL,
    positions_x_min = NULL,
    positions_x_max = NULL,
    positions_y_min = NULL,
    positions_y_max = NULL,
    formation_type = NULL,
    formation = NULL,
    formation_custom = NULL,
    pitch_margin_top = NULL,
    pitch_margin_bottom = NULL,
    pitch_type = NULL,
    pitch_type_custom = NULL,
    pitch_type_upload = NULL,
    pitch_type_svg = NULL,
    pitch_line_color = NULL,
    pitch_line_opacity = NULL,
    pitch_line_width = NULL,
    pitch_height = NULL,
    pitch_background = NULL,
    pitch_opacity = NULL,
    pitch_orientation = NULL,
    pitch_crop = NULL,
    pitch_crop_custom = NULL,
    pitch_flip_dots = NULL,
    pitch_flip_pitch = NULL,
    colors_categorical_palette = NULL,
    colors_categorical_extend = NULL,
    colors_categorical_custom_palette = NULL,
    colors_numeric_type = NULL,
    colors_binning = NULL,
    colors_bin_mode = NULL,
    colors_bin_count = NULL,
    colors_bin_thresholds = NULL,
    colors_sequential_palette = NULL,
    colors_sequential_reverse = NULL,
    colors_sequential_custom_min = NULL,
    colors_sequential_custom_max = NULL,
    colors_sequential_color_space = NULL,
    colors_sequential_custom_domain = NULL,
    colors_sequential_domain_min = NULL,
    colors_sequential_domain_max = NULL,
    colors_diverging_palette = NULL,
    colors_diverging_reverse = NULL,
    colors_diverging_custom_min = NULL,
    colors_diverging_custom_mid = NULL,
    colors_diverging_custom_max = NULL,
    colors_diverging_color_space = NULL,
    colors_diverging_custom_domain = NULL,
    colors_diverging_domain_min = NULL,
    colors_diverging_domain_mid = NULL,
    colors_diverging_domain_max = NULL,
    dot_opacity = NULL,
    dot_size = NULL,
    dot_size_custom = NULL,
    dot_border = NULL,
    dot_border_custom = NULL,
    dot_border_color = NULL,
    label_mode = NULL,
    label_color = NULL,
    label_weight = NULL,
    label_size = NULL,
    label_size_custom = NULL,
    show_squad_numbers = NULL,
    squad_number_size = NULL,
    squad_number_size_custom = NULL,
    squad_number_weight = NULL,
    squad_number_color = NULL,
    squad_number_vertical_adjust = NULL,
    image_contrast = NULL,
    image_brightness = NULL,
    image_saturation = NULL,
    image_blend_mode = NULL,
    animation_target = NULL,
    animation_duration = NULL,
    trail = NULL,
    trail_color = NULL,
    trail_opacity = NULL,
    trail_size = NULL,
    trail_size_custom = NULL,
    trail_style = NULL,
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
    chart_filter_controls_container_alignment = NULL,
    chart_filter_controls_container_controls_spacing = NULL,
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
    filter_include_all = NULL,
    filter_all_label = NULL,
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
  details_error(., "sports")

  old_list <- .
  new_list <- list()

  if (isTRUE(old_list$x$template != "@flourish/sports")) {
    stop("`set_sports_details()` is not supported for this chart type.")
  }
  list_positions_type <- c("auto", "formation", "data", NULL)
  if (!is.null(positions_type)) {
    if (!positions_type %in% list_positions_type) {
      stop("`positions_type` must be one of: c('auto', 'formation', 'data')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "formation": "formation", "data": "data"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "formation": "formation", "data": "data"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && positions_type %in% names(named_list)) {
          if (is.logical(positions_type)) {
            positions_type <- as.character(positions_type)
          }
          named_list_value <- unname(named_list[positions_type])[[1]]
          new_list$x$state$positions_type <- named_list_value
        }
      }
    }
  }
  list_positions_scale_custom <- c("auto", "custom", NULL)
  if (!is.null(positions_scale_custom)) {
    if (!positions_scale_custom %in% list_positions_scale_custom) {
      stop("`positions_scale_custom` must be one of: c('auto', 'custom')")
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
        if (length(named_list) > 1 && positions_scale_custom %in% names(named_list)) {
          if (is.logical(positions_scale_custom)) {
            positions_scale_custom <- as.character(positions_scale_custom)
          }
          named_list_value <- unname(named_list[positions_scale_custom])[[1]]
          new_list$x$state$positions_scale_custom <- named_list_value
        }
      }
    }
  }
  new_list$x$state$positions_x_min <- positions_x_min
  new_list$x$state$positions_x_max <- positions_x_max
  new_list$x$state$positions_y_min <- positions_y_min
  new_list$x$state$positions_y_max <- positions_y_max
  list_formation_type <- c("preset", "custom", NULL)
  if (!is.null(formation_type)) {
    if (!formation_type %in% list_formation_type) {
      stop("`formation_type` must be one of: c('preset', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"preset": "preset", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"preset": "preset", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && formation_type %in% names(named_list)) {
          if (is.logical(formation_type)) {
            formation_type <- as.character(formation_type)
          }
          named_list_value <- unname(named_list[formation_type])[[1]]
          new_list$x$state$formation_type <- named_list_value
        }
      }
    }
  }
  list_formation <- c("3-5-2", "4-3-3", "4-3-2-1", "4-4-2", "3-4-3", "4-2-3-1", NULL)
  if (!is.null(formation)) {
    if (!formation %in% list_formation) {
      stop("`formation` must be one of: c('3-5-2', '4-3-3', '4-3-2-1', '4-4-2', '3-4-3', '4-2-3-1')")
    } else {
      if (length(jsonlite::fromJSON('{"3-5-2": "--*--\n-----\n-***-\n*---*\n-----\n-*-*-\n--*--\n-----\n-*-*-", "4-3-3": "--*--\n-----\n-----\n-----\n-----\n****\n-----\n-----\n-----\n-----\n-*--*--*-\n-----\n-----\n-----\n-*-*-\n-----\n-*-", "4-3-2-1": "--*--\n-*-*-\n*---*\n--*--\n-*-*-\n*---*\n--*--", "4-4-2": "-*-\n-\n-**-\n*--*\n----\n-**-\n*--*\n-\n-\n-*--*-", "3-4-3": "-*-\n--\n-*-*-*-\n--\n*-*-*-*\n--\n-*---*-\n-*-\n--", "4-2-3-1": "-*-\n-\n****\n-\n-*-*-\n-\n-*----*-\n--*--\n-\n-*-\n-"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"3-5-2": "--*--\n-----\n-***-\n*---*\n-----\n-*-*-\n--*--\n-----\n-*-*-", "4-3-3": "--*--\n-----\n-----\n-----\n-----\n****\n-----\n-----\n-----\n-----\n-*--*--*-\n-----\n-----\n-----\n-*-*-\n-----\n-*-", "4-3-2-1": "--*--\n-*-*-\n*---*\n--*--\n-*-*-\n*---*\n--*--", "4-4-2": "-*-\n-\n-**-\n*--*\n----\n-**-\n*--*\n-\n-\n-*--*-", "3-4-3": "-*-\n--\n-*-*-*-\n--\n*-*-*-*\n--\n-*---*-\n-*-\n--", "4-2-3-1": "-*-\n-\n****\n-\n-*-*-\n-\n-*----*-\n--*--\n-\n-*-\n-"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && formation %in% names(named_list)) {
          if (is.logical(formation)) {
            formation <- as.character(formation)
          }
          named_list_value <- unname(named_list[formation])[[1]]
          new_list$x$state$formation <- named_list_value
        }
      }
    }
  }
  if (length(formation_custom) > 1) {
    new_list$x$state$formation_custom <- paste(formation_custom, collapse = "\n")
  } else {
    new_list$x$state$formation_custom <- formation_custom
  }

  new_list$x$state$pitch$margin_top <- pitch_margin_top
  new_list$x$state$pitch$margin_bottom <- pitch_margin_bottom
  list_pitch_type <- c("football", "basketball", "tennis", "custom", NULL)
  if (!is.null(pitch_type)) {
    if (!pitch_type %in% list_pitch_type) {
      stop("`pitch_type` must be one of: c('football', 'basketball', 'tennis', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"football": "football", "basketball": "basketball", "tennis": "tennis", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"football": "football", "basketball": "basketball", "tennis": "tennis", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && pitch_type %in% names(named_list)) {
          if (is.logical(pitch_type)) {
            pitch_type <- as.character(pitch_type)
          }
          named_list_value <- unname(named_list[pitch_type])[[1]]
          new_list$x$state$pitch$type <- named_list_value
        }
      }
    }
  }
  list_pitch_type_custom <- c("upload", "svg", NULL)
  if (!is.null(pitch_type_custom)) {
    if (!pitch_type_custom %in% list_pitch_type_custom) {
      stop("`pitch_type_custom` must be one of: c('upload', 'svg')")
    } else {
      if (length(jsonlite::fromJSON('{"upload": "upload", "svg": "svg"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"upload": "upload", "svg": "svg"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && pitch_type_custom %in% names(named_list)) {
          if (is.logical(pitch_type_custom)) {
            pitch_type_custom <- as.character(pitch_type_custom)
          }
          named_list_value <- unname(named_list[pitch_type_custom])[[1]]
          new_list$x$state$pitch$type_custom <- named_list_value
        }
      }
    }
  }
  new_list$x$state$pitch$type_upload <- pitch_type_upload
  if (length(pitch_type_svg) > 1) {
    new_list$x$state$pitch$type_svg <- paste(pitch_type_svg, collapse = "\n")
  } else {
    new_list$x$state$pitch$type_svg <- pitch_type_svg
  }

  new_list$x$state$pitch$line_color <- pitch_line_color
  new_list$x$state$pitch$line_opacity <- pitch_line_opacity
  new_list$x$state$pitch$line_width <- pitch_line_width
  new_list$x$state$pitch$height <- pitch_height
  new_list$x$state$pitch$background <- pitch_background
  new_list$x$state$pitch$opacity <- pitch_opacity
  list_pitch_orientation <- c("vertical", "horizontal", NULL)
  if (!is.null(pitch_orientation)) {
    if (!pitch_orientation %in% list_pitch_orientation) {
      stop("`pitch_orientation` must be one of: c('vertical', 'horizontal')")
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
        if (length(named_list) > 1 && pitch_orientation %in% names(named_list)) {
          if (is.logical(pitch_orientation)) {
            pitch_orientation <- as.character(pitch_orientation)
          }
          named_list_value <- unname(named_list[pitch_orientation])[[1]]
          new_list$x$state$pitch$orientation <- named_list_value
        }
      }
    }
  }
  list_pitch_crop <- c("1", "custom", NULL)
  if (!is.null(pitch_crop)) {
    if (!pitch_crop %in% list_pitch_crop) {
      stop("`pitch_crop` must be one of: c('1', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"1": "1", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"1": "1", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && pitch_crop %in% names(named_list)) {
          if (is.logical(pitch_crop)) {
            pitch_crop <- as.character(pitch_crop)
          }
          named_list_value <- unname(named_list[pitch_crop])[[1]]
          new_list$x$state$pitch$crop <- named_list_value
        }
      }
    }
  }
  new_list$x$state$pitch$crop_custom <- pitch_crop_custom
  list_pitch_flip_dots <- c(TRUE, FALSE, NULL)
  if (!is.null(pitch_flip_dots)) {
    if (!pitch_flip_dots %in% list_pitch_flip_dots) {
      stop("`pitch_flip_dots` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && pitch_flip_dots %in% names(named_list)) {
          if (is.logical(pitch_flip_dots)) {
            pitch_flip_dots <- as.character(pitch_flip_dots)
          }
          named_list_value <- unname(named_list[pitch_flip_dots])[[1]]
          new_list$x$state$pitch$flip_dots <- named_list_value
        }
      }
    }
  }
  list_pitch_flip_pitch <- c(TRUE, FALSE, NULL)
  if (!is.null(pitch_flip_pitch)) {
    if (!pitch_flip_pitch %in% list_pitch_flip_pitch) {
      stop("`pitch_flip_pitch` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && pitch_flip_pitch %in% names(named_list)) {
          if (is.logical(pitch_flip_pitch)) {
            pitch_flip_pitch <- as.character(pitch_flip_pitch)
          }
          named_list_value <- unname(named_list[pitch_flip_pitch])[[1]]
          new_list$x$state$pitch$flip_pitch <- named_list_value
        }
      }
    }
  }
  if (length(colors_categorical_palette) > 1) {
    new_list$x$state$colors$categorical_palette <- paste(colors_categorical_palette, collapse = "\n")
  } else {
    new_list$x$state$colors$categorical_palette <- colors_categorical_palette
  }

  new_list$x$state$colors$categorical_extend <- colors_categorical_extend
  if (length(colors_categorical_custom_palette) > 1) {
    new_list$x$state$colors$categorical_custom_palette <- paste(colors_categorical_custom_palette, collapse = "\n")
  } else {
    new_list$x$state$colors$categorical_custom_palette <- colors_categorical_custom_palette
  }

  list_colors_numeric_type <- c("sequential", "diverging", NULL)
  if (!is.null(colors_numeric_type)) {
    if (!colors_numeric_type %in% list_colors_numeric_type) {
      stop("`colors_numeric_type` must be one of: c('sequential', 'diverging')")
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
        if (length(named_list) > 1 && colors_numeric_type %in% names(named_list)) {
          if (is.logical(colors_numeric_type)) {
            colors_numeric_type <- as.character(colors_numeric_type)
          }
          named_list_value <- unname(named_list[colors_numeric_type])[[1]]
          new_list$x$state$colors$numeric_type <- named_list_value
        }
      }
    }
  }
  list_colors_binning <- c(FALSE, TRUE, NULL)
  if (!is.null(colors_binning)) {
    if (!colors_binning %in% list_colors_binning) {
      stop("`colors_binning` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && colors_binning %in% names(named_list)) {
          if (is.logical(colors_binning)) {
            colors_binning <- as.character(colors_binning)
          }
          named_list_value <- unname(named_list[colors_binning])[[1]]
          new_list$x$state$colors$binning <- named_list_value
        }
      }
    }
  }
  list_colors_bin_mode <- c("fixed", "quantile", "custom", NULL)
  if (!is.null(colors_bin_mode)) {
    if (!colors_bin_mode %in% list_colors_bin_mode) {
      stop("`colors_bin_mode` must be one of: c('fixed', 'quantile', 'custom')")
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
        if (length(named_list) > 1 && colors_bin_mode %in% names(named_list)) {
          if (is.logical(colors_bin_mode)) {
            colors_bin_mode <- as.character(colors_bin_mode)
          }
          named_list_value <- unname(named_list[colors_bin_mode])[[1]]
          new_list$x$state$colors$bin_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$colors$bin_count <- colors_bin_count
  new_list$x$state$colors$bin_thresholds <- colors_bin_thresholds
  new_list$x$state$colors$sequential_palette <- colors_sequential_palette
  new_list$x$state$colors$sequential_reverse <- colors_sequential_reverse
  new_list$x$state$colors$sequential_custom_min <- colors_sequential_custom_min
  new_list$x$state$colors$sequential_custom_max <- colors_sequential_custom_max
  list_colors_sequential_color_space <- c("rgb", "lab", "hcl", "hsl", NULL)
  if (!is.null(colors_sequential_color_space)) {
    if (!colors_sequential_color_space %in% list_colors_sequential_color_space) {
      stop("`colors_sequential_color_space` must be one of: c('rgb', 'lab', 'hcl', 'hsl')")
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
        if (length(named_list) > 1 && colors_sequential_color_space %in% names(named_list)) {
          if (is.logical(colors_sequential_color_space)) {
            colors_sequential_color_space <- as.character(colors_sequential_color_space)
          }
          named_list_value <- unname(named_list[colors_sequential_color_space])[[1]]
          new_list$x$state$colors$sequential_color_space <- named_list_value
        }
      }
    }
  }
  list_colors_sequential_custom_domain <- c(FALSE, TRUE, NULL)
  if (!is.null(colors_sequential_custom_domain)) {
    if (!colors_sequential_custom_domain %in% list_colors_sequential_custom_domain) {
      stop("`colors_sequential_custom_domain` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && colors_sequential_custom_domain %in% names(named_list)) {
          if (is.logical(colors_sequential_custom_domain)) {
            colors_sequential_custom_domain <- as.character(colors_sequential_custom_domain)
          }
          named_list_value <- unname(named_list[colors_sequential_custom_domain])[[1]]
          new_list$x$state$colors$sequential_custom_domain <- named_list_value
        }
      }
    }
  }
  new_list$x$state$colors$sequential_domain_min <- colors_sequential_domain_min
  new_list$x$state$colors$sequential_domain_max <- colors_sequential_domain_max
  new_list$x$state$colors$diverging_palette <- colors_diverging_palette
  new_list$x$state$colors$diverging_reverse <- colors_diverging_reverse
  new_list$x$state$colors$diverging_custom_min <- colors_diverging_custom_min
  new_list$x$state$colors$diverging_custom_mid <- colors_diverging_custom_mid
  new_list$x$state$colors$diverging_custom_max <- colors_diverging_custom_max
  list_colors_diverging_color_space <- c("rgb", "lab", "hcl", "hsl", NULL)
  if (!is.null(colors_diverging_color_space)) {
    if (!colors_diverging_color_space %in% list_colors_diverging_color_space) {
      stop("`colors_diverging_color_space` must be one of: c('rgb', 'lab', 'hcl', 'hsl')")
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
        if (length(named_list) > 1 && colors_diverging_color_space %in% names(named_list)) {
          if (is.logical(colors_diverging_color_space)) {
            colors_diverging_color_space <- as.character(colors_diverging_color_space)
          }
          named_list_value <- unname(named_list[colors_diverging_color_space])[[1]]
          new_list$x$state$colors$diverging_color_space <- named_list_value
        }
      }
    }
  }
  list_colors_diverging_custom_domain <- c(FALSE, TRUE, NULL)
  if (!is.null(colors_diverging_custom_domain)) {
    if (!colors_diverging_custom_domain %in% list_colors_diverging_custom_domain) {
      stop("`colors_diverging_custom_domain` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && colors_diverging_custom_domain %in% names(named_list)) {
          if (is.logical(colors_diverging_custom_domain)) {
            colors_diverging_custom_domain <- as.character(colors_diverging_custom_domain)
          }
          named_list_value <- unname(named_list[colors_diverging_custom_domain])[[1]]
          new_list$x$state$colors$diverging_custom_domain <- named_list_value
        }
      }
    }
  }
  new_list$x$state$colors$diverging_domain_min <- colors_diverging_domain_min
  new_list$x$state$colors$diverging_domain_mid <- colors_diverging_domain_mid
  new_list$x$state$colors$diverging_domain_max <- colors_diverging_domain_max
  new_list$x$state$dot_opacity <- dot_opacity
  list_dot_size <- c("1.3", "2.5", "6", "custom", NULL)
  if (!is.null(dot_size)) {
    if (!dot_size %in% list_dot_size) {
      stop("`dot_size` must be one of: c('1.3', '2.5', '6', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"1.3": "1.3", "2.5": "2.5", "6": "6", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"1.3": "1.3", "2.5": "2.5", "6": "6", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && dot_size %in% names(named_list)) {
          if (is.logical(dot_size)) {
            dot_size <- as.character(dot_size)
          }
          named_list_value <- unname(named_list[dot_size])[[1]]
          new_list$x$state$dot_size <- named_list_value
        }
      }
    }
  }
  new_list$x$state$dot_size_custom <- dot_size_custom
  list_dot_border <- c("0", "0.2", "0.5", "custom", NULL)
  if (!is.null(dot_border)) {
    if (!dot_border %in% list_dot_border) {
      stop("`dot_border` must be one of: c('0', '0.2', '0.5', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"0": "0", "0.2": "0.2", "0.5": "0.5", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"0": "0", "0.2": "0.2", "0.5": "0.5", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && dot_border %in% names(named_list)) {
          if (is.logical(dot_border)) {
            dot_border <- as.character(dot_border)
          }
          named_list_value <- unname(named_list[dot_border])[[1]]
          new_list$x$state$dot_border <- named_list_value
        }
      }
    }
  }
  new_list$x$state$dot_border_custom <- dot_border_custom
  new_list$x$state$dot_border_color <- dot_border_color
  list_label_mode <- c(TRUE, FALSE, NULL)
  if (!is.null(label_mode)) {
    if (!label_mode %in% list_label_mode) {
      stop("`label_mode` must be one of: c(TRUE, FALSE)")
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
  new_list$x$state$label_color <- label_color
  list_label_weight <- c("normal", "bold", NULL)
  if (!is.null(label_weight)) {
    if (!label_weight %in% list_label_weight) {
      stop("`label_weight` must be one of: c('normal', 'bold')")
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
        if (length(named_list) > 1 && label_weight %in% names(named_list)) {
          if (is.logical(label_weight)) {
            label_weight <- as.character(label_weight)
          }
          named_list_value <- unname(named_list[label_weight])[[1]]
          new_list$x$state$label_weight <- named_list_value
        }
      }
    }
  }
  list_label_size <- c("0.8", "1", "1.2", "custom", NULL)
  if (!is.null(label_size)) {
    if (!label_size %in% list_label_size) {
      stop("`label_size` must be one of: c('0.8', '1', '1.2', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"0.8": "0.8", "1": "1", "1.2": "1.2", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"0.8": "0.8", "1": "1", "1.2": "1.2", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && label_size %in% names(named_list)) {
          if (is.logical(label_size)) {
            label_size <- as.character(label_size)
          }
          named_list_value <- unname(named_list[label_size])[[1]]
          new_list$x$state$label_size <- named_list_value
        }
      }
    }
  }
  new_list$x$state$label_size_custom <- label_size_custom
  new_list$x$state$show_squad_numbers <- show_squad_numbers
  list_squad_number_size <- c("1.1", "1.4", "1.7", "custom", NULL)
  if (!is.null(squad_number_size)) {
    if (!squad_number_size %in% list_squad_number_size) {
      stop("`squad_number_size` must be one of: c('1.1', '1.4', '1.7', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"1.1": "1.1", "1.4": "1.4", "1.7": "1.7", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"1.1": "1.1", "1.4": "1.4", "1.7": "1.7", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && squad_number_size %in% names(named_list)) {
          if (is.logical(squad_number_size)) {
            squad_number_size <- as.character(squad_number_size)
          }
          named_list_value <- unname(named_list[squad_number_size])[[1]]
          new_list$x$state$squad_number_size <- named_list_value
        }
      }
    }
  }
  new_list$x$state$squad_number_size_custom <- squad_number_size_custom
  list_squad_number_weight <- c("normal", "bold", NULL)
  if (!is.null(squad_number_weight)) {
    if (!squad_number_weight %in% list_squad_number_weight) {
      stop("`squad_number_weight` must be one of: c('normal', 'bold')")
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
        if (length(named_list) > 1 && squad_number_weight %in% names(named_list)) {
          if (is.logical(squad_number_weight)) {
            squad_number_weight <- as.character(squad_number_weight)
          }
          named_list_value <- unname(named_list[squad_number_weight])[[1]]
          new_list$x$state$squad_number_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$squad_number_color <- squad_number_color
  new_list$x$state$squad_number_vertical_adjust <- squad_number_vertical_adjust
  new_list$x$state$image_contrast <- image_contrast
  new_list$x$state$image_brightness <- image_brightness
  new_list$x$state$image_saturation <- image_saturation
  list_image_blend_mode <- c("normal", "multiply", "screen", "overlay", "darken", "lighten", NULL)
  if (!is.null(image_blend_mode)) {
    if (!image_blend_mode %in% list_image_blend_mode) {
      stop("`image_blend_mode` must be one of: c('normal', 'multiply', 'screen', 'overlay', 'darken', 'lighten')")
    } else {
      if (length(jsonlite::fromJSON('{"normal": "normal", "multiply": "multiply", "screen": "screen", "overlay": "overlay", "darken": "darken", "lighten": "lighten"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"normal": "normal", "multiply": "multiply", "screen": "screen", "overlay": "overlay", "darken": "darken", "lighten": "lighten"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && image_blend_mode %in% names(named_list)) {
          if (is.logical(image_blend_mode)) {
            image_blend_mode <- as.character(image_blend_mode)
          }
          named_list_value <- unname(named_list[image_blend_mode])[[1]]
          new_list$x$state$image_blend_mode <- named_list_value
        }
      }
    }
  }
  list_animation_target <- c("position", "opacity", "both", NULL)
  if (!is.null(animation_target)) {
    if (!animation_target %in% list_animation_target) {
      stop("`animation_target` must be one of: c('position', 'opacity', 'both')")
    } else {
      if (length(jsonlite::fromJSON('{"position": "position", "opacity": "opacity", "both": "both"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"position": "position", "opacity": "opacity", "both": "both"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && animation_target %in% names(named_list)) {
          if (is.logical(animation_target)) {
            animation_target <- as.character(animation_target)
          }
          named_list_value <- unname(named_list[animation_target])[[1]]
          new_list$x$state$animation_target <- named_list_value
        }
      }
    }
  }
  new_list$x$state$animation_duration <- animation_duration
  list_trail <- c(FALSE, TRUE, NULL)
  if (!is.null(trail)) {
    if (!trail %in% list_trail) {
      stop("`trail` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && trail %in% names(named_list)) {
          if (is.logical(trail)) {
            trail <- as.character(trail)
          }
          named_list_value <- unname(named_list[trail])[[1]]
          new_list$x$state$trail <- named_list_value
        }
      }
    }
  }
  new_list$x$state$trail_color <- trail_color
  new_list$x$state$trail_opacity <- trail_opacity
  list_trail_size <- c("0.2", "0.5", "custom", NULL)
  if (!is.null(trail_size)) {
    if (!trail_size %in% list_trail_size) {
      stop("`trail_size` must be one of: c('0.2', '0.5', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"0.2": "0.2", "0.5": "0.5", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"0.2": "0.2", "0.5": "0.5", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && trail_size %in% names(named_list)) {
          if (is.logical(trail_size)) {
            trail_size <- as.character(trail_size)
          }
          named_list_value <- unname(named_list[trail_size])[[1]]
          new_list$x$state$trail_size <- named_list_value
        }
      }
    }
  }
  new_list$x$state$trail_size_custom <- trail_size_custom
  list_trail_style <- c("solid", "dotted", NULL)
  if (!is.null(trail_style)) {
    if (!trail_style %in% list_trail_style) {
      stop("`trail_style` must be one of: c('solid', 'dotted')")
    } else {
      if (length(jsonlite::fromJSON('{"solid": "solid", "dotted": "dotted"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"solid": "solid", "dotted": "dotted"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && trail_style %in% names(named_list)) {
          if (is.logical(trail_style)) {
            trail_style <- as.character(trail_style)
          }
          named_list_value <- unname(named_list[trail_style])[[1]]
          new_list$x$state$trail_style <- named_list_value
        }
      }
    }
  }
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
  new_list$x$state$filter_include_all <- filter_include_all
  new_list$x$state$filter_all_label <- filter_all_label
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
