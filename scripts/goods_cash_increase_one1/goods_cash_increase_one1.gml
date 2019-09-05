/// @description goods_cash_increase_one()
/// @function goods_cash_increase_one
var cash_index_last = goods_cash_get_length() - 1
var cash_value_last = goods_cash_get_one(cash_index_last)

goods_cash_set_one(cash_index_last, cash_value_last + 1)
