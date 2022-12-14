MACRO map
;\1: map name: for the MapAttributes pointer (see data/maps/attributes.asm)
;\2: tileset: a TILESET_* constant
;\3: environment: TOWN, ROUTE, INDOOR, CAVE, ENVIRONMENT_5, GATE, or DUNGEON
;\4: location: a LANDMARK_* constant
;\5: music: a MUSIC_* constant
;\6: phone service flag: TRUE to prevent phone calls
;\7: time of day: a PALETTE_* constant
;\8: fishing group: a FISHGROUP_* constant
	db BANK(\1_MapAttributes), \2, \3
	dw \1_MapAttributes
	db \4, \5
	dn \6, \7
	db \8
ENDM

MapGroupPointers::
; pointers to the first map of each map group
	table_width 2, MapGroupPointers
	dw MapGroup_CableClub     ;  1
	dw MapGroup_BattleTower   ;  2
	dw MapGroup_NewBark       ;  3
	dw MapGroup_Indigo        ;  4
	dw MapGroup_Brologue      ;  5
	dw MapGroup_BrologueNorth ;  6
	dw MapGroup_Metroid       ;  7
	dw MapGroup_Dungeons      ;  8
	assert_table_length NUM_MAP_GROUPS

MapGroup_CableClub:
	table_width MAP_LENGTH, MapGroup_CableClub
	map Pokecenter2F, TILESET_POKECENTER, INDOOR, LANDMARK_SPECIAL, MUSIC_POKEMON_CENTER, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TradeCenter, TILESET_GATE, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map Colosseum, TILESET_GATE, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map TimeCapsule, TILESET_GATE, INDOOR, LANDMARK_SPECIAL, MUSIC_CHERRYGROVE_CITY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_CABLE_CLUB_MAPS

MapGroup_BattleTower:
	table_width MAP_LENGTH, MapGroup_BattleTower
	map BattleTowerOutside, TILESET_BATTLE_TOWER_OUTSIDE, ROUTE, LANDMARK_BATTLE_TOWER, MUSIC_BATTLE_TOWER_THEME, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map BattleTower1F, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_BATTLE_TOWER, MUSIC_BATTLE_TOWER_LOBBY, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerElevator, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_BATTLE_TOWER, MUSIC_NONE, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerHallway, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_BATTLE_TOWER, MUSIC_BATTLE_TOWER_THEME, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BattleTowerBattleRoom, TILESET_BATTLE_TOWER_INSIDE, INDOOR, LANDMARK_BATTLE_TOWER, MUSIC_BATTLE_TOWER_THEME, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_BATTLE_TOWER_MAPS

MapGroup_NewBark:
	table_width MAP_LENGTH, MapGroup_NewBark
	map NewBarkTown, TILESET_CHUMELAGO, TOWN, LANDMARK_NEW_BARK_TOWN, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map PlayersHouse1F, TILESET_PLAYERS_HOUSE, INDOOR, LANDMARK_NEW_BARK_TOWN, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map PlayersHouse2F, TILESET_PLAYERS_ROOM, INDOOR, LANDMARK_NEW_BARK_TOWN, MUSIC_NEW_BARK_TOWN, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_NEW_BARK_MAPS

MapGroup_Indigo:
	table_width MAP_LENGTH, MapGroup_Indigo
	map IndigoPlateauPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map WillsRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map KogasRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map BrunosRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map KarensRoom, TILESET_ELITE_FOUR_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map LancesRoom, TILESET_CHAMPIONS_ROOM, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_INDIGO_PLATEAU, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	map HallOfFame, TILESET_ICE_PATH, INDOOR, LANDMARK_INDIGO_PLATEAU, MUSIC_NEW_BARK_TOWN, TRUE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_INDIGO_MAPS

