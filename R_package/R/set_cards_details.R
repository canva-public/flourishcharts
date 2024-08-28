#' Set cards chart details
#' @name set_cards_details
#' @param mode View mode. Choices: grid, carousel. Flourish type hint: string, defaults to `NULL`
#' @param carousel_channel_background Channel color. Flourish type hint: color, defaults to `NULL`
#' @param carousel_bar_background Bar color. Flourish type hint: color, defaults to `NULL`
#' @param carousel_channel_height Channel height. Flourish type hint: number, defaults to `NULL`
#' @param autoplay_enabled Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param autoplay_duration Duration. Flourish type hint: number, defaults to `NULL`
#' @param autoplay_loop Loop. Flourish type hint: boolean, defaults to `NULL`
#' @param autoplay_pause_when Pause on interaction. Choices: never, hover, popup, hover_popup. Flourish type hint: string, defaults to `NULL`
#' @param autoplay_btn_visible Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param autoplay_btn_position Position. Choices: top_left, top_right, bottom_left, bottom_right. Flourish type hint: string, defaults to `NULL`
#' @param autoplay_btn_size Size. Flourish type hint: number, defaults to `NULL`
#' @param autoplay_btn_background Background. Flourish type hint: color, defaults to `NULL`
#' @param autoplay_btn_opacity Opacity. Flourish type hint: number, defaults to `NULL`
#' @param autoplay_btn_color Icon. Flourish type hint: color, defaults to `NULL`
#' @param card_layout Card layout. Choices: portrait, landscape, absolute. Flourish type hint: string, defaults to `NULL`
#' @param card_order Card structure. Choices: stack-default, stack-2, stack-3, stack-4. Flourish type hint: string, defaults to `NULL`
#' @param card_width_portrait Width. Flourish type hint: number, defaults to `NULL`
#' @param card_width_landscape Width. Flourish type hint: number, defaults to `NULL`
#' @param card_width_stretch Stretch cards to fill. Flourish type hint: boolean, defaults to `NULL`
#' @param card_width_stretch_percent Stretch. How much the cards are allowed to scale up to fill the space, in %. When too much stretch would be required, cards are scaled down to add a column to the grid. Flourish type hint: number, defaults to `NULL`
#' @param card_padding_top Top. Flourish type hint: number, defaults to `NULL`
#' @param card_padding_right Right. Flourish type hint: number, defaults to `NULL`
#' @param card_padding_bottom Bottom. Flourish type hint: number, defaults to `NULL`
#' @param card_padding_left Left. Flourish type hint: number, defaults to `NULL`
#' @param card_horizontal_margin Horizontal. Flourish type hint: number, defaults to `NULL`
#' @param card_vertical_margin Vertical. Flourish type hint: number, defaults to `NULL`
#' @param card_border_color Border color. Flourish type hint: color, defaults to `NULL`
#' @param card_border_width Weight. Flourish type hint: number, defaults to `NULL`
#' @param card_shape Shape. Choices: circle, square. Flourish type hint: string, defaults to `NULL`
#' @param card_radius Roundness. Flourish type hint: number, defaults to `NULL`
#' @param card_shadow Shadow behind card. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param card_shadow_color Color. Flourish type hint: color, defaults to `NULL`
#' @param card_shadow_blur Blur. Flourish type hint: number, defaults to `NULL`
#' @param template_customise Customize card HTML. Flourish type hint: boolean, defaults to `NULL`
#' @param template_simple_custom Custom HTML. Custom HTML can be used for flippable cards, text on hover, embedded Flourish charts, etc.  Refer to columns using `{{column_name}}` If a column name has spaces, wrap in square brackets, like `{{column name}}`  If a column includes HTML, prevent escaping HTML by wrapping in triple curly brackets. For example: `{{{column_name}}}`  Use handlebar syntax for conditions, etc. Flourish type hint: html, defaults to `NULL`
#' @param content_vertical_align Vertical position. Choices: center, flex-start, flex-end. Flourish type hint: string, defaults to `NULL`
#' @param content_horizontal_padding Horizontal space. Flourish type hint: number, defaults to `NULL`
#' @param title_color Color. Flourish type hint: color, defaults to `NULL`
#' @param title_fontsize Font size. Flourish type hint: number, defaults to `NULL`
#' @param title_weight Weight. Choices: italic, normal, bold. Flourish type hint: string, defaults to `NULL`
#' @param title_advanced Advanced settings. Flourish type hint: boolean, defaults to `NULL`
#' @param title_opacity Opacity. Flourish type hint: number, defaults to `NULL`
#' @param title_space_above Space above. Flourish type hint: number, defaults to `NULL`
#' @param title_space_below Space below. Flourish type hint: number, defaults to `NULL`
#' @param title_lineheight Line height. Flourish type hint: number, defaults to `NULL`
#' @param title_minheight Min height. Flourish type hint: number, defaults to `NULL`
#' @param title_align Align. Choices: start, center, end. Flourish type hint: string, defaults to `NULL`
#' @param subtitle_color Color. Flourish type hint: color, defaults to `NULL`
#' @param subtitle_fontsize Font size. Flourish type hint: number, defaults to `NULL`
#' @param subtitle_weight Weight. Choices: italic, normal, bold. Flourish type hint: string, defaults to `NULL`
#' @param subtitle_advanced Advanced settings. Flourish type hint: boolean, defaults to `NULL`
#' @param subtitle_opacity Opacity. Flourish type hint: number, defaults to `NULL`
#' @param subtitle_space_above Space above. Flourish type hint: number, defaults to `NULL`
#' @param subtitle_space_below Space below. Flourish type hint: number, defaults to `NULL`
#' @param subtitle_lineheight Line height. Flourish type hint: number, defaults to `NULL`
#' @param subtitle_minheight Min height. Flourish type hint: number, defaults to `NULL`
#' @param subtitle_align Align. Choices: start, center, end. Flourish type hint: string, defaults to `NULL`
#' @param text_color Color. Flourish type hint: color, defaults to `NULL`
#' @param text_fontsize Font size. Flourish type hint: number, defaults to `NULL`
#' @param text_weight Weight. Choices: italic, normal, bold. Flourish type hint: string, defaults to `NULL`
#' @param text_advanced Advanced settings. Flourish type hint: boolean, defaults to `NULL`
#' @param text_opacity Opacity. Flourish type hint: number, defaults to `NULL`
#' @param text_space_between Space between. Flourish type hint: number, defaults to `NULL`
#' @param text_lineheight Line height. Flourish type hint: number, defaults to `NULL`
#' @param text_minheight Min height. Flourish type hint: number, defaults to `NULL`
#' @param text_align Align. Choices: start, center, end. Flourish type hint: string, defaults to `NULL`
#' @param text_column_names Column names. Choices: `TRUE`, `FALSE`. To add column names before text entries. Flourish type hint: boolean, defaults to `NULL`
#' @param text_column_separator Column separator. Choices: :, -, `<br>`, other. Choose a separator between column names and text entries. Flourish type hint: string, defaults to `NULL`
#' @param text_column_weight Weight. Choices: bold, normal. Flourish type hint: string, defaults to `NULL`
#' @param text_column_separator_custom Other. Flourish type hint: string, defaults to `NULL`
#' @param image_width_portrait Width. As a percentage of the cards width. Flourish type hint: number, defaults to `NULL`
#' @param image_width_landscape Width. As a percentage of the cards width. Flourish type hint: number, defaults to `NULL`
#' @param image_aspect_ratio Aspect ratio. As a multiplier of the images width. For example: a value of 2, means the image height is 2 times the image width. Flourish type hint: number, defaults to `NULL`
#' @param image_sizing Image sizing. Choices: cover, contain. Flourish type hint: string, defaults to `NULL`
#' @param image_horizontal_margin Horizontal. As a percentage of the cards width. Flourish type hint: number, defaults to `NULL`
#' @param image_vertical_margin Vertical. As a percentage of the cards width. Flourish type hint: number, defaults to `NULL`
#' @param card_space_between Space between image and text. Flourish type hint: number, defaults to `NULL`
#' @param image_border_color Color. Flourish type hint: color, defaults to `NULL`
#' @param image_border_width Weight. Flourish type hint: number, defaults to `NULL`
#' @param image_shape Shape. Choices: circle, square. Flourish type hint: string, defaults to `NULL`
#' @param image_radius Roundness. Flourish type hint: number, defaults to `NULL`
#' @param image_styling Advanced image styling. Flourish type hint: boolean, defaults to `NULL`
#' @param image_opacity Opacity. Flourish type hint: number, defaults to `NULL`
#' @param image_contrast Contrast. Flourish type hint: number, defaults to `NULL`
#' @param image_brightness Brightness. Flourish type hint: number, defaults to `NULL`
#' @param image_blend_mode Blend mode. Choices: normal, lighten, darken, overlay, screen, multiply. Flourish type hint: string, defaults to `NULL`
#' @param image_blackwhite Black and white. Flourish type hint: boolean, defaults to `NULL`
#' @param image_missing Missing images. Choices: hide, icon. What to show when theres a missing image. Flourish type hint: string, defaults to `NULL`
#' @param image_missing_icon Missing icon. Flourish type hint: url, defaults to `NULL`
#' @param card_background_mode Card. Choices: transparent, fixed. Flourish type hint: string, defaults to `NULL`
#' @param card_background_color Color. Flourish type hint: color, defaults to `NULL`
#' @param card_background_mode_category Card. Choices: data, transparent, fixed. Choose Data if you want to base the color on the Categories column in your dataset. Flourish type hint: string, defaults to `NULL`
#' @param card_background_color_category Color. Flourish type hint: color, defaults to `NULL`
#' @param image_background_mode Image. Choices: transparent, fixed. Flourish type hint: string, defaults to `NULL`
#' @param image_background_color Color. Flourish type hint: color, defaults to `NULL`
#' @param image_background_mode_category Image. Choices: data, transparent, fixed. Choose Data if you want to base the color on the Categories column in your dataset. Flourish type hint: string, defaults to `NULL`
#' @param image_background_color_category Color. Flourish type hint: color, defaults to `NULL`
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
#' @param legend_filter_mode Filter on click. Choices: none, single, multi. Flourish type hint: string, defaults to `NULL`
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
#' @param audio_click Click while playing should:. Choices: replay, stop, pause. Flourish type hint: string, defaults to `NULL`
#' @param audio_animation Animate while playing audio. Flourish type hint: boolean, defaults to `NULL`
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
#'   flourish(chart_type = "cards", api_key = Sys.getenv("FLOURISH_API_KEY")) |> 
#'   bind_cards_data(gapminder) |> 
#'   set_cards_details()
#' )
#' @export

