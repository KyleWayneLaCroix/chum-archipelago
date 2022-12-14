 db WHISCASH

	db 110,  78,  73,  60,  76,  71
	;   hp  atk  def  spd  sat  sdf

	db WATER, GROUND ; type
	db 75 ; catch rate
	db 164 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/whiscash/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, EARTHQUAKE, GIGA_IMPACT, HAIL, HIDDEN_POWER, HYDRO_PUMP, HYPER_BEAM, ICE_BEAM, RAIN_DANCE, RETURN, ROCK_SLIDE, SANDSTORM, SLEEP_TALK, STRENGTH, SUBSTITUTE, SURF, TOXIC, WATER_PULSE, WATERFALL, WHIRLPOOL, ZEN_HEADBUTT
	; end
