#!/bin/bash
# M.Tyler 2020-08-02
# Build an SQLITE DB from the CSV file.

SRC_FILE="$1"
BIN_FILE="$2"


rm -f "$BIN_FILE"


echo "
.mode csv

CREATE TABLE Witness (
	Name_Z		TEXT,
	Name_A		TEXT,
	Location	TEXT,
	Locality	TEXT,
	Notes		TEXT,
	Source		TEXT,
	Year		INTEGER,
	Shots_Min	INTEGER,
	Shots_Max	INTEGER,
	Shots_Tot	REAL,
	Len_Min		INTEGER,
	Len_Max		INTEGER,
	Len_Tot		REAL,
	Time_A		INTEGER,
	B1		REAL,
	B2		REAL,
	B3		REAL,
	Time_Z		INTEGER,
	Bunches		INTEGER,
	Quality		INTEGER
	);
.import $SRC_FILE Witness
" | sqlite3 "$BIN_FILE"

