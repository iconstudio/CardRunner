/// @description 글자 표시
draw_clear_alpha(0, 0.9)

draw_set_alpha(image_alpha)
if 0 < disappear_time {
	draw_set_halign(0)
	var capchar, capchar_coordinate, capchar_target_coordinate, capchar_delay_begin
	var i, capchar_draw_x, capchar_draw_y, capchar_ratio_raw, capchar_ratio
	for (i = 0; i < caption_length; ++i) {
		capchar = capchar_information[i]
		capchar_coordinate = capchar[0]
		capchar_target_coordinate = capchar[1]
		capchar_delay_begin = capchar[2]

		if capchar_delay_begin < disappear_time
			capchar_ratio_raw = (disappear_time - capchar_delay_begin) / (disappear_period - capchar_delay_begin)
		else
			capchar_ratio_raw = 0
		capchar_ratio = script_execute(disappear_easer, capchar_ratio_raw)
		capchar_draw_x = lerp(capchar_coordinate[0], capchar_target_coordinate[0], capchar_ratio)
		capchar_draw_y = lerp(capchar_coordinate[1], capchar_target_coordinate[1], capchar_ratio)

		draw_text_transformed(capchar_draw_x, capchar_draw_y, string_char_at(caption, i + 1), image_xscale, image_xscale, 0)
	}
} else {
	draw_set_halign(1)
	draw_text_transformed(x, y, caption, image_xscale, image_xscale, 0)
}
