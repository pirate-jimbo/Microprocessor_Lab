TITLE   8086 Code Template (for EXE file)

;       AUTHOR          emu8086
;       DATE            ?
;       VERSION         1.00
;       FILE            ?.ASM

; 8086 Code Template

; Directive to make EXE output:
       #MAKE_EXE#

DSEG    SEGMENT 'DATA'

DM	DB	00001000b,00000100b,00000100b,00000100b,00001000b,00010100b,00010100b,00010100b  

SSD DB 00100000b,00110000b,00110010b,00110110b,01110110b

Clear_DM DB 00000000b,00010000b,00010000b,00010000b,00000000b,00000000b,00000000b,00000000b  

Clear_SSD DB 00110110b,00110010b,00110000b,00100000b,00000000b

LED DB 0001b



	      

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
	MOV AX, DSEG
    MOV DS, AX
    MOV ES, AX 
    


	MOV BX, 0
	


LOOP_1:
    MOV DX,2000h          
    ADD DX, SI
	MOV AL,DM[SI]
	OUT DX,AL   
	
	;LED                          
    MOV DX, 2070h
    ADD DX,SI 
    MOV AL,LED[SI]
    OUT DX,AL
	
	
    ;SSD                           
    MOV DX, 2030h 
    MOV AL,SSD[SI]
    OUT DX,AL
             
    INC SI
   
    
	CMP SI, 5
	
	LOOPNE LOOP_1   
	
	
	MOV DX,2004h
	
	

		          
LOOP_2:
    MOV AL,DM[SI]   
    DEC DX
	OUT DX,AL
	INC SI
	

	CMP SI, 8
		          
	LOOPNE LOOP_2 
	
	
	MOV SI,0 


LOOP_3:
     MOV DX,2000h
     ADD DX, SI
     MOV AL, Clear_DM[SI]
     OUT DX,AL 
     
     
     MOV DX, 2030h 
     MOV AL, Clear_SSD[SI]
     OUT DX,AL   
     
     MOV DX, 2070h 
     MOV AL,00h
     OUT DX,AL     
     
     INC SI
    

	 CMP SI, 5
	 	          
	 LOOPNE LOOP_3
	  
	 
	 MOV DX,2004h
	 
	 
	 
Loop_4:
    MOV AL,Clear_DM[SI]   
    DEC DX
	OUT DX,AL
	INC SI

	CMP SI, 8
		          
	LOOPNE LOOP_4 
	
	MOV SI,0
	
	
	INC BX
	CMP BX, 5
	
	LOOPNE LOOP_1
     
     
    

	
; return to operating system:
    RET
START   ENDP

;*******************************************

CSEG    ENDS 

        END    START    ; set entry point.