; Footprints are 2x2 tiles each, but are stored as a 16x64-tile image
; (32 rows of 8 footprints per row).
; That means there's a row of the top two tiles for eight footprints,
; then a row of the bottom two tiles for those eight footprints.

; These macros help extract the first and the last two tiles, respectively.
DEF footprint_top    EQUS "0,                 2 * LEN_1BPP_TILE"
DEF footprint_bottom EQUS "2 * LEN_1BPP_TILE, 2 * LEN_1BPP_TILE"

Footprints:
	table_width LEN_1BPP_TILE * 4, Footprints

{footprintData}

	assert_table_length $100
