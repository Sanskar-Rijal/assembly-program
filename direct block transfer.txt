;direct block transfer
;transfer data from 10 locations
LXI B,2000H ;src
LXI D,3000H ;dest
MVI L,0AH ;count

Back: LDAX B
STAX D
INX B
INX D
DCR L
JNZ Back 
HLT