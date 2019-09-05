/// @description goods_cash_increase(value)
/// @function goods_cash_increase
/// @param value { integer }
var cash_current = goods_cash_get()
var cash_current_dec = floor(log10(cash_current))
var cash_converted = string(argument0)
var cash_converted_length = string_length(cash_converted)
var cash_converted_dec = floor(log10(cash_converted))

if cash_converted_dec < cash_current_dec { // 기존 배열에 더하기
	var i, current_i = goods_cash_get_length() - 1, cash_converted_char, cash_converted_char_encoded

	for (i = cash_converted_length; 0 < i; --i) {
		cash_converted_char = string_char_at(cash_converted, i)
		cash_converted_char_encoded = goods_cash_encode(real(cash_converted_char))

		goods_cash_set_one(current_i, goods_cash_get_one(current_i--) + cash_converted_char_encoded)
	}
} else if cash_current_dec < cash_converted_dec { // 새로 만들어서 더하기
	var i, current_i = 0, cash_converted_result = array_create(cash_converted_length, 0), cash_converted_char

	for (i = 0; i < cash_converted_length; ++i) {
		cash_converted_char = string_char_at(cash_converted, i + 1)

		cash_converted_result[i] = real(cash_converted_char)

		if goods_cash_get_length() - 1 - i < 0 {
			cash_converted_result[i] += goods_cash_get_one(current_i++)
		}
	}

	global.player_cash = array_create(cash_converted_length, "0")
	for (i = 0; i < cash_converted_length; ++i) {
		goods_cash_set_one(i, cash_converted_result[i])
	}
} else { // 같을 때
	var i, cash_char, cash_char_encoded

	for (i = 0; i < cash_converted_length; ++i) {
		cash_char = string_char_at(cash_converted, i + 1)
		cash_char_encoded = goods_cash_encode(real(cash_char))

		goods_cash_set_one(i, goods_cash_get_one(i) + cash_char_encoded)
	}
}
