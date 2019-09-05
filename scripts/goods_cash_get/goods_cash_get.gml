/// @description goods_cash_get()
/// @function goods_cash_get
var cash_length = array_length_1d(global.player_cash)

var i, cash_value, cash_decimal = 1
for (i = cash_length; 0 < i; --i) {
	cash_vaule = global.player_cash[i - 1]

	global.player_cash_display += goods_cash_encode(real(cash_vaule)) * cash_decimal
	cash_decimal *= 10
}
return global.player_cash_display