MapGroup_Brologue:
	table_width MAP_LENGTH, MapGroup_Brologue
	map AwakeningBeach, TILESET_CHUMELAGO, ROUTE, LANDMARK_AWAKENING_BEACH, MUSIC_ROUTE_26, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map AwakeningLab, TILESET_LAB, INDOOR, LANDMARK_AWAKENING_BEACH, MUSIC_LAVENDER_TOWN, FALSE, PALETTE_NITE, FISHGROUP_SHORE
	map DrNuggzMDExterior, TILESET_CHUMELAGO, ROUTE, LANDMARK_DR_NUGGZ_MD, MUSIC_ROUTE_26, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map DrNuggzMDInterior, TILESET_MART, INDOOR, LANDMARK_DR_NUGGZ_MD, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map RouteA, TILESET_CHUMELAGO, ROUTE, LANDMARK_ROUTE_A, MUSIC_ROUTE_26, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map RouteAPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_ROUTE_A, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GearCity, TILESET_CHUMELAGO, ROUTE, LANDMARK_GEAR_CITY, MUSIC_ROUTE_26, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map CityGearRetail, TILESET_MART, INDOOR, LANDMARK_GEAR_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GearCityPokecenter1F, TILESET_POKECENTER, INDOOR, LANDMARK_GEAR_CITY, MUSIC_POKEMON_CENTER, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GearCityMart, TILESET_MART, INDOOR, LANDMARK_GEAR_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map OldFisherFellowHouse, TILESET_HOUSE, INDOOR, LANDMARK_GEAR_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GearCityWhiltenHouse, TILESET_HOUSE, INDOOR, LANDMARK_GEAR_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map GearCityNorthForestGate, TILESET_GATE, GATE, LANDMARK_GEAR_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	assert_table_length NUM_BROLOGUE_MAPS

MapGroup_BrologueNorth:
	table_width MAP_LENGTH, MapGroup_BrologueNorth
	map WardensCabin, TILESET_TRADITIONAL_HOUSE, INDOOR, LANDMARK_NORTHERN_FOREST, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map NorthernForestRouteBGate, TILESET_GATE, GATE, LANDMARK_NORTHERN_FOREST, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map RouteB, TILESET_CHUMELAGO, ROUTE, LANDMARK_ROUTE_B, MUSIC_ROUTE_26, FALSE, PALETTE_AUTO, FISHGROUP_SHORE
	map RouteBNorth, TILESET_CHUMELAGO, ROUTE, LANDMARK_ROUTE_B_N, MUSIC_ROUTE_26, FALSE, PALETTE_AUTO, FISHGROUP_OCEAN
	map Cemetary, TILESET_CHUMELAGO, ROUTE, LANDMARK_CEMETARY, MUSIC_LAVENDER_TOWN, FALSE, PALETTE_AUTO, FISHGROUP_POND
	map CemetaryLab, TILESET_FACILITY, INDOOR, LANDMARK_CEMETARY, MUSIC_LAVENDER_TOWN, FALSE, PALETTE_DAY, FISHGROUP_OCEAN
	map DangerousCave, TILESET_CAVE, DUNGEON, LANDMARK_ROUTE_B, MUSIC_VIOLET_CITY, FALSE, PALETTE_NITE, FISHGROUP_SHORE
	assert_table_length NUM_BROLOGUE_NORTH_MAPS

MapGroup_Metroid:
	table_width MAP_LENGTH, MapGroup_Metroid
	map MetroidIntro, TILESET_METROID, CAVE, LANDMARK_CYBERSPACE1, MUSIC_NONE, FALSE, PALETTE_NITE, FISHGROUP_OCEAN
	map MetroidHallway,  TILESET_METROID, CAVE, LANDMARK_CYBERSPACE1, MUSIC_NONE, FALSE, PALETTE_NITE, FISHGROUP_OCEAN
	map MetroidVerticalHallway, TILESET_METROID, CAVE, LANDMARK_CYBERSPACE1, MUSIC_NONE, FALSE, PALETTE_NITE, FISHGROUP_OCEAN
	map MetroidEnd, TILESET_METROID, CAVE, LANDMARK_CYBERSPACE1, MUSIC_NONE, FALSE, PALETTE_NITE, FISHGROUP_OCEAN
	assert_table_length NUM_METROID_MAPS

MapGroup_Dungeons:
	table_width MAP_LENGTH, MapGroup_Dungeons
	map DankCave1F, TILESET_DARK_CAVE, CAVE, LANDMARK_AWAKENING_BEACH, MUSIC_DARK_CAVE, TRUE, PALETTE_DARK, FISHGROUP_LAKE
	map DankCave2F, TILESET_CAVE, CAVE, LANDMARK_AWAKENING_BEACH, MUSIC_VICTORY_ROAD, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	map NorthernForest, TILESET_FOREST, CAVE, LANDMARK_NORTHERN_FOREST, MUSIC_UNION_CAVE, FALSE, PALETTE_NITE, FISHGROUP_LAKE
	map CityGearHQ, TILESET_FACILITY, INDOOR, LANDMARK_GEAR_CITY, MUSIC_VIOLET_CITY, FALSE, PALETTE_DAY, FISHGROUP_SHORE
	map CityGearHQBasement, TILESET_RUINS_OF_ALPH, DUNGEON, LANDMARK_GEAR_CITY, MUSIC_RUINS_OF_ALPH_INTERIOR, TRUE, PALETTE_NITE, FISHGROUP_SHORE
	assert_table_length NUM_DUNGEONS_MAPS