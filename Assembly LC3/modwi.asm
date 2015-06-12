.ORIG	x3000
ADD R2,R0,#0 ;Vale ston R2 mia timi oste se periptosi pou kati den paei kala na ehei non zero value
ADD R1,R1,#0 
BRz	FINISH ; An o dieretis einai 0 pigenai sto finish kai vale ston R2 ti timi miden
ADD R3,R1,#0 ; O R3 pairnei ti timi tou diereti
NOT R1,R1 ; Proetoimasia afairesis
ADD R1,R1,#1
ADD R0,R0,R1
LOOP	BRn EXIT ;An paro pote R0-R1<0 simainei oti R0=R1 mod arhiko R0
ADD R0,R0,R1
BR LOOP
FINISH	AND R2,R2,#0 ;Vazo sto R2 ti timi 0 afou de ginetai i diaresi
EXIT 	ADD R0,R0,R3 ;Epeidi eho kanei tin afairesi prostheto to R3 gia na paro to ipoloipo
HALT
.END