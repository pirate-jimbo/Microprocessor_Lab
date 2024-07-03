DSEG    SEGMENT 'DATA'

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
 	
;segment forcefully off:
 
        MOV DX, 2030h	; first Seven Segment Display
	     
        MOV AL,00111111b
	    OUT DX, AL 
         
    	
    	MOV DX, 2070h 
    		
    	MOV AL, 0010b ;Y(ON)  
    	OUT DX, AL   
    	 
    	 
    	MOV CX ,0FFH
 
    	L1:LOOP L1
    	     
    	
    	MOV DX, 2031h	
	     
        MOV AL,01110110b    ; second Seven Segment Display
	    OUT DX, AL 
        
        MOV DX, 2070h 
        
    	MOV AL, 0110b  ;Y(ON) & G(ON)
    	OUT DX, AL   
    	
    	
    	MOV CX , 0FFH 
    	
    	L2:LOOP L2
    	   
        MOV DX, 2032h	
	     
        MOV AL,00111111b     ; third Seven Segment Display
	    OUT DX, AL 
        
        MOV DX, 2070h 
           
        MOV AL, 0010b   ;G(OFF) & Y(ON)
	    OUT DX, AL    
	     
	     
	    MOV CX , 0FFH
	     
	    L3:LOOP L3   
	    
	    MOV DX, 2033h	
	     
        MOV AL,01110111b     ; fourth Seven Segment Display
	    OUT DX, AL 
        
        MOV DX, 2070h
        
    	MOV AL, 1011b  ;Y(ONN),R1+R2(ON)
	    OUT DX, AL     
	     
	    MOV CX , 0FFH
	     
	    L4:LOOP L4    
	    
        
	    MOV DX, 2034h	
	     
        MOV AL,00000110b    ; fifth Seven Segment Display
	    OUT DX, AL   
	     
	    MOV CX , 0FFH
	 
	    L5:LOOP L5   
	    
	    
	    
	
    	
 

; return to operating system:
	RET
START   ENDP

;*******************************************

CSEG    ENDS 

        END    START    ; set entry point.