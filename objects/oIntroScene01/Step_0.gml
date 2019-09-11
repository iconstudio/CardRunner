/// @description 갱신
if fadein_time < fadein_period {
	image_alpha = script_execute(fadein_easer, fadein_time / fadein_period)

	if fadein_period <= ++fadein_time
		image_alpha = 1
}

if raise_time < raise_period {
	image_xscale = script_execute(raise_easer, raise_time / raise_period)

	if raise_period <= ++raise_time
		image_xscale = 1
} else if shown_time < shown_period {
	// 대기

	shown_time++
} else if disappear_time < disappear_period {
	disappear_time++
	//image_xscale = script_execute(shrink_easer, 1 - shrink_time / shrink_period)

	//if shrink_period <= ++shrink_time
	//	image_xscale = 0
} else {
	oIntro.scene_goto_next = true
}
