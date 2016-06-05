
TEXT_1  EQU $20
TEXT_2  EQU TEXT_1 + 1
TEXT_3  EQU TEXT_2 + 1
TEXT_4  EQU TEXT_3 + 1
TEXT_5  EQU TEXT_4 + 1
TEXT_6  EQU TEXT_5 + 1
TEXT_7  EQU TEXT_6 + 1
TEXT_8  EQU TEXT_7 + 1
TEXT_9  EQU TEXT_8 + 1
TEXT_10 EQU TEXT_9 + 1
TEXT_11 EQU TEXT_10 + 1

POKEDEX_TEXT EQU TEXT_11 + 1
MOVE_NAMES   EQU POKEDEX_TEXT + 1

INCLUDE "macros.asm"
INCLUDE "charmap.asm"
INCLUDE "hram.asm"


SECTION "Text 1", ROMX, BANK[TEXT_1]

_CardKeySuccessText1::
	text "Bingo!@@"

_CardKeySuccessText2::
	db $0
	line "La CARTE MAGN. a"
	cont "ouvert la porte!"
	done

_CardKeyFailText::
	text "Zut! Il faut une"
	line "CARTE MAGN.!"
	done

_TrainerNameText::
	TX_RAM wcd6d
	text ": @@"

_NoNibbleText::
	text "Même pas une"
	line "touche..."
	prompt

_NothingHereText::
	text "On dirait qu'il"
	line "n'y a rien ici."
	prompt

_ItsABiteText::
	text "Oh!"
	line "Ca mord!!!"
	prompt

_ExclamationText::
	text "!"
	done

_GroundRoseText::
	text "Le sol s'est levé"
	line "dans le coin!"
	done

_BoulderText::
	text "Sans FORCE, ça"
	line "ne bougera pas!"
	done

_MartSignText::
	text "Faites le plein"
	line "d'objets!"
	para "BOUTIQUE PKMN"
	done

_PokeCenterSignText::
	text "Soignez vos"
	line "#MON!"
	para "CENTRE PKMN"
	done

_FoundItemText::
	text $52, " obtient..."
	line "@"
	TX_RAM wcf50
	text "!@@"

_NoMoreRoomForItemText::
	text "Votre inventaire"
	line "est plein!"
	done

_OaksAideHiText::
	text "Salut! Tu te"
	line "rappelles? Je"
	cont "suis l'assistant"
	cont "du Prof. Chen!"

	para "Si tu attrapes "
	line "@"
	TX_NUM hOaksAideRequirement, 1, 3
	text " #MON"
	cont "différents, je"
	cont "suis censé"
	cont "t'offrir..."
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "!"

	para "Alors ", $52, ","
	line "as-tu attrapé au"
	cont "moins @"
	TX_NUM hOaksAideRequirement, 1, 3
	text " #MON"
	cont "différents?"
	done

_OaksAideUhOhText::
	text "Voyons voir..."
	line "Oh! Tu n'as"
	cont "attrapé que @"
	TX_NUM hOaksAideNumMonsOwned, 1, 3
	db $0
	cont "#MON!"

	para "Il t'en faut @"
	TX_NUM hOaksAideRequirement, 1, 3
	db $0
	line "différents pour"
	cont "mériter..."
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "."
	done

_OaksAideComeBackText::
	text "Dans ce cas..."

	para "Reviens quand tu"
	line "auras @"
	TX_NUM hOaksAideRequirement, 1, 3
	text " #MON"
	cont "différents pour"
	cont "obtenir"
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "."
	done

_OaksAideHereYouGoText::
	text "Super! Tu as"
	line "@"
	TX_NUM hOaksAideNumMonsOwned, 1, 3
	text " #MON"
	cont "différents!"
	cont "Félicitations!"

	para "Voici ta"
	line "récompense!"
	prompt

_OaksAideGotItemText::
	text $52, " obtient"
	line "@"
	TX_RAM wOaksAideRewardItemName
	text "!@@"

_OaksAideNoRoomText::
	text "Oh! Tu n'as plus"
	line "de place pour"
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "."
	done

INCLUDE "text/maps/viridian_forest.asm"
INCLUDE "text/maps/mt_moon_1f.asm"
INCLUDE "text/maps/mt_moon_b1f.asm"
INCLUDE "text/maps/mt_moon_b2f.asm"
INCLUDE "text/maps/ss_anne_1.asm"
INCLUDE "text/maps/ss_anne_2.asm"
INCLUDE "text/maps/ss_anne_3.asm"
INCLUDE "text/maps/ss_anne_4.asm"
INCLUDE "text/maps/ss_anne_5.asm"
INCLUDE "text/maps/ss_anne_6.asm"
INCLUDE "text/maps/ss_anne_7.asm"
INCLUDE "text/maps/ss_anne_8.asm"
INCLUDE "text/maps/ss_anne_9.asm"
INCLUDE "text/maps/ss_anne_10.asm"
INCLUDE "text/maps/victory_road_3f.asm"
INCLUDE "text/maps/rocket_hideout_b1f.asm"
INCLUDE "text/maps/rocket_hideout_b2f.asm"
INCLUDE "text/maps/rocket_hideout_b3f.asm"
INCLUDE "text/maps/rocket_hideout_b4f.asm"
INCLUDE "text/maps/rocket_hideout_elevator.asm"
INCLUDE "text/maps/silph_co_2f.asm"
INCLUDE "text/maps/silph_co_3f.asm"
INCLUDE "text/maps/silph_co_4f.asm"
INCLUDE "text/maps/silph_co_5f_1.asm"


SECTION "Text 2", ROMX, BANK[TEXT_2]

INCLUDE "text/maps/silph_co_5f_2.asm"
INCLUDE "text/maps/silph_co_6f.asm"
INCLUDE "text/maps/silph_co_7f.asm"
INCLUDE "text/maps/silph_co_8f.asm"
INCLUDE "text/maps/silph_co_9f.asm"
INCLUDE "text/maps/silph_co_10f.asm"
INCLUDE "text/maps/silph_co_11f.asm"
INCLUDE "text/maps/mansion_2f.asm"
INCLUDE "text/maps/mansion_3f.asm"
INCLUDE "text/maps/mansion_b1f.asm"
INCLUDE "text/maps/safari_zone_east.asm"
INCLUDE "text/maps/safari_zone_north.asm"
INCLUDE "text/maps/safari_zone_west.asm"
INCLUDE "text/maps/safari_zone_center.asm"
INCLUDE "text/maps/safari_zone_rest_house_1.asm"
INCLUDE "text/maps/safari_zone_secret_house.asm"
INCLUDE "text/maps/safari_zone_rest_house_2.asm"
INCLUDE "text/maps/safari_zone_rest_house_3.asm"
INCLUDE "text/maps/safari_zone_rest_house_4.asm"
INCLUDE "text/maps/unknown_dungeon_1f.asm"
INCLUDE "text/maps/unknown_dungeon_2f.asm"
INCLUDE "text/maps/unknown_dungeon_b1f.asm"
INCLUDE "text/maps/victory_road_1f.asm"
INCLUDE "text/maps/lance.asm"
INCLUDE "text/maps/hall_of_fame.asm"
INCLUDE "text/maps/champion.asm"
INCLUDE "text/maps/lorelei.asm"
INCLUDE "text/maps/bruno.asm"
INCLUDE "text/maps/agatha.asm"
INCLUDE "text/maps/rock_tunnel_b2f_1.asm"


SECTION "Text 3", ROMX, BANK[TEXT_3]

INCLUDE "text/maps/rock_tunnel_b2f_2.asm"
INCLUDE "text/maps/seafoam_islands_1f.asm"
INCLUDE "text/maps/seafoam_islands_b1f.asm"
INCLUDE "text/maps/seafoam_islands_b2f.asm"
INCLUDE "text/maps/seafoam_islands_b3f.asm"
INCLUDE "text/maps/seafoam_islands_b4f.asm"

_AIBattleWithdrawText::
	TX_RAM wTrainerName
	text ""
	line "rappelle..."
	cont "@"
	TX_RAM wEnemyMonNick
	text "!"
	prompt

_AIBattleUseItemText::
	TX_RAM wTrainerName
	text " uti-"
	line "lise @"
	TX_RAM wcd6d
	text ""
	cont "sur @"
	TX_RAM wEnemyMonNick
	text "!"
	prompt

_TradeWentToText::
	TX_RAM wcf50
	text " va"
	line "à @"
	TX_RAM wGrassRate
	text "."
	done

_TradeForText::
	text "Contre @"
	TX_RAM wcf50
	text ""
	line "de ",$52,","
	done

_TradeSendsText::
	TX_RAM wGrassRate
	text ""
	line "donne @"
	TX_RAM wcd6d
	text "."
	done

_TradeWavesFarewellText::
	TX_RAM wGrassRate
	text ":"
	line "Au revoir,"
	done

_TradeTransferredText::
	TX_RAM wcd6d
	text "!"
	line "(sniff sniff)"
	done

_TradeTakeCareText::
	text "Prends soin de"
	line "@"
	TX_RAM wcd6d
	text "."
	done

_TradeWillTradeText::
	TX_RAM wGrassRate
	text ""
	line "offre @"
	TX_RAM wcd6d
	text ""
	done

_TradeforText::
	text "Contre @"
	TX_RAM wcf50
	text ""
	line "de ",$52,"."
	done

