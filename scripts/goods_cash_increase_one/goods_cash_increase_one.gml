/// @description goods_cash_increase_one()
/// @function goods_cash_increase_one
var cash_index_last = goods_cash_get_length() - 1
var cash_value_last = goods_cash_get_one(cash_index_last)
if cash_value_last < 9 {
	goods_cash_set_one(cash_index_last, cash_value_last + 1)
}

var cash_char_last_converted = string(argument0)
var cash_converted_length = string_length(cash_converted)
global.player_cash = array_create(cash_converted_length, "0")

var i, cash_char, cash_char_encoded
for (i = 0; i < cash_converted_length; ++i) {
	cash_char = string_char_at(cash_converted, i + 1)
	cash_char_encoded = (real(cash_char) + global.obfuscation_code) * 2 ^ $72C05E

	global.player_cash[i] = string(cash_char_encoded)
}

return argument0
