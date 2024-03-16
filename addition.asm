DATA SEGMENT
    NUMB DB 0 ; Define a byte variable NUMB initialized to 0
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

    MOV   AX, DATA  ; Load the data segment address into AX
    MOV   DS, AX    ; Set DS to point to the data segment

    MOV   DI, OFFSET NUMB ; Load the offset address of NUMB into DI
    MOV   AL, 0

    MOV   AL, [DI]       ; Load the byte at the memory address pointed to by NUMB into AL
    ADD   AL, [DI+1]     ; Add the byte at the next memory address to AL

CODE ENDS
