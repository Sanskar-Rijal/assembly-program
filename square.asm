;square of ten 8-bit numbers which are <= 0FH stored from memory location C090H
LXI H,C090H ;Source
LXI D,C09AH ;Destination
MVI C,0A ;count
NEXT: MOV B,M
MVI A,00H
SQUARE : ADD M
DCR B
JNZ SQUARE
STAX D
INX H
INX D 
DCR C 
JNZ NEXT
HLT 