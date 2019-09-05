/// @description goods_cash_increase(value)
/// @function goods_cash_increase
/// @param value { integer }
var cash_converted = string(argument0)
var cash_converted_length = string_length(cash_converted)
var cash_converted_result = array_create(cash_converted_length, "0")
var cash_dec_converted = floor(log10(cash_converted))

var cash_current = goods_cash_get()
var cash_dec_current = floor(log10(cash_current))

if cash_dec_converted < cash_dec_current { // 기존 배열에 더하기
	var i, cash_char, cash_char_encoded
	for (i = 0; i < cash_converted_length; ++i) {
		cash_char = string_char_at(cash_converted, i + 1)
		cash_char_encoded = goods_cash_encode(real(cash_char))

		goods_cash_set_one(i, goods_cash_get_one(i) + cash_char_encoded)
	}
} else if cash_dec_current < cash_dec_converted { // 새로 만들어서 더하기
	
} else { // 같을 때
	var i, cash_char, cash_char_encoded
	for (i = 0; i < cash_converted_length; ++i) {
		cash_char = string_char_at(cash_converted, i + 1)
		cash_char_encoded = goods_cash_encode(real(cash_char))

		goods_cash_set_one(i, goods_cash_get_one(i) + cash_char_encoded)
	}
}
