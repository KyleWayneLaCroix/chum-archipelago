 db PERRSERKER

	db  70, 110, 100,  50,  50,  60
	;   hp  atk  def  spd  sat  sdf

	db STEEL, STEEL ; type
	db 90 ; catch rate
	db 154 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/perrserker/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, DARK_PULSE, DIG, GIGA_IMPACT, HYPER_BEAM, HYPER_VOICE, IRON_HEAD, PLAY_ROUGH, RAIN_DANCE, SHADOW_BALL, SLEEP_TALK, SUBSTITUTE, SUNNY_DAY, THUNDER, THUNDERBOLT
	; end
