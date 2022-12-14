MACRO newgroup
;\1: group id
	const_skip
	DEF MAPGROUP_\1 EQU const_value
	DEF CURRENT_NUM_MAPGROUP_MAPS EQUS "NUM_\1_MAPS"
	DEF __map_value__ = 1
ENDM

MACRO map_const
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
	DEF GROUP_\1 EQU const_value
	DEF MAP_\1 EQU __map_value__
	DEF __map_value__ += 1
	DEF \1_WIDTH EQU \2
	DEF \1_HEIGHT EQU \3
ENDM

MACRO endgroup
	DEF {CURRENT_NUM_MAPGROUP_MAPS} EQU __map_value__ - 1
	PURGE CURRENT_NUM_MAPGROUP_MAPS
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	newgroup CABLE_CLUB                               ;  1
	map_const POKECENTER_2F,                    8,  4 ;  1
	map_const TRADE_CENTER,                     5,  4 ;  2
	map_const COLOSSEUM,                        5,  4 ;  3
	map_const TIME_CAPSULE,                     5,  4 ;  4
	endgroup

	newgroup BATTLE_TOWER                             ;  2
	map_const BATTLE_TOWER_OUTSIDE,            10, 14 ;  1
	map_const BATTLE_TOWER_1F,                  8,  5 ;  2
	map_const BATTLE_TOWER_ELEVATOR,            2,  2 ;  3
	map_const BATTLE_TOWER_HALLWAY,            11,  2 ;  4
	map_const BATTLE_TOWER_BATTLE_ROOM,         4,  4 ;  5
	endgroup

	newgroup NEW_BARK                                 ;  3
	map_const NEW_BARK_TOWN,                   10,  9 ;  1
	map_const PLAYERS_HOUSE_1F,                 8,  5 ;  2
	map_const PLAYERS_HOUSE_2F,                 4,  3 ;  3
	endgroup

	newgroup INDIGO                                   ;  4
	map_const INDIGO_PLATEAU_POKECENTER_1F,     9,  7 ;  1
	map_const WILLS_ROOM,                       5,  9 ;  2
	map_const KOGAS_ROOM,                       5,  9 ;  3
	map_const BRUNOS_ROOM,                      5,  9 ;  4
	map_const KARENS_ROOM,                      5,  9 ;  5
	map_const LANCES_ROOM,                      5, 12 ;  6
	map_const HALL_OF_FAME,                     5,  7 ;  7
	endgroup

	newgroup BROLOGUE                                 ;  5
	map_const AWAKENING_BEACH,                 11, 23 ;  1
	map_const AWAKENING_LAB,                   15, 10 ;  2
	map_const DR_NUGGZ_MD_EXTERIOR,            10,  9 ;  3
	map_const DR_NUGGZ_MD_INTERIOR,             6,  5 ;  4
	map_const ROUTE_A,                         30,  9 ;  5
	map_const ROUTE_A_POKECENTER_1F,            5,  4 ;  6
	map_const GEAR_CITY,                       14, 19 ;  7
	map_const CITY_GEAR_RETAIL,                10,  6 ;  8
	map_const GEAR_CITY_POKECENTER_1F,          5,  4 ;  9
	map_const GEAR_CITY_MART,                   6,  4 ; 10
	map_const OLD_FISHER_FELLOW_HOUSE,          4,  4 ; 11
	map_const GEAR_CITY_CHRIS_WHILTEN_HOUSE,    4,  4 ; 12
	map_const GEAR_CITY_NORTH_FOREST_GATE,      8,  5 ; 13
	endgroup

	newgroup BROLOGUE_NORTH                           ; 6
	map_const WARDENS_CABIN,                    6,  5 ; 1
	map_const NORTHERN_FOREST_ROUTE_B_GATE,     5,  5 ; 2
	map_const ROUTE_B,							7, 30 ; 3
	map_const ROUTE_B_NORTH,                   10, 20 ; 4
	map_const CEMETARY,                        14, 14 ; 5
	map_const CEMETARY_LAB,				        9, 12 ; 6
	map_const DANGEROUS_CAVE,                   6,  5 ; 7
	endgroup

	newgroup METROID                                  ; 7
	map_const METROID_INTRO,                   27,  7 ; 1
	map_const METROID_HALLWAY,                  8,  7 ; 2
	map_const METROID_VERTICAL_HALLWAY,         7, 17 ; 3
	map_const METROID_END,                     19,  7 ; 4
	endgroup

	newgroup DUNGEONS                                 ;  8
	map_const DANK_CAVE_1F,                    22,  7 ;  1
	map_const DANK_CAVE_2F,                    16, 14 ;  2
	map_const NORTHERN_FOREST,                 20, 30 ;  3
	map_const CITY_GEAR_HQ,                    12, 19 ;  4
	map_const CITY_GEAR_HQ_BASEMENT,           17,  8 ;  5
	endgroup

DEF NUM_MAP_GROUPS EQU const_value ; 8