_PlaySlotMachineText::
	text "Une machine à"
	line "sous! On joue?"
	done

_OutOfCoinsSlotMachineText::
	text "Zut de flûte!"
	line "Pas de jetons!"
	done

_BetHowManySlotMachineText::
	text "Combien de"
	line "jetons?"
	done

_StartSlotMachineText::
	text "C'est parti!"
	done

_NotEnoughCoinsSlotMachineText::
	text "Pas assez de"
	line "jetons!"
	prompt

_OneMoreGoSlotMachineText::
	text "Encore une"
	line "fois?"
	done

_LinedUpText::
	text " en ligne!"
	line "@"
	TX_RAM wcf50
	text " jetons!"
	done

_NotThisTimeText::
	text "Oups. Perdu!"
	prompt

_YeahText::
	text "Ouaiiiis!@@"

_DexSeenOwnedText::
	text "#DEX   Vus:@"
	TX_NUM wDexRatingNumMonsSeen, 1, 3
	text " "
	line "         Pris:@"
	TX_NUM wDexRatingNumMonsOwned, 1, 3
	text " "
	done

_DexRatingText::
	text "Eval. #DEX", $6d
	done

_GymStatueText1::
	text "ARENE #MON"
	line "de @"
	TX_RAM wGymCityName
	text ""
	cont "CHAMPION:"
	cont "@"
	TX_RAM wGymLeaderName
	text ""

	para "VAINQUEURS:"
	line $53
	done

_GymStatueText2::
	text "ARENE #MON"
	line "de @"
	TX_RAM wGymCityName
	text ""
	cont "CHAMPION:"
	cont "@"
	TX_RAM wGymLeaderName
	text ""

	para "VAINQUEURS:"
	line $53
	cont $52
	done

_ViridianCityPokecenterGuyText::
	text "Les CENTRES"
	line "#MON soignent"
	cont "tous les #MON"
	cont "blessés ou K.O.!"
	done

_PewterCityPokecenterGuyText::
	text "(Baille)!"

	para "Lorsque RONDOUDOU"
	line "chante, tous les"
	cont "#MON piquent"
	cont "du nez..."

	para "...Moi aussi..."
	line "(Pionce)..."
	done

_CeruleanPokecenterGuyText::
	text "LEO a une sacrée"
	line "collection de"
	cont "#MON!"

	para "Et des rares, en"
	line "plus..."
	done

_LavenderPokecenterGuyText::
	text "Les OSSELAIT"
	line "portent un crâne,"
	cont "non?"

	para "Certains seraient"
	line "prêts à en payer"
	cont "le prix fort!"
	done

_MtMoonPokecenterBenchGuyText::
	text "Tu devrais ranger"
	line "tes #MON en"
	cont "trop via un PC!"
	done

_RockTunnelPokecenterGuyText::
	text "On m'a dit qu'il"
	line "y a des SPECTRES"
	cont "à LAVANVILLE!"
	done

_UnusedBenchGuyText1::
	text "Moi aussi j'veux"
	line "capturer un"
	cont "#MON."
	done

_UnusedBenchGuyText2::
	text "La fatigue..."
	cont "Doucement..."
	cont "Me gagne..."
	done

_UnusedBenchGuyText3::
	text "Le patron de la"
	line "SYLPHE se cache"
	cont "dans le PARC"
	cont "SAFARI."
	done

_VermilionPokecenterGuyText::
	text "C'est vrai qu'un"
	line "#MON de haut"
	cont "niveau est très"
	cont "puissant..."

	para "Mais tout #MON"
	line "est vulnérable"
	cont "face à un certain"
	cont "élément."

	para "Il n'y a donc pas"
	line "de #MON de"
	cont "la mort qui tue."
	done

_CeladonCityPokecenterGuyText::
	text "Si j'avais une"
	line "BICYCLETTE,"
	cont "j'irais sur la"
	cont "PISTE CYCLABLE!"
	done

_FuchsiaCityPokecenterGuyText::
	text "LE PARC SAFARI"
	line "regorge de"
	cont "#MON."

	para "On y trouve aussi"
	line "de très rares!"
	done

_CinnabarPokecenterGuyText::
	text "Les #MON"
	line "peuvent apprendre"
	cont "des techniques"
	cont "même après avoir"
	cont "annulé une"
	cont "évolution."

	para "On peut lancer"
	line "une évolution"
	cont "après avoir"
	cont "appris une"
	cont "technique!!!"
	done

_SaffronCityPokecenterGuyText1::
	text "Pourquoi le"
	line "CONSEIL des 4 ne"
	cont "vient pas casser"
	cont "les dents de la"
	cont "TEAM ROCKET?"
	done

_SaffronCityPokecenterGuyText2::
	text "La TEAM ROCKET"
	line "est partie! Alors"
	cont "c'est la fête!"
	cont "Youpi!"
	done

_CeladonCityHotelText::
	text "Je suis en"
	line "vacances avec ma"
	cont "soeur... "
	cont "Ca craint à mort!"
	done

_BookcaseText::
	text "Des bouquins sur"
	line "les #MON!"
	done

_NewBicycleText::
	text "Une BICYCLETTE"
	line "toute neuve! Top!"
	done

_PushStartText::
	text "START et...paf!"
	line "V'là le MENU!"
	done

_SaveOptionText::
	text "L'option SAUVER"
	line "est sur l'écran"
	cont "du MENU."
	done

_StrengthsAndWeaknessesText::
	text "Tous les #MON"
	line "ont des points"
	cont "faibles! Ils sont"
	cont "également tous"
	cont "puissants face"
	cont "à un certain"
	cont "élément."
	done

_TimesUpText::
	text "Haut-parleur: Hé!"

	para "C'est fini!"
	prompt

_GameOverText::
	text "Haut-parleur:"
	line "Le SAFARI est"
	cont "terminé!"
	done

_CinnabarGymQuizIntroText::
	text "Quiz #MON!"

	para "Une bonne réponse"
	line "ouvrira la porte!"

	para "Une erreur et"
	line "c'est la guerre!"

	para "Pour préserver"
	line "une équipe avant"
	cont "d'affronter le"
	cont "CHAMPION..."

	para "Mieux vaut éviter"
	line "les erreurs!"
	prompt

_CinnabarQuizQuestionsText1::
	text "CHENIPAN évolue"
	line "en PAPILUSION?"
	done

_CinnabarQuizQuestionsText2::
	text "Il existe 9"
	line "BADGES #MON?"
	done

_CinnabarQuizQuestionsText3::
	text "PTITARD évolue"
	line "3 fois?"
	done

_CinnabarQuizQuestionsText4::
	text "La foudre est"
	line "efficace contre"
	cont "les #MON du"
	cont "sol?"
	done

_CinnabarQuizQuestionsText5::
	text "Les #MON du"
	line "même type et du"
	cont "même niveau sont"
	cont "différents?"
	done

_CinnabarQuizQuestionsText6::
	text "CT28 contient"
	line "FOSSE?"
	done

_CinnabarGymQuizCorrectText::
	text "Bonne réponse!"

	para "En avant!@@"

_CinnabarGymQuizIncorrectText::
	text "N'importe quoi!"
	prompt

_MagazinesText::
	text "Des magazines"
	line "#MON!"

	para "Des cahiers"
	line "#MON!"

	para "Des dessins"
	line "#MON!"
	done

_BillsHouseMonitorText::
	text "Un TELEPORTEUR"
	line "sur le moniteur!"
	done

_BillsHouseInitiatedText::
	text $52," enclenche"
	line "le TELEPORTEUR!@@"

_BillsHousePokemonListText1::
	text "La liste des"
	line "#MON favoris"
	cont "de LEO!"
	prompt

_BillsHousePokemonListText2::
	text "Quel #MON"
	line "voulez-vous voir?"
	done

_OakLabEmailText::
	text "Il y a un e-mail!"

	para "..."

	para "Avis à tous les"
	line "dresseurs de"
	cont "#MON!"

	para "Le CONSEIL des 4"
	line "est prêt à punir"
	cont "tout concurrent!"

	para "Présentez vos"
	line "meilleurs #MON"
	cont "et découvrez"
	cont "votre niveau"
	cont "en tant que"
	cont "dresseur!"

	para "LIGUE #MON,"
	line "PLATEAU INDIGO"

	para "PS: PROF. CHEN,"
	line "votre visite est"
	cont "attendue..."
	done

_GameCornerCoinCaseText::
	text "Vous n'avez pas"
	line "de BOITE JETON!"
	done

_GameCornerNoCoinsText::
	text "Vous n'avez pas"
	line "de jetons!"
	done

_GameCornerOutOfOrderText::
	text "EN PANNE"
	line "Machine cassée."
	done

_GameCornerOutToLunchText::
	text "PARTI MANGER"
	line "Machine réservée."
	done

_GameCornerSomeonesKeysText::
	text "Des clés!"
	line "Bah? C'est à qui?"
	done

_JustAMomentText::
	text "Patientez SVP."
	done

TMNotebookText::
	text "C'est un rapport"
	line "sur les CT."

	para "..."

	para "Il existe en tout"
	line "50 CT (Capsule"
	cont "Technique)."

	para "5 CS (Capsule"
	line "Secrète) sont à"
	cont "utiliser à"
	cont "l'infini."

	para "SYLPHE SARL@@"

_TurnPageText::
	text "Tourner la page?"
	done

