;to find highest number 
LXI H,2000H
MVI C,0A H
MVI A,00H
back:CMP M ;A-M
JNC skip
MOV A,M
skip:INX H
DCR C 
JNZ back 
MOV M,A
HLT