/// @description character_register(id, character)
/// @function character_register
/// @param id { string }
/// @param character { object }
with instance_create_layer(0, 0, "system_below", argument1) {
	attribute_id = argument0

	ds_map_add(global.player_character_list, attribute_id, id)

	return id
}
