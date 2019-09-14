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
disappear_period = seconds(0.6)
disappear_easer = ease_in_cubic
end_await_time = 0
end_await_period = seconds(0.4)

boundary_width = room_width * 0.5 + 160
boundary_height = room_height * 0.5 + 160
caption_length = string_length(caption)
caption_width = string_width(caption)
//capchar_coordinates = []
//capchar_target_coordinates = []
capchar_information = []
capchar_delay_max = seconds(0.1)

var capchar_size = 0
var i, angle, intersect_horizontal, intersect_vertical, intersect_tangent, intersect_x, intersect_y
for (i = 0; i < caption_length; ++i) {
	angle = random(360)
	intersect_horizontal = lengthdir_x(1, angle)
	intersect_vertical = lengthdir_y(1, angle)
	intersect_tangent = intersect_vertical / intersect_horizontal
	intersect_x = min(abs(-1 / intersect_tangent), 1) * sign(intersect_horizontal) * boundary_width
	intersect_y = min(abs(intersect_tangent), 1) * sign(intersect_vertical) * boundary_height

	capchar_information[i] = [[x - caption_width * 0.5 + capchar_size, y], [x + intersect_x, y + intersect_y], random(capchar_delay_max)]

	capchar_size += string_width(string_char_at(caption, i + 1))
}
