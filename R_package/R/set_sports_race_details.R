#' Set sports race chart details
#' @name set_sports_race_details
#' @param preset_svg Choices: athletics, swimming, cycling, custom. Flourish type hint: string, defaults to `NULL`
#' @param custom_svg Custom SVG. Use a custom track using your own SVG Flourish type hint: text, defaults to `NULL`
#' @param track_path_id Path ID. The ID of the element in the SVG which defines the center of the track. Flourish type hint: string, defaults to `NULL`
#' @param track_lane_width Lane width. The distance between each participant. Flourish type hint: number, defaults to `NULL`
#' @param track_back_and_forth Track type. Choices: `FALSE`, `TRUE`. Whether the track goes back and forth, like a swimming pool, or back to the start, like a race track. Flourish type hint: boolean, defaults to `NULL`
#' @param participant_icon_mode Icon type. Choices: circle, image. Flourish type hint: string, defaults to `NULL`
#' @param participant_size Size. Flourish type hint: number, defaults to `NULL`
#' @param participant_stroke_width Line width. Flourish type hint: number, defaults to `NULL`
#' @param participant_stroke_opacity Stroke opacity. Flourish type hint: number, defaults to `NULL`
#' @param participant_fill_opacity Fill opacity. Flourish type hint: number, defaults to `NULL`
#' @param preset_participant_image Default images. Choices: runner, swimmer, cyclist, custom. The images used if no image is included for the participant in the datasheet. Flourish type hint: string, defaults to `NULL`
#' @param custom_participant_start_image Custom start image. The image shown at the start of the race. Flourish type hint: url, defaults to `NULL`
#' @param custom_participant_race_image Custom racing image. The image shown while the participant is racing. Flourish type hint: url, defaults to `NULL`
#' @param custom_participant_finish_image Custom finish image. The image shown when the participant has finished the race. Flourish type hint: url, defaults to `NULL`
#' @param image_initial_rotation Rotate images. Choices: 0, 90, 180, 270. Flourish type hint: string, defaults to `NULL`
#' @param image_initial_flip_x Flip horizontally. Flourish type hint: boolean, defaults to `NULL`
#' @param image_initial_flip_y Flip vertically. Flourish type hint: boolean, defaults to `NULL`
#' @param image_transform_mode Direction change. Choices: rotate, flip_x, flip_y, flip_both, static. Change the direction of the image based on which way the participant is traveling.    Rotate rotates the image to face the direction of travel.   Flip horizontally flips the image horizontally depending on whether the participant is traveling towards the left or right.   Flip vertically flips the image vertically depending on whether the participant is traveling towards the top or bottom.   Flip horizontally and vertically combines the horizontal and vertical flip settings.   Static doesnt change the direction of the image.  Flourish type hint: string, defaults to `NULL`
#' @param participant_icon_recolor Recolor icons. Apply colors to differentiate the participants. Works best with greyscale images. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_participant_color_scale_categorical_palette Palette. Flourish type hint: colors, defaults to `NULL`
#' @param chart_participant_color_scale_categorical_extend Extend. Automatically generate additional colours when needed to avoid the palette colours being used more than once. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_participant_color_scale_categorical_custom_palette Custom overrides. Enter the label name for which you wish to set the color, followed by a colon and the desired color value.  Colors can be set using Hex, RGB, color names or RGBA, if you want to set the opacity Multiple colors can be set using multiple lines. For example:  Party 1: red Party 2: #4455AA Party 3: rgb(30,168,26). Flourish type hint: text, defaults to `NULL`
#' @param chart_participant_color_scale_numeric_type Scale type. Choices: sequential, diverging. Flourish type hint: string, defaults to `NULL`
#' @param chart_participant_color_scale_binning Choices: `FALSE`, `TRUE`. In linear mode, the color scale will run as a smooth gradient between 2 colors. In binned mode, the gradient will be divided in smaller blocks. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_participant_color_scale_bin_mode Binning mode. Choices: fixed, quantile, custom. Flourish type hint: string, defaults to `NULL`
#' @param chart_participant_color_scale_bin_count Number of bins. Flourish type hint: number, defaults to `NULL`
#' @param chart_participant_color_scale_bin_thresholds Custom thresholds. Enter your desired thresholds, separating them with a ";". For instance, "5;10;15".  Bins form as follows:  From the datas minimum value (domain minimum) up to the first threshold.  Between consecutive thresholds.  From the last threshold to the datas maximum value (domain maximum).   For "5;10;15", youll get four bins based on your datas range. Flourish type hint: string, defaults to `NULL`
#' @param chart_participant_color_scale_sequential_palette Palette. Flourish type hint: string, defaults to `NULL`
#' @param chart_participant_color_scale_sequential_reverse Reverse. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_participant_color_scale_sequential_custom_min Minimum color. Flourish type hint: color, defaults to `NULL`
#' @param chart_participant_color_scale_sequential_custom_max Maximum color. Flourish type hint: color, defaults to `NULL`
#' @param chart_participant_color_scale_sequential_color_space Color space. Choices: rgb, lab, hcl, hsl. Flourish type hint: string, defaults to `NULL`
#' @param chart_participant_color_scale_sequential_custom_domain Domain. Choices: `FALSE`, `TRUE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_participant_color_scale_sequential_domain_min Min. Flourish type hint: number, defaults to `NULL`
#' @param chart_participant_color_scale_sequential_domain_max Max. Flourish type hint: number, defaults to `NULL`
#' @param chart_participant_color_scale_diverging_palette Palette. Flourish type hint: string, defaults to `NULL`
#' @param chart_participant_color_scale_diverging_reverse Reverse. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_participant_color_scale_diverging_custom_min Minimum color. Flourish type hint: color, defaults to `NULL`
#' @param chart_participant_color_scale_diverging_custom_mid Midpoint color. Flourish type hint: color, defaults to `NULL`
#' @param chart_participant_color_scale_diverging_custom_max Maximum color. Flourish type hint: color, defaults to `NULL`
#' @param chart_participant_color_scale_diverging_color_space Color space. Choices: rgb, lab, hcl, hsl. Flourish type hint: string, defaults to `NULL`
#' @param chart_participant_color_scale_diverging_custom_domain Domain. Choices: `FALSE`, `TRUE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_participant_color_scale_diverging_domain_min Min. Flourish type hint: number, defaults to `NULL`
#' @param chart_participant_color_scale_diverging_domain_mid Mid. Flourish type hint: number, defaults to `NULL`
#' @param chart_participant_color_scale_diverging_domain_max Max. Flourish type hint: number, defaults to `NULL`
#' @param camera_mode Camera mode. Choices: track, leader. Flourish type hint: string, defaults to `NULL`
#' @param zoom Zoom level. How much to zoom in when playing. Flourish type hint: number, defaults to `NULL`
#' @param checkpoint_mode Checkpoint mode. Choices: laps, splits, custom. Flourish type hint: string, defaults to `NULL`
#' @param checkpoints Checkpoints. Enter the number of laps completed at each recorded checkpoint/column in the data. E.g. "0.5, 1, 1.5, 2" would mean that the times were taken every half a lap. Enter one checkpoint per line. Flourish type hint: text, defaults to `NULL`
#' @param times_cumulative Times are cumulative. Switch on if the time columns represent the cumulative time taken at each checkpoint (e.g. 12, 25, 36).  Switch off if the times represent how long individual checkpoints took to complete (e.g. 12, 13, 11). Flourish type hint: boolean, defaults to `NULL`
#' @param participant_label_mode Label mode. Choices: auto, leader, all, custom. Determines which labels are drawn. Auto draws as many labels as possible whilst avoiding overlaps. Flourish type hint: string, defaults to `NULL`
#' @param participant_label_custom Participants to label. Enter the names of the participants to label. These must exactly match the names in your data. Enter one name per line. Flourish type hint: text, defaults to `NULL`
#' @param participant_label_position Label position. Choices: auto, left, right. Flourish type hint: string, defaults to `NULL`
#' @param participant_label_style Style. Flourish type hint: boolean, defaults to `NULL`
#' @param participant_label_color Color. Flourish type hint: color, defaults to `NULL`
#' @param participant_label_size Size. Flourish type hint: number, defaults to `NULL`
#' @param participant_label_stroke Outline. Flourish type hint: color, defaults to `NULL`
#' @param participant_label_stroke_size Outline width. As a % of the font size. Flourish type hint: number, defaults to `NULL`
#' @param participant_label_weight Weight. Choices: 400, 600. Flourish type hint: string, defaults to `NULL`
#' @param participant_highlight Highlight icons. Highlight the labeled participant(s). Flourish type hint: boolean, defaults to `NULL`
#' @param participant_highlight_color Highlight color. Flourish type hint: color, defaults to `NULL`
#' @param participant_highlight_width Highlight width. Flourish type hint: number, defaults to `NULL`
#' @param label_position_enabled Choices: `FALSE`, `TRUE`. Whether to show the position of the participant in the label. Flourish type hint: boolean, defaults to `NULL`
#' @param label_position_time Show position. Choices: always, race, finish. Set to At finish, to only show a participants position when theyve completed the race.  Set to During race, to only show a participants position while they are still racing. Flourish type hint: string, defaults to `NULL`
#' @param label_position_type Position to show. Choices: current, finish. Whether to show a participants current position in the race, or their finishing position. Flourish type hint: string, defaults to `NULL`
#' @param label_medal_enabled Choices: `FALSE`, `TRUE`. Flourish type hint: boolean, defaults to `NULL`
#' @param label_medal_time Show medals. Choices: always, race, finish. Set to At finish, to only show a participants medal when theyve completed the race.  Set to During race, to only show a participants medal while they are still racing. Flourish type hint: string, defaults to `NULL`
#' @param label_medal_type Medal to show. Choices: current, finish. Whether to show the medal position for a participant at the current point in the race, or the medal they win at the end of the race. Flourish type hint: string, defaults to `NULL`
#' @param label_medal_replace_position Replace position. Turn on to replace a participants position label with their medal if they are in a medal position. Flourish type hint: boolean, defaults to `NULL`
#' @param label_finishing_time_enabled Choices: `FALSE`, `TRUE`. Flourish type hint: boolean, defaults to `NULL`
#' @param label_finishing_time_time Show finishing time. Choices: always, finish. Flourish type hint: string, defaults to `NULL`
#' @param participant_stacking Choices: sheet_order, rank, y_position. Determines which participants obscure other participants when they overlap. Flourish type hint: string, defaults to `NULL`
#' @param chart_timeline_controls_enabled Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_timeline_controls_style Style. Choices: timeline, button. Flourish type hint: string, defaults to `NULL`
#' @param chart_timeline_controls_graph Show chart. Choices: `TRUE`, `FALSE`. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_timeline_controls_play_on_load Play on load. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_timeline_controls_loop Loop timeline. When turned on, the timeline will return to the beginning once complete. Otherwise, it will stop when it reaches the end. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_timeline_controls_duration Timeline duration. Total duration of the timeline during normal playback in seconds. Flourish type hint: number, defaults to `NULL`
#' @param chart_timeline_controls_duration_tween Time jump duration. Duration of transitions between different points in time on the timeline.  This is the transition you see in the story player when switching between slides with a different time on the timeline (in seconds). Flourish type hint: number, defaults to `NULL`
#' @param chart_timeline_controls_duration_wait_at_end Pause before loop. Flourish type hint: number, defaults to `NULL`
#' @param chart_timeline_controls_axes_custom_enabled Axis settings. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_timeline_controls_color_axes Axes color. Flourish type hint: color, defaults to `NULL`
#' @param chart_timeline_controls_axis_font_size Font size. Flourish type hint: number, defaults to `NULL`
#' @param chart_timeline_controls_date_format_display X axis date format. Choices:, %Y-%m-%dT%H:%M:%S.%LZ, %Y-%m-%d, %m/%d/%Y, %d/%m/%Y, %d-%b-%y, %m/%Y, %b %Y, %b %y, %B %d, %d %b, %Y, %B, %b, %A, %a, %H:%M:%S, %I:%M %p, %H:%M. Flourish type hint: string, defaults to `NULL`
#' @param chart_timeline_controls_axis_nice_x Clean X axis. Rounds out the X axis so that its start and end values are nice, round dates. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_timeline_controls_axis_nice_y Clean Y axis. Rounds out the Y axis so that its start and end values are nice, round numbers. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_timeline_controls_scrubber_snap Snap when scrubbing. When turned on, you can only jump to values that are supplied in the dataset and nothing in between. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_timeline_controls_scrubber_snap_paused Snap when paused. Activate to snap the timeline to the closest interval when non animating. This is useful for ensuring the data visible in the visualization always reflects the data you have supplied. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_timeline_controls_layout_settings Layout settings. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_timeline_controls_margin_top Top. Flourish type hint: number, defaults to `NULL`
#' @param chart_timeline_controls_margin_left Left. Flourish type hint: number, defaults to `NULL`
#' @param chart_timeline_controls_margin_bottom Bottom. Flourish type hint: number, defaults to `NULL`
#' @param chart_timeline_controls_margin_right Right. Flourish type hint: number, defaults to `NULL`
#' @param chart_timeline_controls_playback_button_margin_right Space between button and timeline. Flourish type hint: number, defaults to `NULL`
#' @param chart_timeline_controls_scrubber_height Scrubber height. Flourish type hint: number, defaults to `NULL`
#' @param chart_timeline_controls_playback_button_margin_right_button Space between button and text. Flourish type hint: number, defaults to `NULL`
#' @param chart_timeline_controls_graph_settings Chart settings. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_timeline_controls_color_background Background. Flourish type hint: color, defaults to `NULL`
#' @param chart_timeline_controls_graph_height Height. Flourish type hint: number, defaults to `NULL`
#' @param chart_timeline_controls_curve Curved lines. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_timeline_controls_playback_styling Play button settings. Flourish type hint: boolean, defaults to `NULL`
#' @param chart_timeline_controls_playback_button_button_color Button color. Flourish type hint: color, defaults to `NULL`
#' @param chart_timeline_controls_playback_button_button_size Button size. Flourish type hint: number, defaults to `NULL`
#' @param chart_timeline_controls_playback_button_icon_color Icon color. Flourish type hint: color, defaults to `NULL`
#' @param chart_timeline_controls_playback_button_icon_size Icon size. Flourish type hint: number, defaults to `NULL`
#' @param chart_timeline_controls_playback_button_label_size Label size. Flourish type hint: number, defaults to `NULL`
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
#'   flourish(chart_type = "sports_race", api_key = Sys.getenv("FLOURISH_API_KEY")) |>
#'   bind_sports_race_data(gapminder) |>
#'   set_sports_race_details()
#' )
#' @export

