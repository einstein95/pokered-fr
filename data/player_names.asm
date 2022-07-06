IF DEF(_RED)
DefaultNamesPlayer:
	db   "NOM:"
	next "RED"
	next "SACHA"
	next "PAUL"
	db   "@"

DefaultNamesRival:
	db   "NOM:"
	next "BLUE"
	next "REGIS"
	next "JEAN"
	db   "@"
ENDC

IF DEF(_BLUE)
DefaultNamesPlayer:
	db   "NOM:"
	next "BLUE"
	next "REGIS"
	next "JEAN"
	db   "@"

DefaultNamesRival:
	db   "NOM:"
	next "RED"
	next "SACHA"
	next "PAUL"
	db   "@"
ENDC