_ViridianSchoolNotebookText5::
	text "FILLE: Hé! Ne lis"
	line "pas mon journal!@@"

_ViridianSchoolNotebookText1::
	text "Vous examinez le"
	line "journal!"

	para "Première page..."

	para "Les # BALL"
	line "peuvent capturer"
	cont "les #MON."

	para "Jusqu'à 6"
	line "#MON sont"
	cont "transportables."

	para "Les personnes"
	line "s'occupant des"
	cont "#MON sont"
	cont "des dresseurs de"
	cont "#MON."
	prompt

_ViridianSchoolNotebookText2::
	text "Deuxième page..."

	para "Un #MON"
	line "sauvage et en"
	cont "pleine forme est"
	cont "difficile à"
	cont "capturer, alors"
	cont "affaiblissez-le!"

	para "Le poison, la"
	line "brûlure et les"
	cont "autres types de"
	cont "dégâts sont aussi"
	cont "efficaces!"
	prompt

_ViridianSchoolNotebookText3::
	text "Troisième page..."

	para "Le but de chaque"
	line "dresseur est"
	cont "d'affronter les"
	cont "autres dresseurs"
	cont "dans des combats"
	cont "de #MON."

	para "Les combats se"
	line "tiennent en"
	cont "permanence dans"
	cont "les ARENES"
	cont "#MON."
	prompt

_ViridianSchoolNotebookText4::
	text "Quatrième page..."

	para "Le rêve de chaque"
	line "dresseur est de"
	cont "vaincre les 8"
	cont "CHAMPIONS des"
	cont "différentes"
	cont "ARENES #MON."

	para "Ces victoires"
	line "donnent le droit"
	cont "d'affronter..."

	para "Le CONSEIL des 4"
	line "de la LIGUE"
	cont "#MON!"
	prompt

_FightingDojoText_52a10::
	text "La victoire..."
	line "C'est bien!"
	done

_FightingDojoText_52a1d::
	text "La défaite..."
	line "C'est mal!"
	done

_FightingDojoText::
	text "DOJO"
	done

_IndigoPlateauHQText::
	text "PLATEAU INDIGO"
	line "Quartier général"
	cont "de la LIGUE"
	cont "#MON"
	done

_RedBedroomSNESText::
	text $52," joue à la"
	line "Super Nintendo!"
	cont "...Bon!"
	cont "On y va, non?"
	done

_Route15UpstairsBinocularsText::
	text "Vous regardez"
	line "dans les"
	cont "jumelles..."

	para "Un grand et bel"
	line "oiseau vole vers"
	cont "la mer."
	done

_AerodactylFossilText::
	text "Le fossile du"
	line "PTERA est un"
	cont "#MON rare"
	cont "et ancien."
	done

_KabutopsFossilText::
	text "Le fossile du"
	line "KABUTOPS est un"
	cont "#MON rare"
	cont "et ancien."
	done

_LinkCableHelpText1::
	text "ASTUCE"

	para "Le Câble Link"
	prompt

_LinkCableHelpText2::
	text "Quel chapitre"
	line "voulez-vous lire?"
	done

_LinkCableInfoText1::
	text "Après avoir"
	line "connecté deux"
	cont "GAME BOY, parlez"
	cont "à l'hôtesse à"
	cont "droite dans tout"
	cont "CENTRE #MON."
	prompt

_LinkCableInfoText2::
	text "Le COLISEE permet"
	line "d'affronter un"
	cont "ami."
	prompt

_LinkCableInfoText3::
	text "Le CENTRE TROC"
	line "permet d'échanger"
	cont "vos #MON."
	prompt

_ViridianSchoolBlackboardText1::
	text "Le tableau décrit"
	line "les changements"
	cont "de STATUT des"
	cont "#MON pendant"
	cont "un combat."
	prompt

_ViridianSchoolBlackboardText2::
	text "Quel chapitre"
	line "voulez-vous lire?"
	done

_ViridianBlackboardSleepText::
	text "Un #MON ne"
	line "peut attaquer"
	cont "s'il est endormi!"

	para "Un #MON reste"
	line "endormi même"
	cont "après un combat."

	para "Un REVEIL peut"
	line "le réveiller!"
	prompt

_ViridianBlackboardPoisonText::
	text "Un #MON"
	line "empoisonné voit"
	cont "son énergie se"
	cont "vider doucement."

	para "Le poison ne"
	line "disparaît pas"
	cont "après un combat."

	para "L'ANTIDOTE soigne"
	line "le poison!"
	prompt

_ViridianBlackboardPrlzText::
	text "La paralysie peut"
	line "annuler certaines"
	cont "attaques!"

	para "La paralysie ne"
	line "disparaît pas"
	cont "après un combat."

	para "L'ANTI-PARA"
	line "soigne toute"
	cont "paralysie!"
	prompt

_ViridianBlackboardBurnText::
	text "La BRULURE réduit"
	line "la puissance et"
	cont "la vitesse. Elle"
	cont "inflige aussi des"
	cont "dégâts continus."

	para "La brûlure ne"
	line "disparaît pas"
	cont "après un combat."

	para "L'ANTI-BRULE"
	line "soigne les grands"
	cont "brûlés!"
	prompt

_ViridianBlackboardFrozenText::
	text "Un #MON"
	line "prisonnier des"
	cont "glaces reste"
	cont "immobile!"

	para "Il reste gelé"
	line "même après la"
	cont "fin du combat."

	para "Un ANTIGEL peut"
	line "réchauffer un"
	cont "#MON!"
	prompt

_VermilionGymTrashText::
	text "Mmmm!"
	line "Un joli tas"
	cont "d'ordures...miam!"
	done

_VermilionGymTrashSuccessText1::
	text "Oh! Un bouton"
	line "dans la poubelle!"
	cont "Dingue!"

	para "Le premier"
	line "verrouillage est"
	cont "levé!@@"

_VermilionGymTrashSuccessText2::
	text "Hé! Un autre"
	line "bouton dans la"
	cont "poubelle! Délire!"
	cont "On appuie!"
	prompt

_VermilionGymTrashSuccessText3::
	text "Le deuxième"
	line "verrouillage est"
	cont "levé!"

	para "La porte s'ouvre!@@"

_VermilionGymTrashFailText::
	text "Une poubelle bien"
	line "dégueulasse!"
	cont "Oups... Les"
	cont "verrouillages"
	cont "sont en place!@@"

_FoundHiddenItemText::
	text $52," trouve:"
	line "@"
	TX_RAM wcd6d
	text "!@@"

_HiddenItemBagFullText::
	text "Zut! Plus de"
	line "place dans"
	cont "l'inventaire!"
	done

_FoundHiddenCoinsText::
	text $52," trouve"
	line "@"
	TX_BCD hCoins, $c2
	text " jetons!@@"

_FoundHiddenCoins2Text::
	text $52," trouve"
	line "@"
	TX_BCD hCoins, $c2
	text " jetons!@@"

_DroppedHiddenCoinsText::
	text ""
	para "Oups! Des jetons"
	line "sont tombés!"
	done

_IndigoPlateauStatuesText1::
	text "PLATEAU INDIGO"
	prompt

_IndigoPlateauStatuesText2::
	text "Le rêve de tout"
	line "dresseur!"
	cont "Quartier général"
	cont "de la LIGUE"
	cont "#MON."
	done

_IndigoPlateauStatuesText3::
	text "La plus haute"
	line "instance #MON."
	cont "Quartier général"
	cont "de la LIGUE"
	cont "#MON."
	done

_PokemonBooksText::
	text "Des bouquins sur"
	line "les #MON!"
	done

_DiglettSculptureText::
	text "Une sculpture de"
	line "TAUPIQUEUR."
	done

_ElevatorText::
	text "Un ascenseur."
	done

_TownMapText::
	text "Une CARTE.@@"

_PokemonStuffText::
	text "Cool! Plein de"
	line "machins sur les"
	cont "#MON!"
	done

_OutOfSafariBallsText::
	text "Haut-parleur: Hé!"

	para "Vous n'avez plus"
	line "de SAFARI BALL!"
	prompt

_WildRanText::
	TX_RAM wEnemyMonNick
	text ""
	line "sauvage s'enfuit!"
	prompt

_EnemyRanText::
	text "Le @"
	TX_RAM wEnemyMonNick
	text ""
	line "ennemi s'enfuit!"
	prompt

_HurtByPoisonText::
	text $5a
	line "souffre du"
	cont "poison!"
	prompt

_HurtByBurnText::
	text $5a
	line "brûle!"
	prompt

_HurtByLeechSeedText::
	text $5a
	line "perd son énergie!"
	prompt

_EnemyMonFaintedText::
	text "Le @"
	TX_RAM wEnemyMonNick
	text ""
	line "ennemi est K.O.!"
	prompt

_MoneyForWinningText::
	text $52," gagne"
	line "@"
	TX_BCD wAmountMoneyWon, $c3
	text "¥!"
	prompt

_TrainerDefeatedText::
	text $52," a vaincu"
	line "@"
	TX_RAM wTrainerName
	text "!"
	prompt

_PlayerMonFaintedText::
	TX_RAM wBattleMonNick
	text ""
	line "est K.O.!"
	prompt

_UseNextMonText::
	text "Appeler un autre"
	line "#MON?"
	done

_Sony1WinText::
	text $53,": Ouaiiis!"
	line "J'suis trop bon,"
	cont "ou bien?"
	prompt

