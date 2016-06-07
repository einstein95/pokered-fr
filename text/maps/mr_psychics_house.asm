_TM29PreReceiveText::
	text "...Chut! Pas un"
	line "mot!"

	para "Tu veux ça?"
	prompt

_ReceivedTM29Text::
	text $52," obtient:"
	line "@"
	TX_RAM wcf50
	text "!@@"

_TM29ExplanationText::
	text "CT29: PSYKO!"

	para "Cette attaque"
	line "diminue le"
	cont "SPECIAL de la"
	cont "cible."
	done

_TM29NoRoomText::
	text "Ton inventaire"
	line "est plein!"
	done
