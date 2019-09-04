/// @description 선언
enum SPEED {
	slowest = 14 / seconds(0.2),
	slower = 20 / seconds(0.2),
	slow = 26 / seconds(0.2),
	normal = 32 / seconds(0.2),
	fast = 32 / seconds(0.16),
	faster = 32 / seconds(0.12),
	fastest = 32 / seconds(0.08)
}

enum GAME_MODE {
	none,
	single_running,
	single_breaktherecord,
	multi_versus,
	multi_versus_much
}

#macro CARD_
