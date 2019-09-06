/// @description 도입부 진행
if scene_goto_next {
	var next = scene.next
	if next == noone
		room_goto_next()
	else
		scene = instance_create_layer(0, 0, "system_below", next)

	scene_goto_next = false
}
