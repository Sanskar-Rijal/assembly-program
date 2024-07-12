;transfer data from one block to another
LXI B,2000H ;src
LXI D,3000H ;dest
MVI L,0AH ;count

Back: LDAX B
MOV H,A
LDAX D
STAX B
MOV A,H
STAX D
INX B
INX D
DCR L
JNZ Back 
HLT