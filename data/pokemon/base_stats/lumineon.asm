 db LUMINEON

	db  69,  69,  76,  91,  69,  86
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 75 ; catch rate
	db 161 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/lumineon/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm BLIZZARD, FLASH, GIGA_IMPACT, HAIL, HIDDEN_POWER, HYPER_BEAM, ICE_BEAM, RAIN_DANCE, RETURN, SIGNAL_BEAM, SLEEP_TALK, SUBSTITUTE, SURF, THUNDERPUNCH, TOXIC, WATER_PULSE, WATERFALL, WHIRLPOOL
	; end