set_sports_race_details <- function(
    .,
    preset_svg = NULL,
    custom_svg = NULL,
    track_path_id = NULL,
    track_lane_width = NULL,
    track_back_and_forth = NULL,
    participant_icon_mode = NULL,
    participant_size = NULL,
    participant_stroke_width = NULL,
    participant_stroke_opacity = NULL,
    participant_fill_opacity = NULL,
    preset_participant_image = NULL,
    custom_participant_start_image = NULL,
    custom_participant_race_image = NULL,
    custom_participant_finish_image = NULL,
    image_initial_rotation = NULL,
    image_initial_flip_x = NULL,
    image_initial_flip_y = NULL,
    image_transform_mode = NULL,
    participant_icon_recolor = NULL,
    chart_participant_color_scale_categorical_palette = NULL,
    chart_participant_color_scale_categorical_extend = NULL,
    chart_participant_color_scale_categorical_custom_palette = NULL,
    chart_participant_color_scale_numeric_type = NULL,
    chart_participant_color_scale_binning = NULL,
    chart_participant_color_scale_bin_mode = NULL,
    chart_participant_color_scale_bin_count = NULL,
    chart_participant_color_scale_bin_thresholds = NULL,
    chart_participant_color_scale_sequential_palette = NULL,
    chart_participant_color_scale_sequential_reverse = NULL,
    chart_participant_color_scale_sequential_custom_min = NULL,
    chart_participant_color_scale_sequential_custom_max = NULL,
    chart_participant_color_scale_sequential_color_space = NULL,
    chart_participant_color_scale_sequential_custom_domain = NULL,
    chart_participant_color_scale_sequential_domain_min = NULL,
    chart_participant_color_scale_sequential_domain_max = NULL,
    chart_participant_color_scale_diverging_palette = NULL,
    chart_participant_color_scale_diverging_reverse = NULL,
    chart_participant_color_scale_diverging_custom_min = NULL,
    chart_participant_color_scale_diverging_custom_mid = NULL,
    chart_participant_color_scale_diverging_custom_max = NULL,
    chart_participant_color_scale_diverging_color_space = NULL,
    chart_participant_color_scale_diverging_custom_domain = NULL,
    chart_participant_color_scale_diverging_domain_min = NULL,
    chart_participant_color_scale_diverging_domain_mid = NULL,
    chart_participant_color_scale_diverging_domain_max = NULL,
    camera_mode = NULL,
    zoom = NULL,
    checkpoint_mode = NULL,
    checkpoints = NULL,
    times_cumulative = NULL,
    participant_label_mode = NULL,
    participant_label_custom = NULL,
    participant_label_position = NULL,
    participant_label_style = NULL,
    participant_label_color = NULL,
    participant_label_size = NULL,
    participant_label_stroke = NULL,
    participant_label_stroke_size = NULL,
    participant_label_weight = NULL,
    participant_highlight = NULL,
    participant_highlight_color = NULL,
    participant_highlight_width = NULL,
    label_position_enabled = NULL,
    label_position_time = NULL,
    label_position_type = NULL,
    label_medal_enabled = NULL,
    label_medal_time = NULL,
    label_medal_type = NULL,
    label_medal_replace_position = NULL,
    label_finishing_time_enabled = NULL,
    label_finishing_time_time = NULL,
    participant_stacking = NULL,
    chart_timeline_controls_enabled = NULL,
    chart_timeline_controls_style = NULL,
    chart_timeline_controls_graph = NULL,
    chart_timeline_controls_play_on_load = NULL,
    chart_timeline_controls_loop = NULL,
    chart_timeline_controls_duration = NULL,
    chart_timeline_controls_duration_tween = NULL,
    chart_timeline_controls_duration_wait_at_end = NULL,
    chart_timeline_controls_axes_custom_enabled = NULL,
    chart_timeline_controls_color_axes = NULL,
    chart_timeline_controls_axis_font_size = NULL,
    chart_timeline_controls_date_format_display = NULL,
    chart_timeline_controls_axis_nice_x = NULL,
    chart_timeline_controls_axis_nice_y = NULL,
    chart_timeline_controls_scrubber_snap = NULL,
    chart_timeline_controls_scrubber_snap_paused = NULL,
    chart_timeline_controls_layout_settings = NULL,
    chart_timeline_controls_margin_top = NULL,
    chart_timeline_controls_margin_left = NULL,
    chart_timeline_controls_margin_bottom = NULL,
    chart_timeline_controls_margin_right = NULL,
    chart_timeline_controls_playback_button_margin_right = NULL,
    chart_timeline_controls_scrubber_height = NULL,
    chart_timeline_controls_playback_button_margin_right_button = NULL,
    chart_timeline_controls_graph_settings = NULL,
    chart_timeline_controls_color_background = NULL,
    chart_timeline_controls_graph_height = NULL,
    chart_timeline_controls_curve = NULL,
    chart_timeline_controls_playback_styling = NULL,
    chart_timeline_controls_playback_button_button_color = NULL,
    chart_timeline_controls_playback_button_button_size = NULL,
    chart_timeline_controls_playback_button_icon_color = NULL,
    chart_timeline_controls_playback_button_icon_size = NULL,
    chart_timeline_controls_playback_button_label_size = NULL,
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
  details_error(., "sports_race")

  old_list <- .
  new_list <- list()

  if (isTRUE(old_list$x$template != "@flourish/sports-race")) {
    stop("`set_sports_race_details()` is not supported for this chart type.")
  }
  list_preset_svg <- c("athletics", "swimming", "cycling", "custom", NULL)
  if (!is.null(preset_svg)) {
    if (!preset_svg %in% list_preset_svg) {
      stop("`preset_svg` must be one of: c('athletics', 'swimming', 'cycling', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"athletics": "athletics", "swimming": "swimming", "cycling": "cycling", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"athletics": "athletics", "swimming": "swimming", "cycling": "cycling", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && preset_svg %in% names(named_list)) {
          if (is.logical(preset_svg)) {
            preset_svg <- as.character(preset_svg)
          }
          named_list_value <- unname(named_list[preset_svg])[[1]]
          new_list$x$state$preset_svg <- named_list_value
        }
      }
    }
  }
  if (length(custom_svg) > 1) {
    new_list$x$state$custom_svg <- paste(custom_svg, collapse = "\n")
  } else {
    new_list$x$state$custom_svg <- custom_svg
  }

  new_list$x$state$track_path_id <- track_path_id
  new_list$x$state$track_lane_width <- track_lane_width
  list_track_back_and_forth <- c(FALSE, TRUE, NULL)
  if (!is.null(track_back_and_forth)) {
    if (!track_back_and_forth %in% list_track_back_and_forth) {
      stop("`track_back_and_forth` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && track_back_and_forth %in% names(named_list)) {
          if (is.logical(track_back_and_forth)) {
            track_back_and_forth <- as.character(track_back_and_forth)
          }
          named_list_value <- unname(named_list[track_back_and_forth])[[1]]
          new_list$x$state$track_back_and_forth <- named_list_value
        }
      }
    }
  }
  list_participant_icon_mode <- c("circle", "image", NULL)
  if (!is.null(participant_icon_mode)) {
    if (!participant_icon_mode %in% list_participant_icon_mode) {
      stop("`participant_icon_mode` must be one of: c('circle', 'image')")
    } else {
      if (length(jsonlite::fromJSON('{"circle": "circle", "image": "image"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"circle": "circle", "image": "image"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && participant_icon_mode %in% names(named_list)) {
          if (is.logical(participant_icon_mode)) {
            participant_icon_mode <- as.character(participant_icon_mode)
          }
          named_list_value <- unname(named_list[participant_icon_mode])[[1]]
          new_list$x$state$participant_icon_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$participant_size <- participant_size
  new_list$x$state$participant_stroke_width <- participant_stroke_width
  new_list$x$state$participant_stroke_opacity <- participant_stroke_opacity
  new_list$x$state$participant_fill_opacity <- participant_fill_opacity
  list_preset_participant_image <- c("runner", "swimmer", "cyclist", "custom", NULL)
  if (!is.null(preset_participant_image)) {
    if (!preset_participant_image %in% list_preset_participant_image) {
      stop("`preset_participant_image` must be one of: c('runner', 'swimmer', 'cyclist', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"runner": "runner", "swimmer": "swimmer", "cyclist": "cyclist", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"runner": "runner", "swimmer": "swimmer", "cyclist": "cyclist", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && preset_participant_image %in% names(named_list)) {
          if (is.logical(preset_participant_image)) {
            preset_participant_image <- as.character(preset_participant_image)
          }
          named_list_value <- unname(named_list[preset_participant_image])[[1]]
          new_list$x$state$preset_participant_image <- named_list_value
        }
      }
    }
  }
  new_list$x$state$custom_participant_start_image <- custom_participant_start_image
  new_list$x$state$custom_participant_race_image <- custom_participant_race_image
  new_list$x$state$custom_participant_finish_image <- custom_participant_finish_image
  list_image_initial_rotation <- c("0", "90", "180", "270", NULL)
  if (!is.null(image_initial_rotation)) {
    if (!image_initial_rotation %in% list_image_initial_rotation) {
      stop("`image_initial_rotation` must be one of: c('0', '90', '180', '270')")
    } else {
      if (length(jsonlite::fromJSON('{"0": "0", "90": "90", "180": "180", "270": "270"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"0": "0", "90": "90", "180": "180", "270": "270"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && image_initial_rotation %in% names(named_list)) {
          if (is.logical(image_initial_rotation)) {
            image_initial_rotation <- as.character(image_initial_rotation)
          }
          named_list_value <- unname(named_list[image_initial_rotation])[[1]]
          new_list$x$state$image_initial_rotation <- named_list_value
        }
      }
    }
  }
  new_list$x$state$image_initial_flip_x <- image_initial_flip_x
  new_list$x$state$image_initial_flip_y <- image_initial_flip_y
  list_image_transform_mode <- c("rotate", "flip_x", "flip_y", "flip_both", "static", NULL)
  if (!is.null(image_transform_mode)) {
    if (!image_transform_mode %in% list_image_transform_mode) {
      stop("`image_transform_mode` must be one of: c('rotate', 'flip_x', 'flip_y', 'flip_both', 'static')")
    } else {
      if (length(jsonlite::fromJSON('{"rotate": "rotate", "flip_x": "flip_x", "flip_y": "flip_y", "flip_both": "flip_both", "static": "static"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"rotate": "rotate", "flip_x": "flip_x", "flip_y": "flip_y", "flip_both": "flip_both", "static": "static"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && image_transform_mode %in% names(named_list)) {
          if (is.logical(image_transform_mode)) {
            image_transform_mode <- as.character(image_transform_mode)
          }
          named_list_value <- unname(named_list[image_transform_mode])[[1]]
          new_list$x$state$image_transform_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$participant_icon_recolor <- participant_icon_recolor
  if (length(chart_participant_color_scale_categorical_palette) > 1) {
    new_list$x$state$participant_color$categorical_palette <- paste(chart_participant_color_scale_categorical_palette, collapse = "\n")
  } else {
    new_list$x$state$participant_color$categorical_palette <- chart_participant_color_scale_categorical_palette
  }

  new_list$x$state$participant_color$categorical_extend <- chart_participant_color_scale_categorical_extend
  if (length(chart_participant_color_scale_categorical_custom_palette) > 1) {
    new_list$x$state$participant_color$categorical_custom_palette <- paste(chart_participant_color_scale_categorical_custom_palette, collapse = "\n")
  } else {
    new_list$x$state$participant_color$categorical_custom_palette <- chart_participant_color_scale_categorical_custom_palette
  }

  list_chart_participant_color_scale_numeric_type <- c("sequential", "diverging", NULL)
  if (!is.null(chart_participant_color_scale_numeric_type)) {
    if (!chart_participant_color_scale_numeric_type %in% list_chart_participant_color_scale_numeric_type) {
      stop("`chart_participant_color_scale_numeric_type` must be one of: c('sequential', 'diverging')")
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
        if (length(named_list) > 1 && chart_participant_color_scale_numeric_type %in% names(named_list)) {
          if (is.logical(chart_participant_color_scale_numeric_type)) {
            chart_participant_color_scale_numeric_type <- as.character(chart_participant_color_scale_numeric_type)
          }
          named_list_value <- unname(named_list[chart_participant_color_scale_numeric_type])[[1]]
          new_list$x$state$participant_color$numeric_type <- named_list_value
        }
      }
    }
  }
  list_chart_participant_color_scale_binning <- c(FALSE, TRUE, NULL)
  if (!is.null(chart_participant_color_scale_binning)) {
    if (!chart_participant_color_scale_binning %in% list_chart_participant_color_scale_binning) {
      stop("`chart_participant_color_scale_binning` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && chart_participant_color_scale_binning %in% names(named_list)) {
          if (is.logical(chart_participant_color_scale_binning)) {
            chart_participant_color_scale_binning <- as.character(chart_participant_color_scale_binning)
          }
          named_list_value <- unname(named_list[chart_participant_color_scale_binning])[[1]]
          new_list$x$state$participant_color$binning <- named_list_value
        }
      }
    }
  }
  list_chart_participant_color_scale_bin_mode <- c("fixed", "quantile", "custom", NULL)
  if (!is.null(chart_participant_color_scale_bin_mode)) {
    if (!chart_participant_color_scale_bin_mode %in% list_chart_participant_color_scale_bin_mode) {
      stop("`chart_participant_color_scale_bin_mode` must be one of: c('fixed', 'quantile', 'custom')")
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
        if (length(named_list) > 1 && chart_participant_color_scale_bin_mode %in% names(named_list)) {
          if (is.logical(chart_participant_color_scale_bin_mode)) {
            chart_participant_color_scale_bin_mode <- as.character(chart_participant_color_scale_bin_mode)
          }
          named_list_value <- unname(named_list[chart_participant_color_scale_bin_mode])[[1]]
          new_list$x$state$participant_color$bin_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$participant_color$bin_count <- chart_participant_color_scale_bin_count
  new_list$x$state$participant_color$bin_thresholds <- chart_participant_color_scale_bin_thresholds
  new_list$x$state$participant_color$sequential_palette <- chart_participant_color_scale_sequential_palette
  new_list$x$state$participant_color$sequential_reverse <- chart_participant_color_scale_sequential_reverse
  new_list$x$state$participant_color$sequential_custom_min <- chart_participant_color_scale_sequential_custom_min
  new_list$x$state$participant_color$sequential_custom_max <- chart_participant_color_scale_sequential_custom_max
  list_chart_participant_color_scale_sequential_color_space <- c("rgb", "lab", "hcl", "hsl", NULL)
  if (!is.null(chart_participant_color_scale_sequential_color_space)) {
    if (!chart_participant_color_scale_sequential_color_space %in% list_chart_participant_color_scale_sequential_color_space) {
      stop("`chart_participant_color_scale_sequential_color_space` must be one of: c('rgb', 'lab', 'hcl', 'hsl')")
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
        if (length(named_list) > 1 && chart_participant_color_scale_sequential_color_space %in% names(named_list)) {
          if (is.logical(chart_participant_color_scale_sequential_color_space)) {
            chart_participant_color_scale_sequential_color_space <- as.character(chart_participant_color_scale_sequential_color_space)
          }
          named_list_value <- unname(named_list[chart_participant_color_scale_sequential_color_space])[[1]]
          new_list$x$state$participant_color$sequential_color_space <- named_list_value
        }
      }
    }
  }
  list_chart_participant_color_scale_sequential_custom_domain <- c(FALSE, TRUE, NULL)
  if (!is.null(chart_participant_color_scale_sequential_custom_domain)) {
    if (!chart_participant_color_scale_sequential_custom_domain %in% list_chart_participant_color_scale_sequential_custom_domain) {
      stop("`chart_participant_color_scale_sequential_custom_domain` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && chart_participant_color_scale_sequential_custom_domain %in% names(named_list)) {
          if (is.logical(chart_participant_color_scale_sequential_custom_domain)) {
            chart_participant_color_scale_sequential_custom_domain <- as.character(chart_participant_color_scale_sequential_custom_domain)
          }
          named_list_value <- unname(named_list[chart_participant_color_scale_sequential_custom_domain])[[1]]
          new_list$x$state$participant_color$sequential_custom_domain <- named_list_value
        }
      }
    }
  }
  new_list$x$state$participant_color$sequential_domain_min <- chart_participant_color_scale_sequential_domain_min
  new_list$x$state$participant_color$sequential_domain_max <- chart_participant_color_scale_sequential_domain_max
  new_list$x$state$participant_color$diverging_palette <- chart_participant_color_scale_diverging_palette
  new_list$x$state$participant_color$diverging_reverse <- chart_participant_color_scale_diverging_reverse
  new_list$x$state$participant_color$diverging_custom_min <- chart_participant_color_scale_diverging_custom_min
  new_list$x$state$participant_color$diverging_custom_mid <- chart_participant_color_scale_diverging_custom_mid
  new_list$x$state$participant_color$diverging_custom_max <- chart_participant_color_scale_diverging_custom_max
  list_chart_participant_color_scale_diverging_color_space <- c("rgb", "lab", "hcl", "hsl", NULL)
  if (!is.null(chart_participant_color_scale_diverging_color_space)) {
    if (!chart_participant_color_scale_diverging_color_space %in% list_chart_participant_color_scale_diverging_color_space) {
      stop("`chart_participant_color_scale_diverging_color_space` must be one of: c('rgb', 'lab', 'hcl', 'hsl')")
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
        if (length(named_list) > 1 && chart_participant_color_scale_diverging_color_space %in% names(named_list)) {
          if (is.logical(chart_participant_color_scale_diverging_color_space)) {
            chart_participant_color_scale_diverging_color_space <- as.character(chart_participant_color_scale_diverging_color_space)
          }
          named_list_value <- unname(named_list[chart_participant_color_scale_diverging_color_space])[[1]]
          new_list$x$state$participant_color$diverging_color_space <- named_list_value
        }
      }
    }
  }
  list_chart_participant_color_scale_diverging_custom_domain <- c(FALSE, TRUE, NULL)
  if (!is.null(chart_participant_color_scale_diverging_custom_domain)) {
    if (!chart_participant_color_scale_diverging_custom_domain %in% list_chart_participant_color_scale_diverging_custom_domain) {
      stop("`chart_participant_color_scale_diverging_custom_domain` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && chart_participant_color_scale_diverging_custom_domain %in% names(named_list)) {
          if (is.logical(chart_participant_color_scale_diverging_custom_domain)) {
            chart_participant_color_scale_diverging_custom_domain <- as.character(chart_participant_color_scale_diverging_custom_domain)
          }
          named_list_value <- unname(named_list[chart_participant_color_scale_diverging_custom_domain])[[1]]
          new_list$x$state$participant_color$diverging_custom_domain <- named_list_value
        }
      }
    }
  }
  new_list$x$state$participant_color$diverging_domain_min <- chart_participant_color_scale_diverging_domain_min
  new_list$x$state$participant_color$diverging_domain_mid <- chart_participant_color_scale_diverging_domain_mid
  new_list$x$state$participant_color$diverging_domain_max <- chart_participant_color_scale_diverging_domain_max
  list_camera_mode <- c("track", "leader", NULL)
  if (!is.null(camera_mode)) {
    if (!camera_mode %in% list_camera_mode) {
      stop("`camera_mode` must be one of: c('track', 'leader')")
    } else {
      if (length(jsonlite::fromJSON('{"track": "track", "leader": "leader"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"track": "track", "leader": "leader"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && camera_mode %in% names(named_list)) {
          if (is.logical(camera_mode)) {
            camera_mode <- as.character(camera_mode)
          }
          named_list_value <- unname(named_list[camera_mode])[[1]]
          new_list$x$state$camera_mode <- named_list_value
        }
      }
    }
  }
  new_list$x$state$zoom <- zoom
  list_checkpoint_mode <- c("laps", "splits", "custom", NULL)
  if (!is.null(checkpoint_mode)) {
    if (!checkpoint_mode %in% list_checkpoint_mode) {
      stop("`checkpoint_mode` must be one of: c('laps', 'splits', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"laps": "laps", "splits": "splits", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"laps": "laps", "splits": "splits", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && checkpoint_mode %in% names(named_list)) {
          if (is.logical(checkpoint_mode)) {
            checkpoint_mode <- as.character(checkpoint_mode)
          }
          named_list_value <- unname(named_list[checkpoint_mode])[[1]]
          new_list$x$state$checkpoint_mode <- named_list_value
        }
      }
    }
  }
  if (length(checkpoints) > 1) {
    new_list$x$state$checkpoints <- paste(checkpoints, collapse = "\n")
  } else {
    new_list$x$state$checkpoints <- checkpoints
  }

  new_list$x$state$times_cumulative <- times_cumulative
  list_participant_label_mode <- c("auto", "leader", "all", "custom", NULL)
  if (!is.null(participant_label_mode)) {
    if (!participant_label_mode %in% list_participant_label_mode) {
      stop("`participant_label_mode` must be one of: c('auto', 'leader', 'all', 'custom')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "leader": "leader", "all": "all", "custom": "custom"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "leader": "leader", "all": "all", "custom": "custom"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && participant_label_mode %in% names(named_list)) {
          if (is.logical(participant_label_mode)) {
            participant_label_mode <- as.character(participant_label_mode)
          }
          named_list_value <- unname(named_list[participant_label_mode])[[1]]
          new_list$x$state$participant_label_mode <- named_list_value
        }
      }
    }
  }
  if (length(participant_label_custom) > 1) {
    new_list$x$state$participant_label_custom <- paste(participant_label_custom, collapse = "\n")
  } else {
    new_list$x$state$participant_label_custom <- participant_label_custom
  }

  list_participant_label_position <- c("auto", "left", "right", NULL)
  if (!is.null(participant_label_position)) {
    if (!participant_label_position %in% list_participant_label_position) {
      stop("`participant_label_position` must be one of: c('auto', 'left', 'right')")
    } else {
      if (length(jsonlite::fromJSON('{"auto": "auto", "left": "left", "right": "right"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"auto": "auto", "left": "left", "right": "right"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && participant_label_position %in% names(named_list)) {
          if (is.logical(participant_label_position)) {
            participant_label_position <- as.character(participant_label_position)
          }
          named_list_value <- unname(named_list[participant_label_position])[[1]]
          new_list$x$state$participant_label_position <- named_list_value
        }
      }
    }
  }
  new_list$x$state$participant_label_style <- participant_label_style
  new_list$x$state$participant_label_color <- participant_label_color
  new_list$x$state$participant_label_size <- participant_label_size
  new_list$x$state$participant_label_stroke <- participant_label_stroke
  new_list$x$state$participant_label_stroke_size <- participant_label_stroke_size
  list_participant_label_weight <- c("400", "600", NULL)
  if (!is.null(participant_label_weight)) {
    if (!participant_label_weight %in% list_participant_label_weight) {
      stop("`participant_label_weight` must be one of: c('400', '600')")
    } else {
      if (length(jsonlite::fromJSON('{"400": "400", "600": "600"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"400": "400", "600": "600"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && participant_label_weight %in% names(named_list)) {
          if (is.logical(participant_label_weight)) {
            participant_label_weight <- as.character(participant_label_weight)
          }
          named_list_value <- unname(named_list[participant_label_weight])[[1]]
          new_list$x$state$participant_label_weight <- named_list_value
        }
      }
    }
  }
  new_list$x$state$participant_highlight <- participant_highlight
  new_list$x$state$participant_highlight_color <- participant_highlight_color
  new_list$x$state$participant_highlight_width <- participant_highlight_width
  list_label_position_enabled <- c(FALSE, TRUE, NULL)
  if (!is.null(label_position_enabled)) {
    if (!label_position_enabled %in% list_label_position_enabled) {
      stop("`label_position_enabled` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && label_position_enabled %in% names(named_list)) {
          if (is.logical(label_position_enabled)) {
            label_position_enabled <- as.character(label_position_enabled)
          }
          named_list_value <- unname(named_list[label_position_enabled])[[1]]
          new_list$x$state$label_position_enabled <- named_list_value
        }
      }
    }
  }
  list_label_position_time <- c("always", "race", "finish", NULL)
  if (!is.null(label_position_time)) {
    if (!label_position_time %in% list_label_position_time) {
      stop("`label_position_time` must be one of: c('always', 'race', 'finish')")
    } else {
      if (length(jsonlite::fromJSON('{"always": "always", "race": "race", "finish": "finish"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"always": "always", "race": "race", "finish": "finish"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && label_position_time %in% names(named_list)) {
          if (is.logical(label_position_time)) {
            label_position_time <- as.character(label_position_time)
          }
          named_list_value <- unname(named_list[label_position_time])[[1]]
          new_list$x$state$label_position_time <- named_list_value
        }
      }
    }
  }
  list_label_position_type <- c("current", "finish", NULL)
  if (!is.null(label_position_type)) {
    if (!label_position_type %in% list_label_position_type) {
      stop("`label_position_type` must be one of: c('current', 'finish')")
    } else {
      if (length(jsonlite::fromJSON('{"current": "current", "finish": "finish"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"current": "current", "finish": "finish"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && label_position_type %in% names(named_list)) {
          if (is.logical(label_position_type)) {
            label_position_type <- as.character(label_position_type)
          }
          named_list_value <- unname(named_list[label_position_type])[[1]]
          new_list$x$state$label_position_type <- named_list_value
        }
      }
    }
  }
  list_label_medal_enabled <- c(FALSE, TRUE, NULL)
  if (!is.null(label_medal_enabled)) {
    if (!label_medal_enabled %in% list_label_medal_enabled) {
      stop("`label_medal_enabled` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && label_medal_enabled %in% names(named_list)) {
          if (is.logical(label_medal_enabled)) {
            label_medal_enabled <- as.character(label_medal_enabled)
          }
          named_list_value <- unname(named_list[label_medal_enabled])[[1]]
          new_list$x$state$label_medal_enabled <- named_list_value
        }
      }
    }
  }
  list_label_medal_time <- c("always", "race", "finish", NULL)
  if (!is.null(label_medal_time)) {
    if (!label_medal_time %in% list_label_medal_time) {
      stop("`label_medal_time` must be one of: c('always', 'race', 'finish')")
    } else {
      if (length(jsonlite::fromJSON('{"always": "always", "race": "race", "finish": "finish"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"always": "always", "race": "race", "finish": "finish"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && label_medal_time %in% names(named_list)) {
          if (is.logical(label_medal_time)) {
            label_medal_time <- as.character(label_medal_time)
          }
          named_list_value <- unname(named_list[label_medal_time])[[1]]
          new_list$x$state$label_medal_time <- named_list_value
        }
      }
    }
  }
  list_label_medal_type <- c("current", "finish", NULL)
  if (!is.null(label_medal_type)) {
    if (!label_medal_type %in% list_label_medal_type) {
      stop("`label_medal_type` must be one of: c('current', 'finish')")
    } else {
      if (length(jsonlite::fromJSON('{"current": "current", "finish": "finish"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"current": "current", "finish": "finish"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && label_medal_type %in% names(named_list)) {
          if (is.logical(label_medal_type)) {
            label_medal_type <- as.character(label_medal_type)
          }
          named_list_value <- unname(named_list[label_medal_type])[[1]]
          new_list$x$state$label_medal_type <- named_list_value
        }
      }
    }
  }
  new_list$x$state$label_medal_replace_position <- label_medal_replace_position
  list_label_finishing_time_enabled <- c(FALSE, TRUE, NULL)
  if (!is.null(label_finishing_time_enabled)) {
    if (!label_finishing_time_enabled %in% list_label_finishing_time_enabled) {
      stop("`label_finishing_time_enabled` must be one of: c(FALSE, TRUE)")
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
        if (length(named_list) > 1 && label_finishing_time_enabled %in% names(named_list)) {
          if (is.logical(label_finishing_time_enabled)) {
            label_finishing_time_enabled <- as.character(label_finishing_time_enabled)
          }
          named_list_value <- unname(named_list[label_finishing_time_enabled])[[1]]
          new_list$x$state$label_finishing_time_enabled <- named_list_value
        }
      }
    }
  }
  list_label_finishing_time_time <- c("always", "finish", NULL)
  if (!is.null(label_finishing_time_time)) {
    if (!label_finishing_time_time %in% list_label_finishing_time_time) {
      stop("`label_finishing_time_time` must be one of: c('always', 'finish')")
    } else {
      if (length(jsonlite::fromJSON('{"always": "always", "finish": "finish"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"always": "always", "finish": "finish"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && label_finishing_time_time %in% names(named_list)) {
          if (is.logical(label_finishing_time_time)) {
            label_finishing_time_time <- as.character(label_finishing_time_time)
          }
          named_list_value <- unname(named_list[label_finishing_time_time])[[1]]
          new_list$x$state$label_finishing_time_time <- named_list_value
        }
      }
    }
  }
  list_participant_stacking <- c("sheet_order", "rank", "y_position", NULL)
  if (!is.null(participant_stacking)) {
    if (!participant_stacking %in% list_participant_stacking) {
      stop("`participant_stacking` must be one of: c('sheet_order', 'rank', 'y_position')")
    } else {
      if (length(jsonlite::fromJSON('{"sheet_order": "sheet_order", "rank": "rank", "y_position": "y_position"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"sheet_order": "sheet_order", "rank": "rank", "y_position": "y_position"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && participant_stacking %in% names(named_list)) {
          if (is.logical(participant_stacking)) {
            participant_stacking <- as.character(participant_stacking)
          }
          named_list_value <- unname(named_list[participant_stacking])[[1]]
          new_list$x$state$participant_stacking <- named_list_value
        }
      }
    }
  }
  list_chart_timeline_controls_enabled <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_timeline_controls_enabled)) {
    if (!chart_timeline_controls_enabled %in% list_chart_timeline_controls_enabled) {
      stop("`chart_timeline_controls_enabled` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_timeline_controls_enabled %in% names(named_list)) {
          if (is.logical(chart_timeline_controls_enabled)) {
            chart_timeline_controls_enabled <- as.character(chart_timeline_controls_enabled)
          }
          named_list_value <- unname(named_list[chart_timeline_controls_enabled])[[1]]
          new_list$x$state$timeline$enabled <- named_list_value
        }
      }
    }
  }
  list_chart_timeline_controls_style <- c("timeline", "button", NULL)
  if (!is.null(chart_timeline_controls_style)) {
    if (!chart_timeline_controls_style %in% list_chart_timeline_controls_style) {
      stop("`chart_timeline_controls_style` must be one of: c('timeline', 'button')")
    } else {
      if (length(jsonlite::fromJSON('{"timeline": "timeline", "button": "button"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"timeline": "timeline", "button": "button"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_timeline_controls_style %in% names(named_list)) {
          if (is.logical(chart_timeline_controls_style)) {
            chart_timeline_controls_style <- as.character(chart_timeline_controls_style)
          }
          named_list_value <- unname(named_list[chart_timeline_controls_style])[[1]]
          new_list$x$state$timeline$style <- named_list_value
        }
      }
    }
  }
  list_chart_timeline_controls_graph <- c(TRUE, FALSE, NULL)
  if (!is.null(chart_timeline_controls_graph)) {
    if (!chart_timeline_controls_graph %in% list_chart_timeline_controls_graph) {
      stop("`chart_timeline_controls_graph` must be one of: c(TRUE, FALSE)")
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
        if (length(named_list) > 1 && chart_timeline_controls_graph %in% names(named_list)) {
          if (is.logical(chart_timeline_controls_graph)) {
            chart_timeline_controls_graph <- as.character(chart_timeline_controls_graph)
          }
          named_list_value <- unname(named_list[chart_timeline_controls_graph])[[1]]
          new_list$x$state$timeline$graph <- named_list_value
        }
      }
    }
  }
  new_list$x$state$timeline$play_on_load <- chart_timeline_controls_play_on_load
  new_list$x$state$timeline$loop <- chart_timeline_controls_loop
  new_list$x$state$timeline$duration <- chart_timeline_controls_duration
  new_list$x$state$timeline$duration_tween <- chart_timeline_controls_duration_tween
  new_list$x$state$timeline$duration_wait_at_end <- chart_timeline_controls_duration_wait_at_end
  new_list$x$state$timeline$axes_custom_enabled <- chart_timeline_controls_axes_custom_enabled
  new_list$x$state$timeline$color_axes <- chart_timeline_controls_color_axes
  new_list$x$state$timeline$axis_font_size <- chart_timeline_controls_axis_font_size
  list_chart_timeline_controls_date_format_display <- c("", "%Y-%m-%dT%H:%M:%S.%LZ", "%Y-%m-%d", "%m/%d/%Y", "%d/%m/%Y", "%d-%b-%y", "%m/%Y", "%b %Y", "%b %y", "%B %d", "%d %b", "%Y", "%B", "%b", "%A", "%a", "%H:%M:%S", "%I:%M %p", "%H:%M", NULL)
  if (!is.null(chart_timeline_controls_date_format_display)) {
    if (!chart_timeline_controls_date_format_display %in% list_chart_timeline_controls_date_format_display) {
      stop("`chart_timeline_controls_date_format_display` must be one of: c('', '%Y-%m-%dT%H:%M:%S.%LZ', '%Y-%m-%d', '%m/%d/%Y', '%d/%m/%Y', '%d-%b-%y', '%m/%Y', '%b %Y', '%b %y', '%B %d', '%d %b', '%Y', '%B', '%b', '%A', '%a', '%H:%M:%S', '%I:%M %p', '%H:%M')")
    } else {
      if (length(jsonlite::fromJSON('{"": "", "%Y-%m-%dT%H:%M:%S.%LZ": "%Y-%m-%dT%H:%M:%S.%LZ", "%Y-%m-%d": "%Y-%m-%d", "%m/%d/%Y": "%m/%d/%Y", "%d/%m/%Y": "%d/%m/%Y", "%d-%b-%y": "%d-%b-%y", "%m/%Y": "%m/%Y", "%b %Y": "%b %Y", "%b %y": "%b %y", "%B %d": "%B %d", "%d %b": "%d %b", "%Y": "%Y", "%B": "%B", "%b": "%b", "%A": "%A", "%a": "%a", "%H:%M:%S": "%H:%M:%S", "%I:%M %p": "%I:%M %p", "%H:%M": "%H:%M"}')) > 1) {
        named_list <- jsonlite::fromJSON('{"": "", "%Y-%m-%dT%H:%M:%S.%LZ": "%Y-%m-%dT%H:%M:%S.%LZ", "%Y-%m-%d": "%Y-%m-%d", "%m/%d/%Y": "%m/%d/%Y", "%d/%m/%Y": "%d/%m/%Y", "%d-%b-%y": "%d-%b-%y", "%m/%Y": "%m/%Y", "%b %Y": "%b %Y", "%b %y": "%b %y", "%B %d": "%B %d", "%d %b": "%d %b", "%Y": "%Y", "%B": "%B", "%b": "%b", "%A": "%A", "%a": "%a", "%H:%M:%S": "%H:%M:%S", "%I:%M %p": "%I:%M %p", "%H:%M": "%H:%M"}')
        # Get the names of the list
        names_list <- names(named_list)
        # Convert names to boolean values only if they are "true" or "false"
        boolean_names <- sapply(names_list, function(x) {
          if (x == "true") {
            return("TRUE")
          } else if (x == "false") {
            return("FALSE")
          } else {
            return(x) # Return the original name if it's not "true" or "false"
          }
        })
        # Set the names of the list to boolean values
        names(named_list) <- boolean_names
        if (length(named_list) > 1 && chart_timeline_controls_date_format_display %in% names(named_list)) {
          if (is.logical(chart_timeline_controls_date_format_display)) {
            chart_timeline_controls_date_format_display <- as.character(chart_timeline_controls_date_format_display)
          }
          named_list_value <- unname(named_list[chart_timeline_controls_date_format_display])[[1]]
          new_list$x$state$timeline$date_format_display <- named_list_value
        }
      }
    }
  }
  new_list$x$state$timeline$axis_nice_x <- chart_timeline_controls_axis_nice_x
  new_list$x$state$timeline$axis_nice_y <- chart_timeline_controls_axis_nice_y
  new_list$x$state$timeline$scrubber_snap <- chart_timeline_controls_scrubber_snap
  new_list$x$state$timeline$scrubber_snap_paused <- chart_timeline_controls_scrubber_snap_paused
  new_list$x$state$timeline$layout_settings <- chart_timeline_controls_layout_settings
  new_list$x$state$timeline$margin$top <- chart_timeline_controls_margin_top
  new_list$x$state$timeline$margin$left <- chart_timeline_controls_margin_left
  new_list$x$state$timeline$margin$bottom <- chart_timeline_controls_margin_bottom
  new_list$x$state$timeline$margin$right <- chart_timeline_controls_margin_right
  new_list$x$state$timeline$playback_button$margin_right <- chart_timeline_controls_playback_button_margin_right
  new_list$x$state$timeline$scrubber_height <- chart_timeline_controls_scrubber_height
  new_list$x$state$timeline$playback_button$margin_right_button <- chart_timeline_controls_playback_button_margin_right_button
  new_list$x$state$timeline$graph_settings <- chart_timeline_controls_graph_settings
  new_list$x$state$timeline$color_background <- chart_timeline_controls_color_background
  new_list$x$state$timeline$graph_height <- chart_timeline_controls_graph_height
  new_list$x$state$timeline$curve <- chart_timeline_controls_curve
  new_list$x$state$timeline$playback_styling <- chart_timeline_controls_playback_styling
  new_list$x$state$timeline$playback_button$button_color <- chart_timeline_controls_playback_button_button_color
  new_list$x$state$timeline$playback_button$button_size <- chart_timeline_controls_playback_button_button_size
  new_list$x$state$timeline$playback_button$icon_color <- chart_timeline_controls_playback_button_icon_color
  new_list$x$state$timeline$playback_button$icon_size <- chart_timeline_controls_playback_button_icon_size
  new_list$x$state$timeline$playback_button$label_size <- chart_timeline_controls_playback_button_label_size
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