set_cards_details <- function(
    .,
    mode = NULL,
    carousel_channel_background = NULL,
    carousel_bar_background = NULL,
    carousel_channel_height = NULL,
    autoplay_enabled = NULL,
    autoplay_duration = NULL,
    autoplay_loop = NULL,
    autoplay_pause_when = NULL,
    autoplay_btn_visible = NULL,
    autoplay_btn_position = NULL,
    autoplay_btn_size = NULL,
    autoplay_btn_background = NULL,
    autoplay_btn_opacity = NULL,
    autoplay_btn_color = NULL,
    card_layout = NULL,
    card_order = NULL,
    card_width_portrait = NULL,
    card_width_landscape = NULL,
    card_width_stretch = NULL,
    card_width_stretch_percent = NULL,
    card_padding_top = NULL,
    card_padding_right = NULL,
    card_padding_bottom = NULL,
    card_padding_left = NULL,
    card_horizontal_margin = NULL,
    card_vertical_margin = NULL,
    card_border_color = NULL,
    card_border_width = NULL,
    card_shape = NULL,
    card_radius = NULL,
    card_shadow = NULL,
    card_shadow_color = NULL,
    card_shadow_blur = NULL,
    template_customise = NULL,
    template_simple_custom = NULL,
    content_vertical_align = NULL,
    content_horizontal_padding = NULL,
    title_color = NULL,
    title_fontsize = NULL,
    title_weight = NULL,
    title_advanced = NULL,
    title_opacity = NULL,
    title_space_above = NULL,
    title_space_below = NULL,
    title_lineheight = NULL,
    title_minheight = NULL,
    title_align = NULL,
    subtitle_color = NULL,
    subtitle_fontsize = NULL,
    subtitle_weight = NULL,
    subtitle_advanced = NULL,
    subtitle_opacity = NULL,
    subtitle_space_above = NULL,
    subtitle_space_below = NULL,
    subtitle_lineheight = NULL,
    subtitle_minheight = NULL,
    subtitle_align = NULL,
    text_color = NULL,
    text_fontsize = NULL,
    text_weight = NULL,
    text_advanced = NULL,
    text_opacity = NULL,
    text_space_between = NULL,
    text_lineheight = NULL,
    text_minheight = NULL,
    text_align = NULL,
    text_column_names = NULL,
    text_column_separator = NULL,
    text_column_weight = NULL,
    text_column_separator_custom = NULL,
    image_width_portrait = NULL,
    image_width_landscape = NULL,
    image_aspect_ratio = NULL,
    image_sizing = NULL,
    image_horizontal_margin = NULL,
    image_vertical_margin = NULL,
    card_space_between = NULL,
    image_border_color = NULL,
    image_border_width = NULL,
    image_shape = NULL,
    image_radius = NULL,
    image_styling = NULL,
    image_opacity = NULL,
    image_contrast = NULL,
    image_brightness = NULL,
    image_blend_mode = NULL,
    image_blackwhite = NULL,
    image_missing = NULL,
    image_missing_icon = NULL,
    card_background_mode = NULL,
    card_background_color = NULL,
    card_background_mode_category = NULL,
    card_background_color_category = NULL,
    image_background_mode = NULL,
    image_background_color = NULL,
    image_background_mode_category = NULL,
    image_background_color_category = NULL,
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
    legend_filter_mode = NULL,
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
    audio_click = NULL,
    audio_animation = NULL,
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
  details_error(., "cards")

  old_list <- .
  new_list <- list()

  if (isTRUE(old_list$x$template != "@flourish/cards")) {
    stop("`set_cards_details()` is not supported for this chart type.")
  }
  list_mode <- c("grid", "carousel", NULL)
  if (!is.null(mode)) {
    if (!mode %in% list_mode) {
      stop("`mode` must be one of: c('grid', 'carousel')")
    } else {
      if (length(jsonlite::fromJSON('{"grid": "grid", "carousel": "carousel"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"grid": "grid", "carousel": "carousel"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
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
  new_list$x$state$carousel_channel_background <- carousel_channel_background
  new_list$x$state$carousel_bar_background <- carousel_bar_background
  new_list$x$state$carousel_channel_height <- carousel_channel_height
  list_autoplay_enabled <- c(TRUE, FALSE, NULL)
  if (!is.null(autoplay_enabled)) {
    if (!autoplay_enabled %in% list_autoplay_enabled) {
      stop("`autoplay_enabled` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && autoplay_enabled %in% names(named_list)) {
          if (is.logical(autoplay_enabled)) {
            autoplay_enabled <- as.character(autoplay_enabled)
          }
          named_list_value <- unname(named_list[autoplay_enabled])[[1]]
          new_list$x$state$autoplay_enabled <- named_list_value
        }
      }
    }
  }
  new_list$x$state$autoplay_duration <- autoplay_duration
  new_list$x$state$autoplay_loop <- autoplay_loop
  list_autoplay_pause_when <- c("never", "hover", "popup", "hover_popup", NULL)
  if (!is.null(autoplay_pause_when)) {
    if (!autoplay_pause_when %in% list_autoplay_pause_when) {
      stop("`autoplay_pause_when` must be one of: c('never', 'hover', 'popup', 'hover_popup')")
    } else {
      if (length(jsonlite::fromJSON('{"never": "never", "hover": "hover", "popup": "popup", "hover_popup": "hover_popup"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"never": "never", "hover": "hover", "popup": "popup", "hover_popup": "hover_popup"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && autoplay_pause_when %in% names(named_list)) {
          if (is.logical(autoplay_pause_when)) {
            autoplay_pause_when <- as.character(autoplay_pause_when)
          }
          named_list_value <- unname(named_list[autoplay_pause_when])[[1]]
          new_list$x$state$autoplay_pause_when <- named_list_value
        }
      }
    }
  }
  list_autoplay_btn_visible <- c(TRUE, FALSE, NULL)
  if (!is.null(autoplay_btn_visible)) {
    if (!autoplay_btn_visible %in% list_autoplay_btn_visible) {
      stop("`autoplay_btn_visible` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && autoplay_btn_visible %in% names(named_list)) {
          if (is.logical(autoplay_btn_visible)) {
            autoplay_btn_visible <- as.character(autoplay_btn_visible)
          }
          named_list_value <- unname(named_list[autoplay_btn_visible])[[1]]
          new_list$x$state$autoplay_btn_visible <- named_list_value
        }
      }
    }
  }
  list_autoplay_btn_position <- c("top_left", "top_right", "bottom_left", "bottom_right", NULL)
  if (!is.null(autoplay_btn_position)) {
    if (!autoplay_btn_position %in% list_autoplay_btn_position) {
      stop("`autoplay_btn_position` must be one of: c('top_left', 'top_right', 'bottom_left', 'bottom_right')")
    } else {
      if (length(jsonlite::fromJSON('{"top_left": "top_left", "top_right": "top_right", "bottom_left": "bottom_left", "bottom_right": "bottom_right"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"top_left": "top_left", "top_right": "top_right", "bottom_left": "bottom_left", "bottom_right": "bottom_right"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && autoplay_btn_position %in% names(named_list)) {
          if (is.logical(autoplay_btn_position)) {
            autoplay_btn_position <- as.character(autoplay_btn_position)
          }
          named_list_value <- unname(named_list[autoplay_btn_position])[[1]]
          new_list$x$state$autoplay_btn_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$autoplay_btn_size <- autoplay_btn_size
  new_list$x$state$autoplay_btn_background <- autoplay_btn_background
  new_list$x$state$autoplay_btn_opacity <- autoplay_btn_opacity
  new_list$x$state$autoplay_btn_color <- autoplay_btn_color
  list_card_layout <- c("portrait", "landscape", "absolute", NULL)
  if (!is.null(card_layout)) {
    if (!card_layout %in% list_card_layout) {
      stop("`card_layout` must be one of: c('portrait', 'landscape', 'absolute')")
    } else {
      if (length(jsonlite::fromJSON('{"portrait": "portrait", "landscape": "landscape", "absolute": "absolute"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"portrait": "portrait", "landscape": "landscape", "absolute": "absolute"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && card_layout %in% names(named_list)) {
          if (is.logical(card_layout)) {
            card_layout <- as.character(card_layout)
          }
          named_list_value <- unname(named_list[card_layout])[[1]]
          new_list$x$state$card_layout <- named_list_value
        }
      }
    }
  }
  list_card_order <- c("stack-default", "stack-2", "stack-3", "stack-4", NULL)
  if (!is.null(card_order)) {
    if (!card_order %in% list_card_order) {
      stop("`card_order` must be one of: c('stack-default', 'stack-2', 'stack-3', 'stack-4')")
    } else {
      if (length(jsonlite::fromJSON('{"stack-default": "stack-default", "stack-2": "stack-2", "stack-3": "stack-3", "stack-4": "stack-4"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"stack-default": "stack-default", "stack-2": "stack-2", "stack-3": "stack-3", "stack-4": "stack-4"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && card_order %in% names(named_list)) {
          if (is.logical(card_order)) {
            card_order <- as.character(card_order)
          }
          named_list_value <- unname(named_list[card_order])[[1]]
          new_list$x$state$card_order <- named_list_value
        }
      }
    }
  }
  new_list$x$state$card_width_portrait <- card_width_portrait
  new_list$x$state$card_width_landscape <- card_width_landscape
  new_list$x$state$card_width_stretch <- card_width_stretch
  new_list$x$state$card_width_stretch_percent <- card_width_stretch_percent
  new_list$x$state$card_padding_top <- card_padding_top
  new_list$x$state$card_padding_right <- card_padding_right
  new_list$x$state$card_padding_bottom <- card_padding_bottom
  new_list$x$state$card_padding_left <- card_padding_left
  new_list$x$state$card_horizontal_margin <- card_horizontal_margin
  new_list$x$state$card_vertical_margin <- card_vertical_margin
  new_list$x$state$card_border_color <- card_border_color
  new_list$x$state$card_border_width <- card_border_width
  list_card_shape <- c("circle", "square", NULL)
  if (!is.null(card_shape)) {
    if (!card_shape %in% list_card_shape) {
      stop("`card_shape` must be one of: c('circle', 'square')")
    } else {
      if (length(jsonlite::fromJSON('{"circle": "circle", "square": "square"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"circle": "circle", "square": "square"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && card_shape %in% names(named_list)) {
          if (is.logical(card_shape)) {
            card_shape <- as.character(card_shape)
          }
          named_list_value <- unname(named_list[card_shape])[[1]]
          new_list$x$state$card_shape <- named_list_value
        }
      }
    }
  }
  new_list$x$state$card_radius <- card_radius
  list_card_shadow <- c(TRUE, FALSE, NULL)
  if (!is.null(card_shadow)) {
    if (!card_shadow %in% list_card_shadow) {
      stop("`card_shadow` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && card_shadow %in% names(named_list)) {
          if (is.logical(card_shadow)) {
            card_shadow <- as.character(card_shadow)
          }
          named_list_value <- unname(named_list[card_shadow])[[1]]
          new_list$x$state$card_shadow <- named_list_value
        }
      }
    }
  }
  new_list$x$state$card_shadow_color <- card_shadow_color
  new_list$x$state$card_shadow_blur <- card_shadow_blur
  new_list$x$state$template_customise <- template_customise
  if (length(template_simple_custom) > 1) {
    new_list$x$state$template_simple_custom <- paste(template_simple_custom, collapse = "\n")
  } else {
    new_list$x$state$template_simple_custom <- template_simple_custom
  }

  list_content_vertical_align <- c("center", "flex-start", "flex-end", NULL)
  if (!is.null(content_vertical_align)) {
    if (!content_vertical_align %in% list_content_vertical_align) {
      stop("`content_vertical_align` must be one of: c('center', 'flex-start', 'flex-end')")
    } else {
      if (length(jsonlite::fromJSON('{"center": "center", "flex-start": "flex-start", "flex-end": "flex-end"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"center": "center", "flex-start": "flex-start", "flex-end": "flex-end"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && content_vertical_align %in% names(named_list)) {
          if (is.logical(content_vertical_align)) {
            content_vertical_align <- as.character(content_vertical_align)
          }
          named_list_value <- unname(named_list[content_vertical_align])[[1]]
          new_list$x$state$content_vertical_align <- named_list_value
        }
      }
    }
  }
  new_list$x$state$content_horizontal_padding <- content_horizontal_padding
  new_list$x$state$title_color <- title_color
  new_list$x$state$title_fontsize <- title_fontsize
  list_title_weight <- c("italic", "normal", "bold", NULL)
  if (!is.null(title_weight)) {
    if (!title_weight %in% list_title_weight) {
      stop("`title_weight` must be one of: c('italic', 'normal', 'bold')")
    } else {
      if (length(jsonlite::fromJSON('{"italic": "italic", "normal": "normal", "bold": "bold"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"italic": "italic", "normal": "normal", "bold": "bold"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && title_weight %in% names(named_list)) {
          if (is.logical(title_weight)) {
            title_weight <- as.character(title_weight)
          }
          named_list_value <- unname(named_list[title_weight])[[1]]
          new_list$x$state$title_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$title_advanced <- title_advanced
  new_list$x$state$title_opacity <- title_opacity
  new_list$x$state$title_space_above <- title_space_above
  new_list$x$state$title_space_below <- title_space_below
  new_list$x$state$title_lineheight <- title_lineheight
  new_list$x$state$title_minheight <- title_minheight
  list_title_align <- c("start", "center", "end", NULL)
  if (!is.null(title_align)) {
    if (!title_align %in% list_title_align) {
      stop("`title_align` must be one of: c('start', 'center', 'end')")
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
        if (length(named_list) > 1 && title_align %in% names(named_list)) {
          if (is.logical(title_align)) {
            title_align <- as.character(title_align)
          }
          named_list_value <- unname(named_list[title_align])[[1]]
          new_list$x$state$title_align <- named_list_value
        }
      }
    }
  }
  new_list$x$state$subtitle_color <- subtitle_color
  new_list$x$state$subtitle_fontsize <- subtitle_fontsize
  list_subtitle_weight <- c("italic", "normal", "bold", NULL)
  if (!is.null(subtitle_weight)) {
    if (!subtitle_weight %in% list_subtitle_weight) {
      stop("`subtitle_weight` must be one of: c('italic', 'normal', 'bold')")
    } else {
      if (length(jsonlite::fromJSON('{"italic": "italic", "normal": "normal", "bold": "bold"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"italic": "italic", "normal": "normal", "bold": "bold"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && subtitle_weight %in% names(named_list)) {
          if (is.logical(subtitle_weight)) {
            subtitle_weight <- as.character(subtitle_weight)
          }
          named_list_value <- unname(named_list[subtitle_weight])[[1]]
          new_list$x$state$subtitle_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$subtitle_advanced <- subtitle_advanced
  new_list$x$state$subtitle_opacity <- subtitle_opacity
  new_list$x$state$subtitle_space_above <- subtitle_space_above
  new_list$x$state$subtitle_space_below <- subtitle_space_below
  new_list$x$state$subtitle_lineheight <- subtitle_lineheight
  new_list$x$state$subtitle_minheight <- subtitle_minheight
  list_subtitle_align <- c("start", "center", "end", NULL)
  if (!is.null(subtitle_align)) {
    if (!subtitle_align %in% list_subtitle_align) {
      stop("`subtitle_align` must be one of: c('start', 'center', 'end')")
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
        if (length(named_list) > 1 && subtitle_align %in% names(named_list)) {
          if (is.logical(subtitle_align)) {
            subtitle_align <- as.character(subtitle_align)
          }
          named_list_value <- unname(named_list[subtitle_align])[[1]]
          new_list$x$state$subtitle_align <- named_list_value
        }
      }
    }
  }
  new_list$x$state$text_color <- text_color
  new_list$x$state$text_fontsize <- text_fontsize
  list_text_weight <- c("italic", "normal", "bold", NULL)
  if (!is.null(text_weight)) {
    if (!text_weight %in% list_text_weight) {
      stop("`text_weight` must be one of: c('italic', 'normal', 'bold')")
    } else {
      if (length(jsonlite::fromJSON('{"italic": "italic", "normal": "normal", "bold": "bold"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"italic": "italic", "normal": "normal", "bold": "bold"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && text_weight %in% names(named_list)) {
          if (is.logical(text_weight)) {
            text_weight <- as.character(text_weight)
          }
          named_list_value <- unname(named_list[text_weight])[[1]]
          new_list$x$state$text_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$text_advanced <- text_advanced
  new_list$x$state$text_opacity <- text_opacity
  new_list$x$state$text_space_between <- text_space_between
  new_list$x$state$text_lineheight <- text_lineheight
  new_list$x$state$text_minheight <- text_minheight
  list_text_align <- c("start", "center", "end", NULL)
  if (!is.null(text_align)) {
    if (!text_align %in% list_text_align) {
      stop("`text_align` must be one of: c('start', 'center', 'end')")
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
        if (length(named_list) > 1 && text_align %in% names(named_list)) {
          if (is.logical(text_align)) {
            text_align <- as.character(text_align)
          }
          named_list_value <- unname(named_list[text_align])[[1]]
          new_list$x$state$text_align <- named_list_value
        }
      }
    }
  }
  list_text_column_names <- c(TRUE, FALSE, NULL)
  if (!is.null(text_column_names)) {
    if (!text_column_names %in% list_text_column_names) {
      stop("`text_column_names` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && text_column_names %in% names(named_list)) {
          if (is.logical(text_column_names)) {
            text_column_names <- as.character(text_column_names)
          }
          named_list_value <- unname(named_list[text_column_names])[[1]]
          new_list$x$state$text_column_names <- named_list_value
        }
      }
    }
  }
  list_text_column_separator <- c(": ", " - ", "<br>", "other", NULL)
  if (!is.null(text_column_separator)) {
    if (!text_column_separator %in% list_text_column_separator) {
      stop("`text_column_separator` must be one of: c(': ', ' - ', '<br>', 'other')")
    } else {
      if (length(jsonlite::fromJSON('{": ": ": ", " - ": " - ", "<br>": "<br>", "other": "other"}')) > 1) {
        named_list <- jsonlite::fromJSON('{": ": ": ", " - ": " - ", "<br>": "<br>", "other": "other"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && text_column_separator %in% names(named_list)) {
          if (is.logical(text_column_separator)) {
            text_column_separator <- as.character(text_column_separator)
          }
          named_list_value <- unname(named_list[text_column_separator])[[1]]
          new_list$x$state$text_column_separator <- named_list_value
        }
      }
    }
  }
  list_text_column_weight <- c("bold", "normal", NULL)
  if (!is.null(text_column_weight)) {
    if (!text_column_weight %in% list_text_column_weight) {
      stop("`text_column_weight` must be one of: c('bold', 'normal')")
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
        if (length(named_list) > 1 && text_column_weight %in% names(named_list)) {
          if (is.logical(text_column_weight)) {
            text_column_weight <- as.character(text_column_weight)
          }
          named_list_value <- unname(named_list[text_column_weight])[[1]]
          new_list$x$state$text_column_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$text_column_separator_custom <- text_column_separator_custom
  new_list$x$state$image_width_portrait <- image_width_portrait
  new_list$x$state$image_width_landscape <- image_width_landscape
  new_list$x$state$image_aspect_ratio <- image_aspect_ratio
  list_image_sizing <- c("cover", "contain", NULL)
  if (!is.null(image_sizing)) {
    if (!image_sizing %in% list_image_sizing) {
      stop("`image_sizing` must be one of: c('cover', 'contain')")
    } else {
      if (length(jsonlite::fromJSON('{"cover": "cover", "contain": "contain"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"cover": "cover", "contain": "contain"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && image_sizing %in% names(named_list)) {
          if (is.logical(image_sizing)) {
            image_sizing <- as.character(image_sizing)
          }
          named_list_value <- unname(named_list[image_sizing])[[1]]
          new_list$x$state$image_sizing <- named_list_value
        }
      }
    }
  }
  new_list$x$state$image_horizontal_margin <- image_horizontal_margin
  new_list$x$state$image_vertical_margin <- image_vertical_margin
  new_list$x$state$card_space_between <- card_space_between
  new_list$x$state$image_border_color <- image_border_color
  new_list$x$state$image_border_width <- image_border_width
  list_image_shape <- c("circle", "square", NULL)
  if (!is.null(image_shape)) {
    if (!image_shape %in% list_image_shape) {
      stop("`image_shape` must be one of: c('circle', 'square')")
    } else {
      if (length(jsonlite::fromJSON('{"circle": "circle", "square": "square"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"circle": "circle", "square": "square"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && image_shape %in% names(named_list)) {
          if (is.logical(image_shape)) {
            image_shape <- as.character(image_shape)
          }
          named_list_value <- unname(named_list[image_shape])[[1]]
          new_list$x$state$image_shape <- named_list_value
        }
      }
    }
  }
  new_list$x$state$image_radius <- image_radius
  new_list$x$state$image_styling <- image_styling
  new_list$x$state$image_opacity <- image_opacity
  new_list$x$state$image_contrast <- image_contrast
  new_list$x$state$image_brightness <- image_brightness
  list_image_blend_mode <- c("normal", "lighten", "darken", "overlay", "screen", "multiply", NULL)
  if (!is.null(image_blend_mode)) {
    if (!image_blend_mode %in% list_image_blend_mode) {
      stop("`image_blend_mode` must be one of: c('normal', 'lighten', 'darken', 'overlay', 'screen', 'multiply')")
    } else {
      if (length(jsonlite::fromJSON('{"normal": "normal", "lighten": "lighten", "darken": "darken", "overlay": "overlay", "screen": "screen", "multiply": "multiply"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"normal": "normal", "lighten": "lighten", "darken": "darken", "overlay": "overlay", "screen": "screen", "multiply": "multiply"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
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
  new_list$x$state$image_blackwhite <- image_blackwhite
  list_image_missing <- c("hide", "icon", NULL)
  if (!is.null(image_missing)) {
    if (!image_missing %in% list_image_missing) {
      stop("`image_missing` must be one of: c('hide', 'icon')")
    } else {
      if (length(jsonlite::fromJSON('{"hide": "hide", "icon": "icon"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"hide": "hide", "icon": "icon"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && image_missing %in% names(named_list)) {
          if (is.logical(image_missing)) {
            image_missing <- as.character(image_missing)
          }
          named_list_value <- unname(named_list[image_missing])[[1]]
          new_list$x$state$image_missing <- named_list_value
        }
      }
    }
  }
  new_list$x$state$image_missing_icon <- image_missing_icon
  list_card_background_mode <- c("transparent", "fixed", NULL)
  if (!is.null(card_background_mode)) {
    if (!card_background_mode %in% list_card_background_mode) {
      stop("`card_background_mode` must be one of: c('transparent', 'fixed')")
    } else {
      if (length(jsonlite::fromJSON('{"transparent": "transparent", "fixed": "fixed"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"transparent": "transparent", "fixed": "fixed"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && card_background_mode %in% names(named_list)) {
          if (is.logical(card_background_mode)) {
            card_background_mode <- as.character(card_background_mode)
          }
          named_list_value <- unname(named_list[card_background_mode])[[1]]
          new_list$x$state$card_background_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$card_background_color <- card_background_color
  list_card_background_mode_category <- c("data", "transparent", "fixed", NULL)
  if (!is.null(card_background_mode_category)) {
    if (!card_background_mode_category %in% list_card_background_mode_category) {
      stop("`card_background_mode_category` must be one of: c('data', 'transparent', 'fixed')")
    } else {
      if (length(jsonlite::fromJSON('{"data": "data", "transparent": "transparent", "fixed": "fixed"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"data": "data", "transparent": "transparent", "fixed": "fixed"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && card_background_mode_category %in% names(named_list)) {
          if (is.logical(card_background_mode_category)) {
            card_background_mode_category <- as.character(card_background_mode_category)
          }
          named_list_value <- unname(named_list[card_background_mode_category])[[1]]
          new_list$x$state$card_background_mode_category <- named_list_value
        }
      }
    }
  }
  new_list$x$state$card_background_color_category <- card_background_color_category
  list_image_background_mode <- c("transparent", "fixed", NULL)
  if (!is.null(image_background_mode)) {
    if (!image_background_mode %in% list_image_background_mode) {
      stop("`image_background_mode` must be one of: c('transparent', 'fixed')")
    } else {
      if (length(jsonlite::fromJSON('{"transparent": "transparent", "fixed": "fixed"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"transparent": "transparent", "fixed": "fixed"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && image_background_mode %in% names(named_list)) {
          if (is.logical(image_background_mode)) {
            image_background_mode <- as.character(image_background_mode)
          }
          named_list_value <- unname(named_list[image_background_mode])[[1]]
          new_list$x$state$image_background_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$image_background_color <- image_background_color
  list_image_background_mode_category <- c("data", "transparent", "fixed", NULL)
  if (!is.null(image_background_mode_category)) {
    if (!image_background_mode_category %in% list_image_background_mode_category) {
      stop("`image_background_mode_category` must be one of: c('data', 'transparent', 'fixed')")
    } else {
      if (length(jsonlite::fromJSON('{"data": "data", "transparent": "transparent", "fixed": "fixed"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"data": "data", "transparent": "transparent", "fixed": "fixed"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && image_background_mode_category %in% names(named_list)) {
          if (is.logical(image_background_mode_category)) {
            image_background_mode_category <- as.character(image_background_mode_category)
          }
          named_list_value <- unname(named_list[image_background_mode_category])[[1]]
          new_list$x$state$image_background_mode_category <- named_list_value
        }
      }
    }
  }
  new_list$x$state$image_background_color_category <- image_background_color_category
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
          new_list$x$state$popups$mode <- named_list_value
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
          new_list$x$state$popups$popup_is_custom <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popups$show_popup_styles <- chart_popup_show_popup_styles
  if (length(chart_popup_popup_custom_header) > 1) {
    new_list$x$state$popups$popup_custom_header <- paste(chart_popup_popup_custom_header, collapse = "\n")
  } else {
    new_list$x$state$popups$popup_custom_header <- chart_popup_popup_custom_header
  }

  if (length(chart_popup_popup_custom_main) > 1) {
    new_list$x$state$popups$popup_custom_main <- paste(chart_popup_popup_custom_main, collapse = "\n")
  } else {
    new_list$x$state$popups$popup_custom_main <- chart_popup_popup_custom_main
  }

  if (length(chart_popup_popup_custom_accessible) > 1) {
    new_list$x$state$popups$popup_custom_accessible <- paste(chart_popup_popup_custom_accessible, collapse = "\n")
  } else {
    new_list$x$state$popups$popup_custom_accessible <- chart_popup_popup_custom_accessible
  }

  new_list$x$state$popups$popup_width <- chart_popup_popup_width
  new_list$x$state$popups$popup_font_size <- chart_popup_popup_font_size
  new_list$x$state$popups$popup_text_color <- chart_popup_popup_text_color
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
          new_list$x$state$popups$popup_align <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popups$popup_background <- chart_popup_popup_background
  new_list$x$state$popups$popup_background_opacity <- chart_popup_popup_background_opacity
  new_list$x$state$popups$popup_padding <- chart_popup_popup_padding
  new_list$x$state$popups$popup_radius <- chart_popup_popup_radius
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
          new_list$x$state$popups$popup_header_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popups$popup_header_background <- chart_popup_popup_header_background
  new_list$x$state$popups$popup_header_text_color <- chart_popup_popup_header_text_color
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
          new_list$x$state$popups$popup_list_type <- named_list_value
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
          new_list$x$state$popups$popup_list_label_weight <- named_list_value
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
          new_list$x$state$popups$popup_list_separator <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popups$popup_shadow <- chart_popup_popup_shadow
  new_list$x$state$popups$popup_pointer <- chart_popup_popup_pointer
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
          new_list$x$state$popups$panel_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popups$panel_open_duration <- chart_popup_panel_open_duration
  new_list$x$state$popups$panel_side_fixed <- chart_popup_panel_side_fixed
  if (length(chart_popup_panel_side_default_content) > 1) {
    new_list$x$state$popups$panel_side_default_content <- paste(chart_popup_panel_side_default_content, collapse = "\n")
  } else {
    new_list$x$state$popups$panel_side_default_content <- chart_popup_panel_side_default_content
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
          new_list$x$state$popups$panel_is_custom <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popups$show_panel_styles <- chart_popup_show_panel_styles
  if (length(chart_popup_panel_custom_header) > 1) {
    new_list$x$state$popups$panel_custom_header <- paste(chart_popup_panel_custom_header, collapse = "\n")
  } else {
    new_list$x$state$popups$panel_custom_header <- chart_popup_panel_custom_header
  }

  if (length(chart_popup_panel_custom_main) > 1) {
    new_list$x$state$popups$panel_custom_main <- paste(chart_popup_panel_custom_main, collapse = "\n")
  } else {
    new_list$x$state$popups$panel_custom_main <- chart_popup_panel_custom_main
  }

  new_list$x$state$popups$panel_width_overlay <- chart_popup_panel_width_overlay
  new_list$x$state$popups$panel_height_overlay <- chart_popup_panel_height_overlay
  new_list$x$state$popups$panel_width_side <- chart_popup_panel_width_side
  new_list$x$state$popups$panel_height_side <- chart_popup_panel_height_side
  new_list$x$state$popups$panel_max_width <- chart_popup_panel_max_width
  new_list$x$state$popups$panel_max_height <- chart_popup_panel_max_height
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
          new_list$x$state$popups$panel_vertical_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popups$panel_text_color <- chart_popup_panel_text_color
  new_list$x$state$popups$panel_font_size <- chart_popup_panel_font_size
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
          new_list$x$state$popups$panel_align <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popups$panel_background <- chart_popup_panel_background
  new_list$x$state$popups$panel_background_opacity <- chart_popup_panel_background_opacity
  new_list$x$state$popups$panel_padding <- chart_popup_panel_padding
  new_list$x$state$popups$panel_radius <- chart_popup_panel_radius
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
          new_list$x$state$popups$panel_list_type <- named_list_value
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
          new_list$x$state$popups$panel_list_label_weight <- named_list_value
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
          new_list$x$state$popups$panel_list_separator <- named_list_value
        }
      }
    }
  }
  new_list$x$state$popups$panel_shadow <- chart_popup_panel_shadow
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
  list_legend_filter_mode <- c("none", "single", "multi", NULL)
  if (!is.null(legend_filter_mode)) {
    if (!legend_filter_mode %in% list_legend_filter_mode) {
      stop("`legend_filter_mode` must be one of: c('none', 'single', 'multi')")
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
  list_audio_click <- c("replay", "stop", "pause", NULL)
  if (!is.null(audio_click)) {
    if (!audio_click %in% list_audio_click) {
      stop("`audio_click` must be one of: c('replay', 'stop', 'pause')")
    } else {
      if (length(jsonlite::fromJSON('{"replay": "replay", "stop": "stop", "pause": "pause"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"replay": "replay", "stop": "stop", "pause": "pause"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && audio_click %in% names(named_list)) {
          if (is.logical(audio_click)) {
            audio_click <- as.character(audio_click)
          }
          named_list_value <- unname(named_list[audio_click])[[1]]
          new_list$x$state$audio_click <- named_list_value
        }
      }
    }
  }
  new_list$x$state$audio_animation <- audio_animation
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