_PlayerBlackedOutText2::
	text $52," n'a plus"
	line "de #MON!"

	para $52," est"
	line "hors-jeu!"
	prompt

_LinkBattleLostText::
	TX_RAM wTrainerName
	text " a"
	line "vaincu ",$52,"!"
	prompt

_TrainerAboutToUseText::
	TX_RAM wTrainerName
	text ""
	line "va appeler..."
	cont"@"
	TX_RAM wEnemyMonNick
	text "!"

	para $52," va-t-il"
	line "changer de"
	cont "#MON?"
	done

_TrainerSentOutText::
	TX_RAM wTrainerName
	text ""
	line "fait appel à... "
	cont "@"
	TX_RAM wEnemyMonNick
	text "!"
	done

_NoWillText::
	text "Il ne veut pas"
	line "combattre!"
	prompt

_CantEscapeText::
	text "Fuite impossible!"
	prompt

_NoRunningText::
	text "On ne peut s'en-"
	line "fuir d'un combat"
	cont "de dresseurs!"
	prompt

_GotAwayText::
	text "Vous prenez la"
	line "fuite!"
	prompt

_ItemsCantBeUsedHereText::
	text "Les objets sont"
	line "inutilisables."
	prompt

_AlreadyOutText::
	TX_RAM wBattleMonNick
	text " est"
	line "déjà au combat!"
	prompt

_MoveNoPPText::
	text "Plus de Points de"
	line "Pouvoir!"
	prompt

_MoveDisabledText::
	text "Cette attaque est"
	line "annulée!"
	prompt

_NoMovesLeftText::
	TX_RAM wBattleMonNick
	text " n'a"
	line "plus d'attaques!"
	done

_MultiHitText::
	text "L'ennemi est"
	line "touché @"
	TX_NUM wPlayerNumHits,1,1
	text " fois!"
	prompt

_ScaredText::
	TX_RAM wBattleMonNick
	text " a peur"
	line "de bouger!"
	prompt

_GetOutText::
	text "SPECTRE: Va-t'en..."
	line "Dehors..."
	prompt

_FastAsleepText::
	text $5a
	line "fait un somme!"
	prompt

_WokeUpText::
	text $5a
	line "se réveille!"
	prompt

_IsFrozenText::
	text $5a
	line "est congelé!"
	prompt

_FullyParalyzedText::
	text $5a
	line "est paralysé!"
	prompt

_FlinchedText::
	text $5a
	line "a la trouille!"
	prompt

_MustRechargeText::
	text $5a
	line "est à plat!"
	prompt

_DisabledNoMoreText::
	text $5a
	line "peut attaquer!"
	prompt

_IsConfusedText::
	text $5a
	line "devient dingue..."
	prompt

_HurtItselfText::
	text "Sa folie lui in-"
	line "flige des dégâts!"
	prompt

_ConfusedNoMoreText::
	text $5a
	line "se sent mieux!"
	prompt

_SavingEnergyText::
	text $5a
	line "se concentre!"
	prompt

_UnleashedEnergyText::
	text $5a
	line "envoie la sauce!"
	prompt

_ThrashingAboutText::
	text $5a
	line "cogne à fond!"
	done

_AttackContinuesText::
	text $5a
	line "attaque encore!"
	done

_CantMoveText::
	text $5a
	line "est immobilisé!"
	prompt

_MoveIsDisabledText::
	TX_RAM wcd6d
	text " de"
	line $5a
	cont "a disparu!"
	prompt

_MonName1Text::
	text $5a, "@@"

_Used1Text::
	text ""
	line "lance @@"

_Used2Text::
	text ""
	line "lance @@"

_InsteadText::
	text "à la place:"
	cont "@@"

_CF50Text::
	TX_RAM wcf50
	text "@"

_ExclamationPoint1Text::
	text ""
	done

_ExclamationPoint2Text::
	text ""
	done

_ExclamationPoint3Text::
	text ""
	done

_ExclamationPoint4Text::
	text ""
	done

_ExclamationPoint5Text::
	text ""
	done

_AttackMissedText::
	text "L'attaque de"
	line $5a
	cont "a échoué!"
	prompt

_KeptGoingAndCrashedText::
	text $5a
	line "tombe par terre!"
	prompt

_UnaffectedText::
	text $59
	line "n'a rien senti!"
	prompt

_DoesntAffectMonText::
	text "Pas d'effet sur"
	line $59,"!"
	prompt

_CriticalHitText::
	text "Coup critique!"
	prompt

_OHKOText::
	text "Super patate!"
	prompt

_LoafingAroundText::
	TX_RAM wBattleMonNick
	text ""
	line "se balade..."
	prompt

_BeganToNapText::
	TX_RAM wBattleMonNick
	text ""
	line "fait une sieste!"
	prompt

_WontObeyText::
	TX_RAM wBattleMonNick
	text ""
	line "n'obéit pas!"
	prompt

_TurnedAwayText::
	TX_RAM wBattleMonNick
	text ""
	line "s'en va!"
	prompt

_IgnoredOrdersText::
	TX_RAM wBattleMonNick
	text ""
	line "ignore les ordres!"
	prompt

_SubstituteTookDamageText::
	text "Le CLONE a pris"
	line "les dégâts pour"
	cont $59,"!"
	prompt

_SubstituteBrokeText::
	text "Le CLONE de"
	line $59
	cont "est détruit!"
	prompt

_BuildingRageText::
	text "La FRENESIE de"
	line $5a
	cont "s'intensifie!"
	prompt

_MirrorMoveFailedText::
	text "La MIMIQUE a"
	next "échoué!"
	prompt

_HitXTimesText::
	text "Touché @"
	TX_NUM wEnemyNumHits, 1, 1
	text " fois!"
	prompt

_GainedText::
	TX_RAM wcd6d
	text " gagne"
	line "@@"

_WithExpAllText::
	text "avec MULTI EXP,"
	cont "@@"

_BoostedText::
	text "un bonus de"
	cont "@@"

_ExpPointsText::
	TX_NUM wExpAmountGained, 2, 4
	text " points d'EXP!"
	prompt

_GrewLevelText::
	TX_RAM wcd6d
	text " monte"
	line "au niveau @"
	TX_NUM wCurEnemyLVL, 1, 3
	text "!@@"

_WildMonAppearedText::
	text "Un @"
	TX_RAM wEnemyMonNick
	text ""
	line "sauvage apparaît!"
	prompt

_HookedMonAttackedText::
	text "Le @"
	TX_RAM wEnemyMonNick
	text ""
	line "pêché attaque!"
	prompt

_EnemyAppearedText::
	text "Un @"
	TX_RAM wEnemyMonNick
	text ""
	line "apparaît!"
	prompt

_TrainerWantsToFightText::
	TX_RAM wTrainerName
	text " veut"
	line "se battre!"
	prompt

_UnveiledGhostText::
	text "Le SCOPE SYLPHE"
	line "révèle l'identité"
	cont "du SPECTRE!"
	prompt

_GhostCantBeIDdText::
	text "Fichtre! Le"
	line "SPECTRE ne peut"
	cont "être identifié!"
	prompt

_GoText::
	text "En avant!"
	line "@@"

_DoItText::
	text "Attaque,"
	line "@@"

_GetmText::
	text "A toi,"
	line "@@"

_EnemysWeakText::
	text "Il est à toi,"
	line "@@"

_PlayerMon1Text::
	TX_RAM wBattleMonNick
	text "!"
	done

_PlayerMon2Text::
	TX_RAM wBattleMonNick
	text "!@@"

_EnoughText::
	text "!@@"

_OKExclamationText::
	text "!@@"

_GoodText::
	text "!@@"

_ComeBackText::
	text ""
	line "Reviens!@@"

_SuperEffectiveText::
	text "C'est très"
	line "efficace!"
	prompt

_NotVeryEffectiveText::
	text "Ce n'est pas très"
	line "efficace..."
	prompt

_SafariZoneEatingText::
	text "Le @"
	TX_RAM wEnemyMonNick
	text ""
	line "sauvage mange!"
	prompt

_SafariZoneAngryText::
	text "Le @"
	TX_RAM wEnemyMonNick
	text ""
	line "sauvage se fâche!"
	prompt

; money related
_PickUpPayDayMoneyText::
	text $52," ramasse:"
	line "¥@"
	TX_BCD wTotalPayDayMoney, $c3
	text "!"
	prompt

_ClearSaveDataText::
	text "Effacer toutes"
	line "les données?"
	done

_WhichFloorText::
	text "Quel étage?"
	done

_PartyMenuNormalText::
	text "Sélectionnez un"
	line "#MON."
	done

_PartyMenuItemUseText::
	text "Sur quel #MON?"
	done

_PartyMenuBattleText::
	text "Faire combattre"
	line "quel #MON?"
	done

_PartyMenuUseTMText::
	text "Capsule sur quel"
	line "#MON?"
	done

_PartyMenuSwapMonText::
	text "Nouvelle position"
	line "du #MON..."
	done

_PotionText::
	TX_RAM wcd6d
	text ""
	line "gagne @"
	TX_NUM wHPBarHPDifference, 2, 3
	text " PV!"
	done

_AntidoteText::
	TX_RAM wcd6d
	text " est"
	line "guéri du poison!"
	done

_ParlyzHealText::
	TX_RAM wcd6d
	text ""
	line "peut bouger!"
	done

