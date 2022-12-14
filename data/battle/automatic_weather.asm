; AutomaticWeatherEffects indexes
	const_def 1
	const AUTOMATIC_SUN
	const AUTOMATIC_RAIN
	const AUTOMATIC_SANDSTORM

AutomaticWeatherMaps:
MACRO auto_weather_map
	map_id \1 ; map
	db \2 ; AUTOMATIC_* weather index
ENDM
;	auto_weather_map MAP_NONE, AUTOMATIC_SUN
;	auto_weather_map MAP_NONE, AUTOMATIC_RAIN
;	auto_weather_map MAP_NONE, AUTOMATIC_RAIN
;	auto_weather_map MAP_NONE, AUTOMATIC_SANDSTORM
	db 0 ; end

AutomaticWeatherEffects:
; entries correspond to AUTOMATIC_* constants
MACRO auto_weather_effect
	db \1 ; battle weather
	dw \2 ; animation
	dw \3 ; text
ENDM
	auto_weather_effect WEATHER_SUN, SUNNY_DAY, SunGotBrightText
	auto_weather_effect WEATHER_RAIN, RAIN_DANCE, DownpourText
	auto_weather_effect WEATHER_SANDSTORM, ANIM_IN_SANDSTORM, SandstormBrewedText