.ORIG	x3000
ST R0,A
ST R1,B
ADD R2,R0,#0
ADD R4,R1,#0
NOT R2,R2 ;Ston R2 to NOT R0
NOT R4,R4 ;Ston R4 to NOT R1
AND R0,R0,R4; R0 AND (NOT R1)
AND R1,R1,R2; R1 AND (NOT R0)
NOT R0,R0 ; NOT(R0 AND (NOT R1))
NOT R1,R1 ; NOT(R1 AND (NOT R0))
AND R3,R0,R1 ; {NOT(R0 AND (NOT R1))}AND{NOT(R1 AND (NOT R0))}
NOT R3,R3 ; NOT{NOT(R0 AND (NOT R1))}AND{NOT(R1 AND (NOT R0))}=R0 XOR R1
ST R3,XOR
HALT
A .BLKW #1
B .BLKW #1
XOR .BLKW #1
.END