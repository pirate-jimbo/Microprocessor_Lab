DSEG    SEGMENT 'DATA'

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


	MOV DX, 2070h
	

MAINLOOP:

		 
	STEP_1:             ;Y ON
    	MOV AL, 0010b
    	OUT DX, AL 
    	
    
    MOV CX,0200H   ;edit delay
    L0:LOOP L0  
    
      
    STEP_2:                 ;G ON
    	MOV AL, 0110b         
    	OUT DX, AL 
    	
    MOV CX,0200H   ;edit delay
    L1:LOOP L1      	       
    	       
    	       
    STEP_3:               ;G OFF
        MOV AL, 0010b       
    	OUT DX, AL
    	
    	MOV CX,0200H   ;edit delay
        L2:LOOP L2   
	 
    
    STEP_4:          		;R1+R2 ON
    	MOV AL, 1011b        	
    	OUT DX, AL 
 
     MOV CX,0200H   ;edit delay
    L3:LOOP L3 
    
; return to operating system:
	RET
START   ENDP



CSEG    ENDS 

        END    START    
