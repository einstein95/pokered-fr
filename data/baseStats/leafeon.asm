LeafeonBaseStats: ; 3926a (e:526a)
db DEX_LEAFEON ; pokedex id
db 130 ; base hp
db 65 ; base attack
db 60 ; base defense
db 65 ; base speed
db 110 ; base special
db GRASS ; species type 1
db GRASS ; species type 2
db 45 ; catch rate
db 196 ; base exp yield
INCBIN "pic/bmon/leafeon.pic",0,1 ; 77, sprite dimensions
dw LeafeonPicFront
dw LeafeonPicBack
; attacks known at lvl 0
db TACKLE
db SAND_ATTACK
db QUICK_ATTACK
db RAZOR_LEAF
db 0 ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10,15
	tmlearn 20,21,22
	tmlearn 31,32
	tmlearn 33,34
	tmlearn 44
	tmlearn 50,51
db 0 ; padding
