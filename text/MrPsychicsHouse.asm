_TM29PreReceiveText::
	text "...Chut! Pas un"
	line "mot!"

	para "Tu veux ça?"
	prompt

_ReceivedTM29Text::
	text "<PLAYER> obtient:"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

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
