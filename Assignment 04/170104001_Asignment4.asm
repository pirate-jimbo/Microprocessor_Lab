DSEG    SEGMENT 'DATA' 
    
    ; R3-C1-C3

Dots DB	  00001000b,00001000b,00001000b,00001000b,00001000b ; R3-C1-C3
     DB   00000000b,01111111b,00000000b,00000000b,00000000b
     DB   00000000b,00000000b,00000000b,01111111b,00000000b 

	
	
	
DSEG    ENDS

SSEG    SEGMENT STACK   'STACK'
        DW      100h    DUP(?)
SSEG    ENDS

CSEG    SEGMENT 'CODE'

;*******************************************

START   PROC    FAR

; Store return address to OS:
    PUSH    DS
    MOV     AX, 0
    PUSH    AX

; set segment registers:
	    MOV     AX, DSEG
    	MOV     DS, AX
    	MOV     ES, AX


	MOV DX,2000h	; first DOT MATRIX digit
	MOV BX, 0

MAINLOOP:
	MOV SI, 0
	MOV CX, 5

NEXT:
	MOV AL,Dots[BX][SI]
	OUT DX,AL
	INC SI
	INC DX
	MOV CX,00AFH
	L0:LOOP L0
	

	CMP SI, 5
	LOOPNE NEXT

	ADD BX, 5
	CMP BX, 40
	JL MAINLOOP

; return to operating system:
    RET
START   ENDP

;*******************************************

CSEG    ENDS 

        END    START    ; set entry point.