/// @description assert_goods_cash_index(index)
/// @function assert_goods_cash_index
/// @param index { integer }
var cash_encoded_length = array_length_1d(global.player_cash)
if argument0 < 0 or cash_encoded_length <= argument0 {
	show_error("점수를 얻어올 때 올바르지 않은 번호를 전달받았습니다.", true)
	return ""
}
