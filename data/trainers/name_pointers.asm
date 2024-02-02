TrainerNamePointers:
; These are only used for trainers' defeat speeches.
; They were originally shortened variants of the trainer class names
; in the Japanese versions, but are now redundant with TrainerNames.
	table_width 2, TrainerNamePointers
	dw .YoungsterName
	dw .BugCatcherName
	dw .LassName
	dw wTrainerName
	dw .JrTrainerMName
	dw .JrTrainerFName
	dw .PokemaniacName
	dw .SuperNerdName
	dw wTrainerName
	dw wTrainerName
	dw .BurglarName
	dw .EngineerName
	dw .UnusedJugglerName
	dw wTrainerName
	dw .SwimmerName
	dw wTrainerName
	dw wTrainerName
	dw .BeautyName
	dw wTrainerName
	dw .RockerName
	dw .JugglerName
	dw wTrainerName
	dw wTrainerName
	dw .BlackbeltName
	dw wTrainerName
	dw .ProfOakName
	dw .ChiefName
	dw .ScientistName
	dw wTrainerName
	dw .RocketName
	dw .CooltrainerMName
	dw .CooltrainerFName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	assert_table_length NUM_TRAINERS

.YoungsterName:     db "GAMIN@"
.BugCatcherName:    db "SCOUT@"
.LassName:          db "FILLETTE@"
.JrTrainerMName:    db "DRESSEUR JR♂@"
.JrTrainerFName:    db "DRESSEUR JR♀@"
.PokemaniacName:    db "#MANIAC@"
.SuperNerdName:     db "INTELLO@"
.BurglarName:       db "PILLARD@"
.EngineerName:      db "MECANO@"
.UnusedJugglerName: db "JONGLEUR@"
.SwimmerName:       db "NAGEUR@"
.BeautyName:        db "CANON@"
.RockerName:        db "ROCKER@"
.JugglerName:       db "JONGLEUR@"
.BlackbeltName:     db "KARATEKA@"
.ProfOakName:       db "PROF.CHEN@"
.ChiefName:         db "CHIEF@"
.ScientistName:     db "SCIENTIFIQUE@"
.RocketName:        db "ROCKET@"
.CooltrainerMName:  db "TOPDRESSEUR♂@"
.CooltrainerFName:  db "TOPDRESSEUR♀@"
