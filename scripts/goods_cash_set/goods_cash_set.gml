/// @description goods_cash_set(value)
/// @function goods_cash_set
/// @param value { integer }
global.player_cash = []

var cash_converted = string(argument0)
var cash_converted_length = string_length(cash_converted)
global.player_cash = array_create(cash_converted_length, "0")

var i, cash_char
for (i = 0; i < cash_converted_length; ++i) {
	cash_char = string_char_at(cash_converted, i + 1)
	
	goods_cash_set_one(i, real(cash_char))
}
