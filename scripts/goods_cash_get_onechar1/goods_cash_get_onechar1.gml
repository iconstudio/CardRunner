/// @description goods_cash_get_onechar(index)
/// @function goods_cash_get_onechar
/// @param index { integer }
var cash_char_encoded = global.player_cash[argument0]
var cash_char_decoded = (real(cash_char_encoded) ^ $72C05E) * 0.5 - global.obfuscation_code
var cash_converted = string(cash_char_decoded)

return cash_converted
