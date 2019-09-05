/// @description deck_add(name, [cards_or_card])
/// @function deck_add
/// @param name { string }
/// @param [cards_or_card] { array or string }
if global.player_deck_number_max <= global.player_deck_number
	return noone

var deck_one = instance_create_layer(0, 0, "system_below", oDeck)
ds_grid_set(global.player_deck_list, global.player_deck_number, 0, deck_one)
ds_grid_set(global.player_deck_list, global.player_deck_number, 1, argument[1])

with deck_one {
	if 2 < argument_count {
		if is_string(argument[2]) {
			repeat card_number_max
				ds_list_add(card_list, argument[2])
		} else if is_array(argument[2]) {
			for (var i = 0; i < array_length_1d(argument[2]); ++i) {
				var argar = argument[2]
				ds_list_add(card_list, argar[i])
			}
		}
	}

	++global.player_deck_number

	return id
}
