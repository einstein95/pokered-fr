_DayCareIntroText::
	text "Je m'occupe de la"
	line "PENSION. Veux-tu"
	cont "que j'élève un de"
	cont "tes #MON?"
	done

_DayCareWhichMonText::
	text "Quel #MON"
	line "veux-tu me"
	cont "confier?"
	prompt

_DayCareWillLookAfterMonText::
	text "Très bien, je"
	line "vais m'occuper de"
	cont "@"
	text_ram wcd6d
	text "."
	prompt

_DayCareComeSeeMeInAWhileText::
	text "Reviens un peu"
	line "plus tard."
	done

_DayCareMonHasGrownText::
	text "Ton @"
	text_ram wcd6d
	text_start
	line "a bien évolué!"

	para "Ses niveaux ont"
	line "augmenté de @"
	text_decimal wDayCareNumLevelsGrown, 1, 3
	text "!"

	para "Merci qui? Hein?"
	prompt

_DayCareOweMoneyText::
	text "Donne-moi ¥@"
	text_bcd wDayCareTotalCost, 2 | LEADING_ZEROES | LEFT_ALIGN
	text_start
	line "et je te rends"
	cont "ton #MON."
	done

_DayCareGotMonBackText::
	text "<PLAYER> récupère"
	line "@"
	text_ram wDayCareMonName
	text "!"
	done

_DayCareMonNeedsMoreTimeText::
	text "Déjà de retour?"
	line "Ton @"
	text_ram wcd6d
	text_start
	cont "doit rester"
	cont "encore un peu."
	prompt
