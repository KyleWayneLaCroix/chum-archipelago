 db MUDBRAY

	db  70, 100,  70,  45,  45,  55
	;   hp  atk  def  spd  sat  sdf

	db GROUND, GROUND ; type
	db 190 ; catch rate
	db 77 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/mudbray/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm BODY_SLAM, EARTHQUAKE, HIDDEN_POWER, IRON_HEAD, RETURN, ROCK_SLIDE, SANDSTORM, SLEEP_TALK, STRENGTH, SUBSTITUTE, TOXIC
	; end