_BurnHealText::
	TX_RAM wcd6d
	text ""
	line "ne brûle plus!"
	done

_IceHealText::
	TX_RAM wcd6d
	text ""
	line "est dégelé!"
	done

_AwakeningText::
	TX_RAM wcd6d
	text ""
	line "se réveille!"
	done

_FullHealText::
	TX_RAM wcd6d
	text ""
	line "est soigné!"
	done

_ReviveText::
	TX_RAM wcd6d
	text ""
	line "revient à lui!"
	done

_RareCandyText::
	TX_RAM wcd6d
	text " monte"
	line "au niveau @"
	TX_NUM wCurEnemyLVL, $1,$3
	text "!@@"

_TurnedOnPC1Text::
	text $52," allume"
	line "le PC."
	prompt

_AccessedBillsPCText::
	text "Connexion au PC"
	line "de LEO."

	para "Accès au système"
	line "de stockage des"
	cont "#MON."
	prompt

_AccessedSomeonesPCText::
	text "Connexion au PC"
	line "inconnu."

	para "Accès au système"
	line "de stockage des"
	cont "#MON."
	prompt

_AccessedMyPCText::
	text "PC personnel"
	line "connecté."

	para "Accès au système"
	line "de stockage des"
	cont "objets."
	prompt

_TurnedOnPC2Text::
	text $52," allume"
	line "le PC."
	prompt

_WhatDoYouWantText::
	text "Exécuter quelle"
	line "application?"
	done

_WhatToDepositText::
	text "Que désirez-vous"
	line "stocker?"
	done

_DepositHowManyText::
	text "Combien?"
	done

_ItemWasStoredText::
	text "L'objet"
	line "@"
	TX_RAM wcd6d
	text " a"
	cont "été stocké."
	prompt

_NothingToDepositText::
	text "Vous n'avez rien"
	line "à stocker."
	prompt

_NoRoomToStoreText::
	text "Plus de place"
	line "pour stocker."
	prompt

_WhatToWithdrawText::
	text "Que voulez-vous"
	line "retirer?"
	done

_WithdrawHowManyText::
	text "Combien?"
	done

_WithdrewItemText::
	text "Retrait de:"
	line "@"
	TX_RAM wcd6d
	text "."
	prompt

_NothingStoredText::
	text "Rien n'est"
	line "stocké."
	prompt

_CantCarryMoreText::
	text "Votre inventaire"
	line "est plein."
	prompt

_WhatToTossText::
	text "Que désirez-vous"
	line "jeter?"
	done

_TossHowManyText::
	text "Combien?"
	done

_AccessedHoFPCText::
	text "Connexion au site"
	line "de la LIGUE"
	cont "#MON."

	para "Accès à la liste"
	line "des CELEBRITES."
	prompt

_SwitchOnText::
	text "Branché!"
	prompt

_WhatText::
	text "Que faire?"
	done

_DepositWhichMonText::
	text "Stocker quel"
	line "#MON?"
	done

_MonWasStoredText::
	TX_RAM wcf50
	text " est"
	line "stocké dans la"
	cont "boîte @"
	TX_RAM wBoxNumString
	text "."
	prompt

_CantDepositLastMonText::
	text "Vous ne pouvez"
	line "stocker votre"
	cont "dernier #MON!"
	prompt

_BoxFullText::
	text "Oups! Cette boîte"
	line "est pleine!"
	prompt

_MonIsTakenOutText::
	text "Retrait de"
	line "@"
	TX_RAM wcf50
	text ""
	cont "terminé."
	prompt

_NoMonText::
	text "Hein? Il n'y a"
	line "aucun #MON!"
	prompt

_CantTakeMonText::
	text "Vous ne pouvez"
	line "retirer un"
	cont "#MON."

	para "Stockez d'abord"
	line "un #MON."
	prompt

_ReleaseWhichMonText::
	text "Relâcher quel"
	line "#MON?"
	done

_OnceReleasedText::
	TX_RAM wcf50
	text " sera"
	line "à jamais perdu."
	cont "Continuer?"
	done

_MonWasReleasedText::
	TX_RAM wcf50
	text " est"
	line "relâché. Adieu,"
	cont "@"

_CF50ExclamationText::
	TX_RAM wcf50
	text "!"
	prompt

_RequireCoinCaseText::
	text "Vous n'avez pas"
	line "de BOITE JETON!@@"

_ExchangeCoinsForPrizesText::
	text "Nous échangeons"
	line "des prix contre"
	cont "des jetons."
	prompt

_WhichPrizeText::
	text "Quel prix"
	line "désirez-vous?"
	done

_HereYouGoText::
	text "Et voilà!@@"

_SoYouWantPrizeText::
	TX_RAM wcd6d
	text "?"
	done

_SorryNeedMoreCoinsText::
	text "Vous n'avez pas"
	line "assez de jetons.@@"

_OopsYouDontHaveEnoughRoomText::
	text "Votre inventaire"
	line "est plein.@@"

_OhFineThenText::
	text "Bon. Très bien.@@"

_GetDexRatedText::
	text "Voulez-vous faire"
	line "évaluer votre"
	cont "#DEX?"
	done

_ClosedOaksPCText::
	text "PC du PROF. CHEN,"
	line "Déconnexion...@@"

_AccessedOaksPCText::
	text "Connexion au PC"
	line "du PROF. CHEN."

	para "Accès au système"
	line "d'évaluation du"
	cont "#DEX."
	prompt

_WhereWouldYouLikeText::
	text "Où désirez-vous"
	line "aller?"
	done

_PleaseWaitText::
	text "Un instant,"
	line "s'il vous plaît."
	done

_LinkCanceledText::
	text "La connexion a"
	line "échoué."
	done

INCLUDE "text/oakspeech.asm"

_DoYouWantToNicknameText::
	text "Voulez-vous"
	line "donner un surnom"
	cont "à @"
	TX_RAM wcd6d
	text "?"
	done

_YourNameIsText::
	text "OK! Ton nom est"
	line "donc ",$52,"!"
	prompt

_HisNameIsText::
	text "Ah oui! Je me"
	line "souviens! Son nom"
	cont "est ",$53,"!"
	prompt

_WillBeTradedText::
	TX_RAM wNameOfPlayerMonToBeTraded
	text " et"
	line "@"
	TX_RAM wcd6d
	text " seront"
	cont "échangés."
	done

_Char00Text::
	TX_NUM hSpriteIndexOrTextID,1,2
	text " ERREUR."
	done

_Char55Text::
	text $4b,"@@"

INCLUDE "text/maps/digletts_cave_route_2_entrance.asm"
INCLUDE "text/maps/viridian_forest_exit.asm"
INCLUDE "text/maps/route_2_house.asm"
INCLUDE "text/maps/route_2_gate.asm"
INCLUDE "text/maps/viridian_forest_entrance.asm"
INCLUDE "text/maps/mt_moon_pokecenter.asm"
INCLUDE "text/maps/saffron_gates.asm"
INCLUDE "text/maps/daycare_1.asm"


SECTION "Text 4", ROMX, BANK[TEXT_4]

INCLUDE "text/maps/daycare_2.asm"
INCLUDE "text/maps/underground_path_route_5_entrance.asm"
INCLUDE "text/maps/underground_path_route_6_entrance.asm"
INCLUDE "text/maps/underground_path_route_7_entrance.asm"
INCLUDE "text/maps/underground_path_route_7_entrance_unused.asm"
INCLUDE "text/maps/underground_path_route_8_entrance.asm"
INCLUDE "text/maps/rock_tunnel_pokecenter.asm"
INCLUDE "text/maps/rock_tunnel_b1f.asm"
INCLUDE "text/maps/power_plant.asm"
INCLUDE "text/maps/route_11_gate.asm"
INCLUDE "text/maps/route_11_gate_upstairs.asm"
INCLUDE "text/maps/digletts_cave_route_11_entrance.asm"
INCLUDE "text/maps/route_12_gate.asm"
INCLUDE "text/maps/route_12_gate_upstairs.asm"
INCLUDE "text/maps/route_12_house.asm"
INCLUDE "text/maps/route_15_gate.asm"
INCLUDE "text/maps/route_15_gate_upstairs.asm"
INCLUDE "text/maps/route_16_gate.asm"
INCLUDE "text/maps/route_16_gate_upstairs.asm"
INCLUDE "text/maps/route_16_house.asm"
INCLUDE "text/maps/route_18_gate.asm"
INCLUDE "text/maps/route_18_gate_upstairs.asm"
IF DEF(_OPTION_BEACH_HOUSE)
INCLUDE "text/maps/beach_house.asm"
ENDC
INCLUDE "text/maps/pokemon_league_gate.asm"
INCLUDE "text/maps/victory_road_2f.asm"
INCLUDE "text/maps/bills_house.asm"
INCLUDE "text/maps/route_1.asm"
INCLUDE "text/maps/route_2.asm"
INCLUDE "text/maps/route_3.asm"
INCLUDE "text/maps/route_4.asm"
INCLUDE "text/maps/route_5.asm"
INCLUDE "text/maps/route_6.asm"
INCLUDE "text/maps/route_7.asm"
INCLUDE "text/maps/route_8.asm"
INCLUDE "text/maps/route_9.asm"
INCLUDE "text/maps/route_10.asm"
INCLUDE "text/maps/route_11_1.asm"


