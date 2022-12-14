 db SNORLAX

	db 160, 110,  65,  30,  65, 110
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 189 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F12_5 ; gender ratio
	db 100 ; unknown 1
	db 40 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/snorlax/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_MONSTER, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm BITE, BLIZZARD, BODY_SLAM, DOUBLE_EDGE, EARTHQUAKE, FIRE_BLAST, FIRE_PUNCH, FLAMETHROWER, GIGA_IMPACT, HEADBUTT, HIDDEN_POWER, HYDRO_PUMP, HYPER_BEAM, HYPER_VOICE, ICE_BEAM, ICE_PUNCH, IRON_HEAD, PSYCHIC_M, RAIN_DANCE, RETURN, ROCK_SLIDE, SANDSTORM, SHADOW_BALL, SHOCK_WAVE, SLEEP_TALK, STRENGTH, SUBMISSION, SUBSTITUTE, SUNNY_DAY, SURF, THUNDER, THUNDERBOLT, TOXIC, WATER_PULSE, WHIRLPOOL, ZEN_HEADBUTT
	; end
