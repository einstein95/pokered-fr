SaveTrainerName: ; 27e4a (9:7e4a)
	ld hl,TrainerNamePointers
	ld a,[wTrainerClass]
	dec a
	ld c,a
	ld b,0
	add hl,bc
	add hl,bc
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld de,wcd6d
.CopyCharacter
	ld a,[hli]
	ld [de],a
	inc de
	cp "@"
	jr nz,.CopyCharacter
	ret

TrainerNamePointers: ; 27e64 (9:7e64)
; what is the point of these?
	dw YoungsterName
	dw BugCatcherName
	dw LassName
	dw wTrainerName
	dw JrTrainerMName
	dw JrTrainerFName
	dw PokemaniacName
	dw SuperNerdName
	dw wTrainerName
	dw wTrainerName
	dw BurglarName
	dw EngineerName
	dw JugglerXName
	dw wTrainerName
	dw SwimmerName
	dw wTrainerName
	dw wTrainerName
	dw BeautyName
	dw wTrainerName
	dw RockerName
	dw JugglerName
	dw wTrainerName
	dw wTrainerName
	dw BlackbeltName
	dw wTrainerName
	dw ProfOakName
	dw ChiefName
	dw ScientistName
	dw wTrainerName
	dw RocketName
	dw CooltrainerMName
	dw CooltrainerFName
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

YoungsterName: ; 27ec2 (9:7ec2)
	db "GAMIN@"
BugCatcherName: ; 27ecc (9:7ecc)
	db "SCOUT@"
LassName: ; 27ed8 (9:7ed8)
	db "FILLETTE@"
JrTrainerMName: ; 27edd (9:7edd)
	db "DRESSEUR JR♂@"
JrTrainerFName: ; 27ee9 (9:7ee9)
	db "DRESSEUR JR♀@"
PokemaniacName: ; 27ef5 (9:7ef5)
	db "#MANIAC@"
SuperNerdName: ; 27f00 (9:7f00)
	db "INTELLO@"
BurglarName: ; 27f0b (9:7f0b)
	db "PILLARD@"
EngineerName: ; 27f13 (9:7f13)
	db "MECANO@"
JugglerXName: ; 27f1c (9:7f1c)
	db "JONGLEUR@"
SwimmerName: ; 27f24 (9:7f24)
	db "NAGEUR@"
BeautyName: ; 27f2c (9:7f2c)
	db "CANON@"
RockerName: ; 27f33 (9:7f33)
	db "ROCKER@"
JugglerName: ; 27f3a (9:7f3a)
	db "JONGLEUR@"
BlackbeltName: ; 27f42 (9:7f42)
	db "KARATEKA@"
ProfOakName: ; 27f4c (9:7f4c)
	db "PROF.CHEN@"
ChiefName: ; 27f55 (9:7f55)
	db "CHIEF@"
ScientistName: ; 27f5b (9:7f5b)
	db "SCIENTIFIQUE@"
RocketName: ; 27f65 (9:7f65)
	db "ROCKET@"
CooltrainerMName: ; 27f6c (9:7f6c)
	db "TOPDRESSEUR♂@"
CooltrainerFName: ; 27f79 (9:7f79)
	db "TOPDRESSEUR♀@"