SECTION "Text 5", ROMX, BANK[TEXT_5]

INCLUDE "text/maps/route_11_2.asm"
INCLUDE "text/maps/route_12.asm"
INCLUDE "text/maps/route_13.asm"
INCLUDE "text/maps/route_14.asm"
INCLUDE "text/maps/route_15.asm"
INCLUDE "text/maps/route_16.asm"
INCLUDE "text/maps/route_17.asm"
INCLUDE "text/maps/route_18.asm"
INCLUDE "text/maps/route_19.asm"
INCLUDE "text/maps/route_20.asm"
INCLUDE "text/maps/route_21.asm"
INCLUDE "text/maps/route_22.asm"
INCLUDE "text/maps/route_23.asm"
INCLUDE "text/maps/route_24_1.asm"


SECTION "Text 6", ROMX, BANK[TEXT_6]

INCLUDE "text/maps/route_24_2.asm"
INCLUDE "text/maps/route_25.asm"

_FileDataDestroyedText::
	text "La sauvegarde est"
	line "détruite!"
	prompt

_WouldYouLikeToSaveText::
	text "Voulez-vous"
	line "sauvegarder?"
	done

_GameSavedText::
	text $52,""
	line "sauvegarde"
	cont "la partie!"
	done

_OlderFileWillBeErasedText::
	text "L'ancienne"
	line "sauvegarde sera"
	cont "effacée. OK?"
	done

_WhenYouChangeBoxText::
	text "En activant"
	line "une autre boîte"
	cont "de #MON, les"
	cont "données seront"
	cont "sauvegardées."

	para "Etes-vous"
	line "d'accord?"
	done

_ChooseABoxText::
	text "Choisissez une"
	line "BOITE ",$4a,".@@"

_EvolvedText::
	TX_RAM wcf50
	text " évolue"
	done

_IntoText::
	text ""
	line "en @"
	TX_RAM wcd6d
	text "!"
	done

_StoppedEvolvingText::
	text "Hein? @"
	TX_RAM wcf50
	text ""
	line "n'évolue plus!"
	prompt

_IsEvolvingText::
	text "Hein? @"
	TX_RAM wcf50
	text ""
	line "évolue!"
	done

_FellAsleepText::
	text $59
	line "s'endort!"
	prompt

_AlreadyAsleepText::
	text $59
	line "est déjà endormi!"
	prompt

_PoisonedText::
	text $59
	line "est empoisonné!"
	prompt

_BadlyPoisonedText::
	text $59
	line "est gravement"
	cont "empoisonné!"
	prompt

_BurnedText::
	text $59
	line "brûle!"
	prompt

_FrozenText::
	text $59
	line "est gelé!"
	prompt

_FireDefrostedText::
	text "Le feu dégèle"
	line $59,"!"
	prompt

_MonsStatsRoseText::
	text $5a
	line "gagne @"
	TX_RAM wcf50
	text "@@"

_GreatlyRoseText::
	text $4c,"à fond@@"

_RoseText::
	text "!"
	prompt

_MonsStatsFellText::
	text $59
	line "perd @"
	TX_RAM wcf50
	text "@@"

_GreatlyFellText::
	text $4c,"à fond@@"

_FellText::
	text "!"
	prompt

_RanFromBattleText::
	text $5a
	line "fuit le combat!"
	prompt

_RanAwayScaredText::
	text $59
	line "panique et fuit!"
	prompt

_WasBlownAwayText::
	text $59
	line "a été soufflé!"
	prompt

_ChargeMoveEffectText::
	text $5a,"@@"

_MadeWhirlwindText::
	text ""
	line "crée un cyclone!"
	prompt

_TookInSunlightText::
	text ""
	line "rayonne!"
	prompt

_LoweredItsHeadText::
	text ""
	line "prend du recul!"
	prompt

_SkyAttackGlowingText::
	text ""
	line "brille!"
	prompt

_FlewUpHighText::
	text ""
	line "s'envole!"
	prompt

_DugAHoleText::
	text ""
	line "creuse un trou!"
	prompt

_BecameConfusedText::
	text $59
	line "devient fou!"
	prompt

_MimicLearnedMoveText::
	text $5a
	line "apprend"
	cont "@"
	TX_RAM wcd6d
	text "!"
	prompt

_MoveWasDisabledText::
	TX_RAM wcd6d
	text " de"
	line $59
	cont "a disparu!"
	prompt

_NothingHappenedText::
	text "Rien ne se passe!"
	prompt

_NoEffectText::
	text "Sans effet!"
	prompt

_ButItFailedText::
	text "Mais échoue!"
	prompt

_DidntAffectText::
	text "Aucun effet sur"
	line $59,"!"
	prompt

_IsUnaffectedText::
	text $59
	line "ne sent rien!"
	prompt

_ParalyzedMayNotAttackText::
	text $59
	line "est paralysé!"
	cont "Il peut ne pas"
	cont "attaquer!"
	prompt

_SubstituteText::
	text "Il crée un"
	line "CLONE!"
	prompt

_HasSubstituteText::
	text $5a
	line "a un CLONE!"
	prompt

_TooWeakSubstituteText::
	text "Trop faible pour"
	line "créer un CLONE!"
	prompt

_CoinsScatteredText::
	text "Une pluie de"
	line "pognon!"
	prompt

_GettingPumpedText::
	text $5a
	line "accroît sa force!"
	prompt

_WasSeededText::
	text $59
	line "est infecté!"
	prompt

_EvadedAttackText::
	text $59
	line "esquive!"
	prompt

_HitWithRecoilText::
	text $5a
	line "se blesse en"
	cont "frappant!"
	prompt

_ConvertedTypeText::
	text "Son élément"
	line "s'adapte!"
	prompt

_StatusChangesEliminatedText::
	text "Tout effet est"
	line "annulé!"
	prompt

_StartedSleepingEffect::
	text $5a
	line "s'endort!"
	done

_FellAsleepBecameHealthyText::
	text $5a
	line "s'endort et"
	cont "régénère!"
	done

_RegainedHealthText::
	text $5a
	line "régénère!"
	prompt

_TransformedText::
	text $5a
	line "se transforme en"
	cont "@"
	TX_RAM wcd6d
	text "!"
	prompt

_LightScreenProtectedText::
	text $5a
	line "est protégé con-"
	cont "tre les attaques"
	cont "spéciales!"
	prompt

_ReflectGainedArmorText::
	text $5a
	line "augmente sa"
	cont "protection!"
	prompt

_ShroudedInMistText::
	text $5a
	line "s'estompe dans la"
	cont "brume!"
	prompt

_SuckedHealthText::
	text "La vie de"
	line $59
	cont "est absorbée!"
	prompt

_DreamWasEatenText::
	text "Les rêves de"
	line $59
	cont "sont dévorés!"
	prompt

_TradeCenterText1::
	text "!"
	done

_ColosseumText1::
	text "!"
	done

INCLUDE "text/maps/reds_house_1f.asm"
INCLUDE "text/maps/blues_house.asm"
INCLUDE "text/maps/oaks_lab.asm"
INCLUDE "text/maps/viridian_pokecenter.asm"
INCLUDE "text/maps/viridian_mart.asm"
INCLUDE "text/maps/school.asm"
INCLUDE "text/maps/viridian_house.asm"
INCLUDE "text/maps/viridian_gym.asm"
INCLUDE "text/maps/museum_1f.asm"
INCLUDE "text/maps/museum_2f.asm"
INCLUDE "text/maps/pewter_gym_1.asm"


SECTION "Text 7", ROMX, BANK[TEXT_7]

INCLUDE "text/maps/pewter_gym_2.asm"
INCLUDE "text/maps/pewter_house_1.asm"
INCLUDE "text/maps/pewter_mart.asm"
INCLUDE "text/maps/pewter_house_2.asm"
INCLUDE "text/maps/pewter_pokecenter.asm"
INCLUDE "text/maps/cerulean_trashed_house.asm"
INCLUDE "text/maps/cerulean_trade_house.asm"
INCLUDE "text/maps/cerulean_pokecenter.asm"
INCLUDE "text/maps/cerulean_gym.asm"
INCLUDE "text/maps/bike_shop.asm"
INCLUDE "text/maps/cerulean_mart.asm"
INCLUDE "text/maps/cerulean_badge_house.asm"
INCLUDE "text/maps/lavender_pokecenter.asm"
INCLUDE "text/maps/pokemon_tower_1f.asm"
INCLUDE "text/maps/pokemon_tower_2f.asm"
INCLUDE "text/maps/pokemon_tower_3f.asm"
INCLUDE "text/maps/pokemon_tower_4f.asm"
INCLUDE "text/maps/pokemon_tower_5f.asm"
INCLUDE "text/maps/pokemon_tower_6f.asm"
INCLUDE "text/maps/pokemon_tower_7f.asm"
INCLUDE "text/maps/fujis_house.asm"
INCLUDE "text/maps/lavender_mart.asm"
INCLUDE "text/maps/lavender_house.asm"
INCLUDE "text/maps/name_rater.asm"
INCLUDE "text/maps/vermilion_pokecenter.asm"
INCLUDE "text/maps/fan_club.asm"
INCLUDE "text/maps/vermilion_mart.asm"
INCLUDE "text/maps/vermilion_gym_1.asm"


SECTION "Text 8", ROMX, BANK[TEXT_8]

