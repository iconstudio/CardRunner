/// @description goods_cash_set(value)
/// @function goods_cash_set
/// @param value { integer }
global.player_cash = []

var cash_converted = string(argument0)
var cash_converted_length = string_length(cash_converted)
global.player_cash = array_create(cash_converted_length, "0")

var i, cash_char, cash_char_encoded
for (i = 0; i < cash_converted_length; ++i) {
	cash_char = string_char_at(cash_converted, i + 1)
	cash_char_encoded = goods_cash_encode(real(cash_char))

	global.player_cash[i] = string(cash_char_encoded)
}
