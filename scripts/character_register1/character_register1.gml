/// @description character_register(id, name, health, speed, attributes)
/// @function character_register
/// @param id { string }
/// @param name { string }
/// @param health { integer }
/// @param speed { real }
/// @param attributes { array }
var character_one = instance_create_layer(0, 0, "system_below", oDummy)
with character_one {
	attribute_id = argument0
	attribute_name = argument1
	attribute_health_max = argument2
	attribute_health = attribute_health_max
	attribute_speed = argument3

	var attribute_list = argument4

	instance_change(oCharacter, true)

	ds_map_add(global.player_character_list, attribute_id, id)
	return id
}
