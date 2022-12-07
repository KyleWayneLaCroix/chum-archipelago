 db TSAREENA

	db  72, 120,  98,  72,  50,  98
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 230 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F100 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/tsareena/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm ENERGY_BALL, GIGA_DRAIN, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, PLAY_ROUGH, RETURN, SLEEP_TALK, SOLARBEAM, SUBSTITUTE, SUNNY_DAY, TOXIC, ZEN_HEADBUTT
	; end
