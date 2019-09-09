/// @description 도입부 장면 초기화
next = oIntroScene02

event_user(0)
raise_time = 0
raise_period = seconds(0.7)
raise_easer = ease_out_elastic
fadein_time = 0
fadein_period = seconds(1.1)
fadein_easer = ease_out_expo
shown_time = 0
shown_period = seconds(1)
shrink_time = 0
shrink_period = seconds(0.4)
shrink_easer = ease_in_cubic

x = global.rs_gui_width * 0.5
y = global.rs_gui_height * 0.5

draw_set_font(fontIntro)
draw_set_halign(1)
draw_set_valign(1)
draw_set_color($ffffff)
image_alpha = 0
image_xscale = 0
