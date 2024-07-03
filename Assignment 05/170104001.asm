DSEG    SEGMENT 'DATA'

; TODO: add your data here!!!!

Dots DB	  00001000b,00000100b,00000010b,00000001b,00000001b,00000001b,00000001b,00000010b,00000100b,00001000b,00010100b,00100010b,01000001b,01000001b,01000001b,01000001b,00100010b,00010100b,00001000b
NUMBERS DB 01110110b
 


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
	MOV SI, 0

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	
	
	MOV DX,2001h	; 2nd DOT MATRIX digit
	MOV BX, 0
	MOV SI, 1

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	
	MOV DX,2002h	; 3rd DOT MATRIX digit
	MOV BX, 0
	MOV SI, 2

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	
	MOV DX,2003h	; 4th DOT MATRIX digit
	MOV BX, 0
	MOV SI, 3

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	
	MOV DX,2004h    ; 5th DOT MATRIX digit
	MOV BX, 0
	MOV SI, 4	

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	
	MOV DX,2005h    ; 6th DOT MATRIX digit
	MOV BX, 0
	MOV SI, 5	

	MOV AL,Dots[BX][SI]
	OUT DX,AL 
	
	
	MOV DX,2006h    ; 7th DOT MATRIX digit
	MOV BX, 0
	MOV SI, 6	

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	
	MOV DX,2007h    ; 8th DOT MATRIX digit
	MOV BX, 0
	MOV SI, 7	

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	                
	MOV DX,2008h    ; 9th DOT MATRIX digit
	MOV BX, 0
	MOV SI, 8	

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	
	MOV DX,2009h    ; 10th DOT MATRIX digit
	MOV BX, 0
	MOV SI, 9	

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	
	MOV DX,2008h    ; 9th DOT MATRIX digit
	MOV BX, 0
	MOV SI, 10	

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	
	MOV DX,2007h    ; 8th DOT MATRIX digit
	MOV BX, 0
	MOV SI, 11	

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	
	MOV DX,2006h   ; 7th DOT MATRIX digit
	MOV BX, 0
	MOV SI, 12	

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	
	MOV DX,2005h   ; 6th DOT MATRIX digit
	MOV BX, 0
	MOV SI, 13	

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	
	MOV DX,2004h   ; 5th DOT MATRIX digit
	MOV BX, 0
	MOV SI, 14	

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	
	MOV DX,2003h   ; 4th DOT MATRIX digit
	MOV BX, 0
	MOV SI, 15	

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	
	MOV DX,2002h    ; 3rd DOT MATRIX digit
	MOV BX, 0
	MOV SI, 16	

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	
	MOV DX,2001h    ; 2nd DOT MATRIX digit
	MOV BX, 0
	MOV SI, 17	

	MOV AL,Dots[BX][SI]
	OUT DX,AL
	 

	MOV DX, 2030h	; first Seven Segment Display
	MOV SI, 0

	MOV AL,NUMBERS[SI]
	OUT DX,AL
		

; return to operating system:
    RET
START   ENDP

;*******************************************

CSEG    ENDS 

        END    START    ; set entry point.