INCLUDE "text/maps/vermilion_gym_2.asm"
INCLUDE "text/maps/vermilion_house.asm"
INCLUDE "text/maps/vermilion_dock.asm"
INCLUDE "text/maps/vermilion_fishing_house.asm"
INCLUDE "text/maps/celadon_dept_store_1f.asm"
INCLUDE "text/maps/celadon_dept_store_2f.asm"
INCLUDE "text/maps/celadon_dept_store_3f.asm"
INCLUDE "text/maps/celadon_dept_store_4f.asm"
INCLUDE "text/maps/celadon_dept_store_roof.asm"
INCLUDE "text/maps/celadon_mansion_1f.asm"
INCLUDE "text/maps/celadon_mansion_2f.asm"
INCLUDE "text/maps/celadon_mansion_3f.asm"
INCLUDE "text/maps/celadon_mansion_4f_outside.asm"
INCLUDE "text/maps/celadon_mansion_4f_inside.asm"
INCLUDE "text/maps/celadon_pokecenter.asm"
INCLUDE "text/maps/celadon_gym.asm"
INCLUDE "text/maps/celadon_game_corner.asm"
INCLUDE "text/maps/celadon_dept_store_5f.asm"
INCLUDE "text/maps/celadon_prize_room.asm"
INCLUDE "text/maps/celadon_diner.asm"
INCLUDE "text/maps/celadon_house.asm"
INCLUDE "text/maps/celadon_hotel.asm"
INCLUDE "text/maps/fuchsia_mart.asm"
INCLUDE "text/maps/fuchsia_house.asm"
INCLUDE "text/maps/fuchsia_pokecenter.asm"
INCLUDE "text/maps/wardens_house.asm"
INCLUDE "text/maps/safari_zone_entrance.asm"
INCLUDE "text/maps/fuchsia_gym_1.asm"


SECTION "Text 9", ROMX, BANK[TEXT_9]

INCLUDE "text/maps/fuchsia_gym_2.asm"
INCLUDE "text/maps/fuchsia_meeting_room.asm"
INCLUDE "text/maps/fuchsia_fishing_house.asm"
INCLUDE "text/maps/mansion_1f.asm"
INCLUDE "text/maps/cinnabar_gym.asm"
INCLUDE "text/maps/cinnabar_lab.asm"
INCLUDE "text/maps/cinnabar_lab_trade_room.asm"
INCLUDE "text/maps/cinnabar_lab_metronome_room.asm"
INCLUDE "text/maps/cinnabar_lab_fossil_room.asm"
INCLUDE "text/maps/cinnabar_pokecenter.asm"
INCLUDE "text/maps/cinnabar_mart.asm"
INCLUDE "text/maps/indigo_plateau_lobby.asm"
INCLUDE "text/maps/copycats_house_1f.asm"
INCLUDE "text/maps/copycats_house_2f.asm"
INCLUDE "text/maps/fighting_dojo.asm"
INCLUDE "text/maps/saffron_gym.asm"
INCLUDE "text/maps/saffron_house.asm"
INCLUDE "text/maps/saffron_mart.asm"
INCLUDE "text/maps/silph_co_1f.asm"
INCLUDE "text/maps/saffron_pokecenter.asm"
INCLUDE "text/maps/mr_psychics_house.asm"

_PokemartGreetingText::
	text "Hi there!"
	next "May I help you?"
	done

_PokemonFaintedText::
	TX_RAM wcd6d
	db $0
	line "fainted!"
	done

_PlayerBlackedOutText::
	text $52, " is out of"
	line "useable #MON!"

	para $52, " blacked"
	line "out!"
	prompt

_RepelWoreOffText::
	text "REPEL's effect"
	line "wore off."
	done

_PokemartBuyingGreetingText::
	text "Take your time."
	done

_PokemartTellBuyPriceText::
	TX_RAM wcf50
	text "?"
	line "That will be"
	cont "¥@"
	TX_BCD hMoney, $c3
	text ". OK?"
	done

_PokemartBoughtItemText::
	text "Here you are!"
	line "Thank you!"
	prompt

_PokemartNotEnoughMoneyText::
	text "You don't have"
	line "enough money."
	prompt

_PokemartItemBagFullText::
	text "You can't carry"
	line "any more items."
	prompt

_PokemonSellingGreetingText::
	text "What would you"
	line "like to sell?"
	done

_PokemartTellSellPriceText::
	text "I can pay you"
	line "¥@"
	TX_BCD hMoney, $c3
	text " for that."
	done

_PokemartItemBagEmptyText::
	text "You don't have"
	line "anything to sell."
	prompt

_PokemartUnsellableItemText::
	text "I can't put a"
	line "price on that."
	prompt

_PokemartThankYouText::
	text "Thank you!"
	done

_PokemartAnythingElseText::
	text "Is there anything"
	line "else I can do?"
	done

_LearnedMove1Text::
	TX_RAM wLearnMoveMonName
	text " learned"
	line "@"
	TX_RAM wcf50
	text "!@@"

_WhichMoveToForgetText::
	text "Which move should"
	next "be forgotten?"
	done

_AbandonLearningText::
	text "Abandon learning"
	line "@"
	TX_RAM wcf50
	text "?"
	done

_DidNotLearnText::
	TX_RAM wLearnMoveMonName
	db $0
	line "did not learn"
	cont "@"
	TX_RAM wcf50
	text "!"
	prompt

_TryingToLearnText::
	TX_RAM wLearnMoveMonName
	text " is"
	line "trying to learn"
	cont "@"
	TX_RAM wcf50
	text "!"

	para "But, @"
	TX_RAM wLearnMoveMonName
	db $0
	line "can't learn more"
	cont "than 4 moves!"

	para "Delete an older"
	line "move to make room"
	cont "for @"
	TX_RAM wcf50
	text "?"
	done

_OneTwoAndText::
	text "1, 2 and...@@"

_PoofText::
	text " Poof!@@"

_ForgotAndText::
	db $0
	para "@"
	TX_RAM wLearnMoveMonName
	text " forgot"
	line "@"
	TX_RAM wcd6d
	text "!"

	para "And..."
	prompt

_HMCantDeleteText::
	text "HM techniques"
	line "can't be deleted!"
	prompt

_PokemonCenterWelcomeText::
	text "Welcome to our"
	line "#MON CENTER!"

	para "We heal your"
	line "#MON back to"
	cont "perfect health!"
	prompt

_ShallWeHealYourPokemonText::
	text "Shall we heal your"
	line "#MON?"
	done

_NeedYourPokemonText::
	text "OK. We'll need"
	line "your #MON."
	done

_PokemonFightingFitText::
	text "Thank you!"
	line "Your #MON are"
	cont "fighting fit!"
	prompt

_PokemonCenterFarewellText::
	text "We hope to see"
	line "you again!"
	done

_CableClubNPCAreaReservedFor2FriendsLinkedByCableText::
	text "This area is"
	line "reserved for 2"
	cont "friends who are"
	cont "linked by cable."
	done

_CableClubNPCWelcomeText::
	text "Welcome to the"
	line "Cable Club!"
	done

_CableClubNPCPleaseApplyHereHaveToSaveText::
	text "Please apply here."

	para "Before opening"
	line "the link, we have"
	cont "to save the game."
	done

_CableClubNPCPleaseWaitText::
	text "Please wait.@@"

_CableClubNPCLinkClosedBecauseOfInactivityText::
	text "The link has been"
	line "closed because of"
	cont "inactivity."

	para "Please contact"
	line "your friend and"
	cont "come again!"
	done


SECTION "Text 10", ROMX, BANK[TEXT_10]

_CableClubNPCPleaseComeAgainText::
	text "A bientôt!"
	done

_CableClubNPCMakingPreparationsText::
	text "Nous préparons"
	line "le lien."
	cont "Patience s.v.p.!"
	done

_UsedStrengthText::
	TX_RAM wcd6d
	text ""
	line "utilise FORCE.@@"

_CanMoveBouldersText::
	TX_RAM wcd6d
	text ""
	line "peut bouger"
	cont "les rochers."
	prompt

_CurrentTooFastText::
	text "Le courant est"
	line "trop rapide!"
	prompt

_CyclingIsFunText::
	text "Le vélo,"
	line "c'est cool!"
	cont "Oublie le SURF!"
	prompt

_FlashLightsAreaText::
	text "Un FLASH éclaire"
	line "les environs!"
	prompt

_WarpToLastPokemonCenterText::
	text "Téléportation au"
	line "dernier CENTRE"
	cont "#MON visité."
	done

_CannotUseTeleportNowText::
	TX_RAM wcd6d
	text " ne"
	line "peut utiliser la"
	cont "TELEPORTATION."
	prompt

_CannotFlyHereText::
	TX_RAM wcd6d
	text " ne"
	line "peut VOLER ici."
	prompt

_NotHealthyEnoughText::
	text "Points de vie"
	line "insuffisants."
	prompt

_NewBadgeRequiredText::
	text "Non! Un nouveau"
	line "BADGE est requis."
	prompt

_CannotUseItemsHereText::
	text "Pas d'objets ici!"
	prompt

_CannotGetOffHereText::
	text "Impossible de"
	line "descendre ici!"
	prompt

_GotMonText::
	text $52, " obtient:"
	line "@"
	TX_RAM wcd6d
	text "!@@"

