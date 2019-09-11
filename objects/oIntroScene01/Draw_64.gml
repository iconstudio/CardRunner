/// @description 글자 표시
draw_set_alpha(image_alpha)
if 0 < disappear_time {
	draw_set_halign(0)
	var capchar_coordinate, capchar_target_coordinate, capchar_draw_x, capchar_draw_y, capchar_ratio
	for (var i = 0; i < caption_length; ++i) {
		capchar_coordinate = capchar_coordinates[i]
		capchar_target_coordinate = capchar_target_coordinates[i]
		capchar_ratio = script_execute(disappear_easer, disappear_time / disappear_period)
		capchar_draw_x = lerp(capchar_coordinate[0], capchar_target_coordinate[0], capchar_ratio)
		capchar_draw_y = lerp(capchar_coordinate[1], capchar_target_coordinate[1], capchar_ratio)

		draw_text_transformed(capchar_draw_x, capchar_draw_y, string_char_at(caption, i + 1), image_xscale, image_xscale, 0)
	}
} else {
	draw_set_halign(1)
	draw_text_transformed(x, y, caption, image_xscale, image_xscale, 0)
}
