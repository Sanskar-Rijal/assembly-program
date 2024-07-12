;indirect block transfer
;transfer data from 10 locations
LXI B,2000H ;src
LXI D,3009H ;dest
MVI L,0AH ;count

Back: LDAX B
STAX D
INX B
DCX D
DCR L
JNZ Back 
HLT