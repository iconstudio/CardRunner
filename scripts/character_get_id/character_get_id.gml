/// @description character_get_id(id)
/// @function character_get_id
/// @param id { string }
if ds_map_exists(global.player_character_list, argument0)
	return ds_map_find_value(global.player_character_list, argument0)
else
	return noone
