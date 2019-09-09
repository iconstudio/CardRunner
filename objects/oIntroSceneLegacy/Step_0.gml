/// @description 갱신
if lifespan_time < lifespan_period {
	lifespan_time++
} else {
	oIntro.scene_goto_next = true
}
