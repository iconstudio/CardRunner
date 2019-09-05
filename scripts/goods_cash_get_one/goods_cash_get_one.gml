/// @description goods_cash_get_one(index)
/// @function goods_cash_get_one
/// @param index { integer }
var cash_char_encoded = global.player_cash[argument0]
var cash_value_decoded = goods_cash_decode(real(cash_char_encoded))

return cash_value_decoded
