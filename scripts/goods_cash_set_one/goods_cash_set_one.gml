/// @description goods_cash_set_one(index, value)
/// @function goods_cash_set_one
/// @param index { integer }
/// @param value { integer }
assert_goods_cash_index(argument0)

global.player_cash[argument0] = string(goods_cash_encode(argument1))
