ASSUME CS:CODE, DS:DATA
DATA SEGMENT
STR DB "WELCOME$"
MSG DB "LENGTH OF STRING IS $"
DATA ENDS


CODE SEGMENT
START:
MOV AX,DATA
MOV DS,AX
XOR AX,AX
LEA SI,STR
XOR CX,CX
LOOP1:
CMP STR[SI],'$'
JE OUTPUT
INC SI
INC CX
JMP LOOP1

OUTPUT:
LEA DX,MSG
MOV AH,09H
INT 21H
MOV DL,CL
ADD DL,30H
MOV AH,02H
INT 21H
MOV AH,4CH
INT 21H


HLT
CODE ENDS
END START
