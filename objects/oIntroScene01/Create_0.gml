/// @description 도입부 장면 초기화
next = oIntroScene02

draw_set_font(fontIntro)
draw_set_valign(1)
draw_set_color($ffffff)
image_alpha = 0
image_xscale = 0
x = global.rs_gui_width * 0.5
y = global.rs_gui_height * 0.5

event_user(0)
raise_time = 0
raise_period = seconds(0.6)
raise_easer = ease_out_elastic
fadein_time = 0
fadein_period = seconds(1.1)
fadein_easer = ease_out_expo

shown_time = 0
shown_period = seconds(0.8)

disappear_time = 0
disappear_period = seconds(0.4)
disappear_easer = ease_in_cubic

boundary_width = room_width * 0.5 + 160
boundary_height = room_height * 0.5 + 160
caption_length = string_length(caption)
caption_width = string_width(caption)
capchar_coordinates = []
capchar_target_coordinates = []

var i, angle, capchar_size = 0, intersect_horizontal, intersect_vertical, intersect_tangent, intersect_x, intersect_y
for (i = 0; i < caption_length; ++i) {
	angle = random(360)
	intersect_horizontal = lengthdir_x(1, angle)
	intersect_vertical = lengthdir_y(1, angle)
	intersect_tangent = intersect_vertical / intersect_horizontal
	intersect_x = min(abs(-1 / intersect_tangent), 1) * sign(intersect_horizontal) * boundary_width
	intersect_y = min(abs(intersect_tangent), 1) * sign(intersect_vertical) * boundary_height

	capchar_coordinates[i] = [x - caption_width * 0.5 + capchar_size, y]
	capchar_size += string_width(string_char_at(caption, i + 1))
	capchar_target_coordinates[i] = [x + intersect_x, y + intersect_y]
}
