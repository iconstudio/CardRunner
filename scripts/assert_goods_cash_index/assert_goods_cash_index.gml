/// @description assert_goods_cash_index(index)
/// @function assert_goods_cash_index
/// @param index { integer }
if argument0 < 0 or goods_cash_get_length() <= argument0 {
	show_error("점수를 얻어올 때 올바르지 않은 번호를 전달받았습니다.", true)
	return ""
}
