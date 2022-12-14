BugContestantPointers:
	table_width 2, BugContestantPointers
	dw BugContestant_BugCatcherDon ; this reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherBenny
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherJosh
	assert_table_length NUM_BUG_CONTESTANTS + 1

; contestant format:
;   db class, id
;   dbw 1st-place mon, score
;   dbw 2nd-place mon, score
;   dbw 3rd-place mon, score

BugContestant_BugCatcherDon:
	db BUG_CATCHER, DON
	dbw DOTTLER,     300
	dbw CHARJABUG,    285
	dbw GRUBBIN,   226

BugContestant_BugCatcherEd:
	db BUG_CATCHER, DON
	dbw VIKAVOLT, 286
	dbw VIKAVOLT, 251
	dbw GRUBBIN,   237

BugContestant_CooltrainerMNick:
	db BUG_CATCHER, DON
	dbw SCYTHER,    357
	dbw VIKAVOLT, 349
	dbw HERACROSS,     368

BugContestant_PokefanMWilliam:
	db BUG_CATCHER, DON
	dbw HERACROSS,     332
	dbw VIKAVOLT, 324
	dbw SIZZLIPEDE,    321

BugContestant_BugCatcherBenny:
	db BUG_CATCHER, DON
	dbw VIKAVOLT, 318
	dbw BLIPBUG,     295
	dbw GRUBBIN,   285

BugContestant_CamperBarry:
	db BUG_CATCHER, DON
	dbw HERACROSS,     366
	dbw SIZZLIPEDE,    329
	dbw DOTTLER,     314

BugContestant_PicnickerCindy:
	db BUG_CATCHER, DON
	dbw VIKAVOLT, 341
	dbw CHARJABUG,    301
	dbw GRUBBIN,   264

BugContestant_BugCatcherJosh:
	db BUG_CATCHER, DON
	dbw SCYTHER,    326
	dbw VIKAVOLT, 292
	dbw CHARJABUG,    282