 db JOLTIK

	db  50,  47,  50,  65,  57,  50
	;   hp  atk  def  spd  sat  sdf

	db BUG, ELECTRIC ; type
	db 190 ; catch rate
	db 64 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/joltik/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CUT, ENERGY_BALL, FLASH, GIGA_DRAIN, HIDDEN_POWER, POISON_JAB, RAIN_DANCE, RETURN, SHOCK_WAVE, SIGNAL_BEAM, SLEEP_TALK, SUBSTITUTE, SWIFT, THUNDERBOLT, TOXIC
	; end