_SetToBoxText::
	text "Plus de place"
	line "pour un #MON!"
	cont "@"
	TX_RAM wBoxMonNicks
	text " est"
	cont "transféré à la"
	cont "BOITE @"
	TX_RAM wcf50
	text " du PC!"
	done

_BoxIsFullText::
	text "Plus de place"
	line "pour un #MON!"

	para "La BOITE #MON"
	line "est pleine!"

	para "Changez de BOITE"
	line "dans un CENTRE"
	cont "#MON!"
	done

INCLUDE "text/maps/pallet_town.asm"
INCLUDE "text/maps/viridian_city.asm"
INCLUDE "text/maps/pewter_city.asm"
INCLUDE "text/maps/cerulean_city.asm"
INCLUDE "text/maps/lavender_town.asm"
INCLUDE "text/maps/vermilion_city.asm"
INCLUDE "text/maps/celadon_city.asm"
INCLUDE "text/maps/fuchsia_city.asm"
INCLUDE "text/maps/cinnabar_island.asm"
INCLUDE "text/maps/saffron_city.asm"

_ItemUseBallText00::
	text "Il évite la BALL!"

	para "Capture"
	line "impossible!"
	prompt

_ItemUseBallText01::
	text "Vous manquez le"
	line "#MON!"
	prompt

_ItemUseBallText02::
	text "Zut de flûte! Il"
	line "s'est libéré!"
	prompt

_ItemUseBallText03::
	text "Méga-mince..."
	line "Presque!"
	prompt

_ItemUseBallText04::
	text "Pas d'bol, hein?"
	prompt

_ItemUseBallText05::
	text "Top cool!"
	line "@"
	TX_RAM wEnemyMonNick
	text " est"
	cont "capturé!@@"

_ItemUseBallText07::
	TX_RAM wBoxMonNicks
	text " est"
	line "transféré au PC"
	cont "de LEO!"
	prompt

_ItemUseBallText08::
	TX_RAM wBoxMonNicks
	text " est"
	line "transféré au PC"
	cont "inconnu!"
	prompt

_ItemUseBallText06::
	text "Le profil de"
	line "@"
	TX_RAM wEnemyMonNick
	text " est"
	cont "transféré sur le"
	cont "#DEX!@@"

_SurfingGotOnText::
	text $52, " monte sur"
	line "@"
	TX_RAM wcd6d
	text "!"
	prompt

_SurfingNoPlaceToGetOffText::
	text "Impossible de"
	line "descendre!"
	prompt

_VitaminStatRoseText::
	TX_RAM wcf50
	text " de"
	line "@"
	TX_RAM wcd6d
	text ""
	cont "augmente."
	prompt

_VitaminNoEffectText::
	text "Ca ne marche pas."
	prompt

_ThrewBaitText::
	text $52, " lance"
	line "un APPAT."
	done

_ThrewRockText::
	text $52, " lance"
	line "un CAILLOU."
	done

_PlayedFluteNoEffectText::
	text "Vous jouez de la"
	line "#FLUTE."

	para "Super!!! Ca c'est"
	line "d'la zique!"
	prompt

_FluteWokeUpText::
	text "Tous les #MON"
	line "endormis se"
	cont "réveillent."
	prompt

_PlayedFluteHadEffectText::
	text $52, " joue de"
	line "la #FLUTE.@@"

_CoinCaseNumCoinsText::
	text "Jetons"
	line "@"
	TX_BCD wPlayerCoins, $c2
	text " "
	prompt

_ItemfinderFoundItemText::
	text "Ouais!!!!"
	line "Le CHERCH'OBJET"
	cont "signale un objet"
	cont "dans l'coin!"
	prompt

_ItemfinderFoundNothingText::
	text "Non..."
	line "Le CHERCH'OBJET"
	cont "ne signale rien."
	prompt

_RaisePPWhichTechniqueText::
	text "Monter les PP de"
	line "quelle attaque?"
	done

_RestorePPWhichTechniqueText::
	text "Remplir les PP de"
	line "quelle attaque?"
	done

_PPMaxedOutText::
	text "PP de @"
	TX_RAM wcf50
	text ""
	line "sont au max."
	prompt

_PPIncreasedText::
	text "PP de @"
	TX_RAM wcf50
	text ""
	line "augmentés."
	prompt

_PPRestoredText::
	text "PP restaurés."
	prompt

_BootedUpTMText::
	text "CT enclenchée!"
	prompt

_BootedUpHMText::
	text "CS enclenchée!"
	prompt

_TeachMachineMoveText::
	text "Elle contient:"
	line "@"
	TX_RAM wcf50

	text "!"

	para "Apprendre"
	line "@"
	TX_RAM wcf50

	text " à"
	cont "un #MON?"
	done

_MonCannotLearnMachineMoveText::
	TX_RAM wcf50
	text " est"
	line "incompatible avec"
	cont "@"
	TX_RAM wcd6d

	text "."

	para "Instruction de"
	line "@"
	TX_RAM wcf50

	text ""
	cont "impossible."
	prompt

_ItemUseNotTimeText::
	text "CHEN: Allô?"
	line $52, "? C'est"
	cont "pas l'moment de"
	cont "faire ça!"
	prompt

_ItemUseNotYoursToUseText::
	text "C'est pas à toi!"
	prompt

_ItemUseNoEffectText::
	text "Sans effet."
	prompt

_ThrowBallAtTrainerMonText1::
	text "Le dresseur dévie"
	line "la BALL!"
	prompt

_ThrowBallAtTrainerMonText2::
	text "Voler, c'est mal!"
	prompt

_NoCyclingAllowedHereText::
	text "Interdit de"
	next "pédaler ici!!!"
	prompt

_NoSurfingHereText::
	text "Pas de SURF sur"
	line "@"
	TX_RAM wcd6d
	text " ici!"
	prompt

_BoxFullCannotThrowBallText::
	text "La BOITE #MON"
	line "est pleine! Objet"
	cont "inutilisable!"
	prompt


SECTION "Text 11", ROMX, BANK[TEXT_11]

_ItemUseText001::
	text $52," utilise:@@"

_ItemUseText002::
	TX_RAM wcf50
	text "!"
	done

_GotOnBicycleText1::
	text $52, " monte sur@@"

_GotOnBicycleText2::
	TX_RAM wcf50
	text "!"
	prompt

_GotOffBicycleText1::
	text $52, " range@@"

_GotOffBicycleText2::
	text "la @"
	TX_RAM wcf50
	text "."
	prompt

_ThrewAwayItemText::
	text "Adieu,"
	line "@"
	TX_RAM wcd6d
	text "!"
	prompt

_IsItOKToTossItemText::
	text "Jeter:"
	line "@"
	TX_RAM wcf50
	text ", OK?"
	prompt

_TooImportantToTossText::
	text "T'es pas bien!"
	line "C'est beaucoup"
	cont "trop important!"
	prompt

_AlreadyKnowsText::
	TX_RAM wcd6d
	text ""
	line "connaît déjà"
	cont "@"
	TX_RAM wcf50
	text "!"
	prompt

_ConnectCableText::
	text "OK! Branche le"
	line "câble comme ça!"
	prompt

_TradedForText::
	text $52, " échange"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text " contre"
	cont "@"
	TX_RAM wInGameTradeReceiveMonName
	text "!@@"

_WannaTrade1Text::
	text "Je cherche un"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text ""

	para "contre un"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text ", OK?"
	done

_NoTrade1Text::
	text "Bon...."
	line "Tant pis..."
	done

_WrongMon1Text::
	text "Mais c'est pas un"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "!"

	para "Reviens m'en"
	line "apporter un!"
	done

_Thanks1Text::
	text "Merciiii!"
	done

_AfterTrade1Text::
	text "Il est cool mon"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text ", hein?"
	done

_WannaTrade2Text::
	text "Bien le bonjour!"
	line "Veux-tu échanger:"

	para "@"
	TX_RAM wInGameTradeGiveMonName
	text " contre"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text ", OK?"
	done

_NoTrade2Text::
	text "Mmmm..."
	line "Pas glop..."
	done

_WrongMon2Text::
	text "Heu? C'est pas un"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "."

	para "Essaie pas de"
	line "m'arnaquer."
	done

_Thanks2Text::
	text "Merci merci!"
	done

_AfterTrade2Text::
	text "Ton @"
	TX_RAM wInGameTradeGiveMonName
	text ""
	line "a évolué pendant"

	para "l'échange!"
	done

_WannaTrade3Text::
	text "Salut! T'as un"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "?"

	para "Contre un joli"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text ", OK?"
	done

_NoTrade3Text::
	text "Dommage."
	done

_WrongMon3Text::
	text "...C'est pas un"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "."

	para "Reviens me voir"
	line "avec un vrai!"
	done

_Thanks3Text::
	text "Merci l'ami!"
	done

_AfterTrade3Text::
	text "Il est bien mon"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text ", hein?"

	para "Mon @"
	TX_RAM wInGameTradeGiveMonName
	text ""
	line "est terrible!"
	done

_NothingToCutText::
	text "Il n'y a rien à"
	line "COUPER!"
	prompt

_UsedCutText::
	TX_RAM wcd6d
	text " a tout"
	line "coupé! Trop fort!"
	prompt


SECTION "Pokedex Text", ROMX, BANK[POKEDEX_TEXT]

INCLUDE "text/pokedex.asm"


SECTION "Move Names", ROMX, BANK[MOVE_NAMES]

INCLUDE "text/move_names.asm"
