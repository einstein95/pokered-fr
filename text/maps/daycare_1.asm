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
	TX_RAM wcd6d
	text "."
	prompt

_DayCareComeSeeMeInAWhileText::
	text "Reviens un peu"
	line "plus tard."
	done

_DayCareMonHasGrownText::
	text "Ton @"
	TX_RAM wcd6d
	text ""
	line "a bien évolué!"

	para "Ses niveaux ont"
	line "augmenté de @"
	TX_NUM wDayCareNumLevelsGrown,$1,$3
	text "!"

	para "Merci qui? Hein?"
	prompt

_DayCareOweMoneyText::
	text "Donne-moi ¥@"
	TX_BCD wDayCareTotalCost, $c2
	text ""
	line "et je te rends"
	cont "ton #MON."
	done

_DayCareGotMonBackText::
	text $52," récupère"
	line "@"
	TX_RAM wDayCareMonName
	text "!"
	done

_DayCareMonNeedsMoreTimeText::
	text "Déjà de retour?"
	line "Ton @"
	TX_RAM wcd6d
	text ""
	cont "doit rester"
	cont "encore un peu."
	prompt

