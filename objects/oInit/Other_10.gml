/// @description 기초 상수 선언
#macro slowest 14 / seconds(0.2),
#macro slower 20 / seconds(0.2),
#macro slow 26 / seconds(0.2),
#macro normal 32 / seconds(0.2),
#macro fast 32 / seconds(0.16),
#macro faster 32 / seconds(0.12),
#macro fastest 32 / seconds(0.08)


enum GAME_MODE {
	none,
	single_running,
	single_breaktherecord,
	multi_versus,
	multi_versus_much
}

#macro CARD_
