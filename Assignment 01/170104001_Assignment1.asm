DSEG    SEGMENT 'DATA'

NUMBERS	DB 00111111b, 01110110b, 00111111b,  01110111b, 00000110b,00000000b,00000000b,00000000b

DSEG    ENDS

SSEG    SEGMENT STACK   'STACK'
        DW      100h    DUP(?)
SSEG    ENDS

CSEG    SEGMENT 'CODE'


START   PROC    FAR

; Store return address to OS:
    PUSH    DS
    MOV     AX, 0
    PUSH    AX

; set segment registers:
    MOV     AX, DSEG
    MOV     DS, AX
    MOV     ES, AX

	MOV DX, 2030h	; first Seven Segment Display
	MOV SI, 0
	MOV CX, 8

NEXT:
	MOV AL,NUMBERS[SI]
	OUT DX,AL
	INC SI
	INC DX

	LOOP NEXT

; return to operating system:
    RET
START   ENDP


CSEG    ENDS 

        END    START    ; set entry point.
