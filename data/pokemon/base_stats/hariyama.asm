 db HARIYAMA

	db 144, 120,  60,  50,  40,  60
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FIGHTING ; type
	db 200 ; catch rate
	db 166 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F25 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hariyama/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLIGHTLY_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm DIG, EARTHQUAKE, GIGA_IMPACT, HIDDEN_POWER, HYPER_BEAM, IRON_HEAD, POISON_JAB, RAIN_DANCE, RETURN, ROCK_SLIDE, SLEEP_TALK, STRENGTH, SUBMISSION, SUBSTITUTE, SUNNY_DAY, SURF, TOXIC, WATER_PULSE, WHIRLPOOL
	; end
