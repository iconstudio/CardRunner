/// @description goods_cash_get_one(index)
/// @function goods_cash_get_one
/// @param index { integer }
var cash_char_encoded = global.player_cash[argument0]
var cash_value_decoded = (real(cash_char_encoded) ^ $72C05E) * 0.5 - global.obfuscation_code

return cash_value_decoded
