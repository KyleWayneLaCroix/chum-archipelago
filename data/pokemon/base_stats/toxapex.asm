 db TOXAPEX

	db  50,  63, 152,  35,  53, 142
	;   hp  atk  def  spd  sat  sdf

	db POISON, WATER ; type
	db 75 ; catch rate
	db 173 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/toxapex/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm BITE, BLIZZARD, HAIL, HIDDEN_POWER, HYDRO_PUMP, ICE_BEAM, POISON_JAB, RAIN_DANCE, RETURN, SLEEP_TALK, SUBSTITUTE, SURF, TOXIC
	; end
