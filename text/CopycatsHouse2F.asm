_CopycatsHouse2FText_5ccd4::
	text "<PLAYER>: Salut!"
	line "tu aimes les"
	cont "#MON?"

	para "<PLAYER>: Bwoarf!"
	line "J'disais ça comme"
	cont "ça!"

	para "<PLAYER>: Hein?"
	line "T'es bizarre toi!"

	para "COPIEUSE: Hmm?"
	line "Arrêter de mimer?"

	para "Mais je ne sais"
	line "faire que ça!"
	prompt

_TM31PreReceiveText::
	text "Whaaaaaa!"
	line "Une #POUPEE!"

	para "C'est pour moi?"
	line "Merci!"

	para "Tiens, prends ça"
	line "en échange!"
	prompt

_ReceivedTM31Text::
	text "<PLAYER> obtient:"
	line "@"
	text_ram wStringBuffer
	text "!@"
	text_end

_TM31ExplanationText1::
	text_start

	para "CT31: COPIE!"

	para "Enseigne-la au"
	line "bon #MON!@"
	text_end
_TM31ExplanationText2::
	text "<PLAYER>: Salut!"
	line "Merci pour la"
	cont "CT31!"

	para "<PLAYER>: Pardon?"

	para "<PLAYER>: Heu..."
	line "C'est aussi cool"
	cont "que ça de"
	cont "m'imiter?"

	para "COPIEUSE: Ah non!"
	line "C'est vraiment la"
	cont "galère, t'arrêtes"
	cont "pas d'bouger!"
	done

_TM31NoRoomText::
	text "T'en veux pas?@"
	text_end

_CopycatsHouse2FText2::
	text "DODUO: Doduuu!"

	para "AH, JE RIS DE"
	line "ME VOIR SI BELLE"
	cont "EN CE MIROIR!"
	done

_CopycatsHouse2FText3::
	text "Ca, un #MON"
	line "rare? Tu t'moques"
	cont "de moi!"
	cont "C'est rien qu'une"
	cont "poupée! Pas belle"
	cont "en plus!"
	done

_CopycatsHouse2FText6::
	text "Un plombier?"
	line "Mais..."
	cont "Kesski fait?"
	cont "Y saute? Cool."
	done

_CopycatsHouse2FText_5cd17::
	text "..."

	para "Mes secrets!"

	para "Mon boulot:"
	line "je mime!"
	cont "Ma passion:"
	cont "les poupées!"
	cont "Mon #MON"
	cont "préféré: MELOFEE!"
	done

_CopycatsHouse2FText_5cd1c::
	text "J'vois rien!"
	done
