 db SANDYGAST

	db  55,  55,  80,  15,  70,  45
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GROUND ; type
	db 140 ; catch rate
	db 64 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 15 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/sandygast/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm EARTHQUAKE, ENERGY_BALL, GIGA_DRAIN, HIDDEN_POWER, PSYCHIC_M, RETURN, ROCK_SLIDE, SANDSTORM, SHADOW_BALL, SLEEP_TALK, SUBSTITUTE, TOXIC
	; end
