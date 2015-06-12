.ORIG	x3000
TRAP x23 ; Read dieretaios
ADD R2,R0,#0 ; R2 is used as temp for swap and to get non zero value(dieretaios)
TRAP x23 ; Read dieretis
ADD R1,R0,#0 
BRz	FINISH ; An o dieretis einai 0 pigenai sto finish kai vale ston R2 ti timi miden
ADD R0,R2,#0 ; O R0 pairnei ti timi tou dieretaiou
ADD R3,R1,#0 ; O R3 pairnei ti timi tou diereti
NOT R1,R1 ; Proetoimasia afairesis
ADD R1,R1,#1
ADD R0,R0,R1
LOOP	BRn EXIT
ADD R0,R0,R1
BR LOOP
FINISH	AND R2,R2,#0
EXIT 	ADD R0,R0,R3
HALT
.END
	