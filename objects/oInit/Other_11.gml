/// @description 외향 설정
game_set_speed(100, gamespeed_fps)

if os_type == os_android or os_type == os_ios {
	audio_channel_num(64)

	window_set_fullscreen(true)
} else if os_browser == browser_not_a_browser {
	audio_channel_num(128)
} else {
	audio_channel_num(16)
}

global.rs_gui_width = display_get_gui_width()
global.rs_gui_height = display_get_gui_height()
