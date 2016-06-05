_DaisyInitialText::
	text "Salut ",$52,"!"
	line $53," est dans"
	cont "le labo de pépé! "
	done

_DaisyOfferMapText::
	text "Tu dois faire une"
	line "course pour pépé?"
	cont "Prends ceci,"
	cont "ça peut servir!"
	prompt

_GotMapText::
	text $52," obtient:"
	line "@"
	TX_RAM wcf50
	text "!@@"

_DaisyBagFullText::
	text "Votre inventaire"
	line "est plein."
	done

_DaisyUseMapText::
	text "Utilise la CARTE"
	line "pour connaître ta"
	cont "position."
	done

_BluesHouseText2::
	text "Les #MON sont"
	line "vivants! Une fois"
	cont "fatigués, ils"
	cont "doivent se"
	cont "reposer!"
	done

_BluesHouseText3::
	text "C'est une carte!"
	line "Ca peut être"
	cont "utile!"
	done

