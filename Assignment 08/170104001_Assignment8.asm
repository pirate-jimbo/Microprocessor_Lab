DSEG    SEGMENT 'DATA'                                                                                                                                                                                                                                                                                            
dot db  00111110b,01000001b,01000001b,01000001b,00111110b,     01111111b ,00001000b,00001000b,00001000b,01111111b,     00111110b,01000001b,01000001b,01000001b,00111110b,     01111111b ,00001001b,00001001b,00001001b,01111111b,    00000000b,01000010b, 01111111b, 01000000b ,00000000b      
          
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
    

   
   
; dot  
    MOV DX,2000h	
    MOV AL,00000010b
    OUT DX,AL
    MOV CX, 20H
    L0:LOOP L0    
       
	

; dot  
    MOV DX,2001h	
    MOV AL,00000001b
    OUT DX,AL
    MOV CX, 20H
    L1:LOOP L1 
    
     
; dot  
    MOV DX,2002h	
    MOV AL,00000001b
    OUT DX,AL
    MOV CX, 20H
    L2:LOOP L2              

; dot  
    MOV DX,2003h	
    MOV AL,00000001b
    OUT DX,AL
    MOV CX, 20H
    L3:LOOP L3  
    
    
; ssd   
    MOV DX, 2030h	
	MOV AL,00000001b  
	OUT DX,Al 
    MOV CX, 20H
    L4:LOOP L4 
    
        
; dot  
    MOV DX,2004h	
    MOV AL,00000010b
    OUT DX,AL
    MOV CX, 20H
    L5:LOOP L5    
    
    
; dot  
    MOV DX,2004h	
    MOV AL,00000110b
    OUT DX,AL
    MOV CX, 20H
    L6:LOOP L6
    
    
    
; dot  
    MOV DX,2004h	
    MOV AL,00001110b
    OUT DX,AL
    MOV CX, 20H
    L7:LOOP L7 
    
    

; ssd   
    MOV DX, 2030h	
	MOV AL,00000011b
	OUT DX,Al    
    MOV CX, 20H
    L8:LOOP L8 
               
    
    
    
    
; dot  
    MOV DX,2004h	
    MOV AL,00011110b
    OUT DX,AL
    MOV CX, 20H
    L9:LOOP L9    
    
    
    
    

    
    
; dot  
    MOV DX,2004h	
    MOV AL,00111110b
    OUT DX,AL
    MOV CX, 20H
    L10:LOOP L10  
    
    
; ssd   
    MOV DX, 2030h	
	MOV AL,00000111b
	OUT DX,Al    
    MOV CX, 20H
    L11:LOOP L11 
             
    
    
    
        
; dot  
    MOV DX,2003h	
    MOV AL,01000001b
    OUT DX,AL
    MOV CX, 20H
    L12:LOOP L12    

; dot  
    MOV DX,2002h	
    MOV AL,01000001b
    OUT DX,AL
    MOV CX, 20H
    L13:LOOP L13 


; dot  
    MOV DX,2001h	
    MOV AL,01000001b
    OUT DX,AL
    MOV CX, 20H
    L14:LOOP L14 
    
; dot  
    MOV DX,2000h	
    MOV AL,00100010b
    OUT DX,AL
    MOV CX, 20H
    L15:LOOP L15
    
; ssd   
    MOV DX, 2030h	
	MOV AL,00001111b
	OUT DX,Al    
    MOV CX, 20H
    L16:LOOP L16 
        

    
; dot  
    MOV DX,2000h	
    MOV AL,00110010b
    OUT DX,AL
    MOV CX, 20H
    L17:LOOP L17
 

; dot  
    MOV DX,2000h	
    MOV AL,00111010b
    OUT DX,AL
    MOV CX, 20H
    L18:LOOP L18 
    
; ssd   
    MOV DX, 2030h	
	MOV AL,00011111b
	OUT DX,Al    
    MOV CX, 20H
    L19:LOOP L19 
    

; dot  
    MOV DX,2000h	
    MOV AL,00111110b
    OUT DX,AL
    MOV CX, 20H
    L20:LOOP L20 
    

; ssd   
    MOV DX, 2030h	
	MOV AL,00111111b
	OUT DX,Al    
    MOV CX, 20H
    L21:LOOP L21
    
    

; led   
    MOV DX, 2070h	
	MOV AL, 1000b
	OUT DX,Al    
    MOV CX, 20H
    L22:LOOP L22     
    
    
;----------------------------



; dot  
    MOV DX,2005h	
    MOV AL,00000001b
    OUT DX,AL
    MOV CX, 20H
    L23:LOOP L23
  
  
  
  ; ssd  
    MOV DX,2031h	
    MOV AL,00100000b
    OUT DX,AL
    MOV CX, 20H
    L24:LOOP L24  
    
    ; dot  
    MOV DX,2005h	
    MOV AL,00000011b
    OUT DX,AL
    MOV CX, 20H
    L25:LOOP L25
    
   ; ssd  
    MOV DX,2031h	
    MOV AL,00110000b
    OUT DX,AL
    MOV CX, 20H
    L26:LOOP L26  
    
     
    ; dot  
    MOV DX,2005h	
    MOV AL,00000111b
    OUT DX,AL
    MOV CX, 20H
    L27:LOOP L27
    
    
       ; ssd  
    MOV DX,2031h	
    MOV AL,00110010b
    OUT DX,AL
    MOV CX, 20H
    L28:LOOP L28
    
    
    ; dot  
    MOV DX,2005h	
    MOV AL,00001111b
    OUT DX,AL
    MOV CX, 20H
    L29:LOOP L29 
    
           ; ssd  
    MOV DX,2031h	
    MOV AL,00110110b
    OUT DX,AL
    MOV CX, 20H
    L30:LOOP L30
    
        ; dot  
    MOV DX,2005h	
    MOV AL,00011111b
    OUT DX,AL
    MOV CX, 20H
    L31:LOOP L31
    
           ; ssd  
    MOV DX,2031h	
    MOV AL,01110110b
    OUT DX,AL
    MOV CX, 20H
    L32:LOOP L32
        
    
    
    ; dot  
    MOV DX,2005h	
    MOV AL,00111111b
    OUT DX,AL
    MOV CX, 20H
    L33:LOOP L33
    
    ; dot  
    MOV DX,2005h	
    MOV AL,01111111b
    OUT DX,AL
    MOV CX, 20H
    L34:LOOP L34 
    
    

 
; dot  
    MOV DX,2009h	
    MOV AL,00000001b
    OUT DX,AL
    MOV CX, 20H
    L35:LOOP L35
    
    
      ; dot  
    MOV DX,2009h	
    MOV AL,00000011b
    OUT DX,AL
    MOV CX, 20H
    L36:LOOP L36
    
; dot  
    MOV DX,2009h	
    MOV AL,00000111b
    OUT DX,AL
    MOV CX, 20H
    L37:LOOP L37
    
    
 ; dot  
    MOV DX,2009h	
    MOV AL,00001111b
    OUT DX,AL
    MOV CX, 20H
    L38:LOOP L38
    
    
    
; dot  
    MOV DX,2009h	
    MOV AL,00011111b
    OUT DX,AL
    MOV CX, 20H
    L39:LOOP L39
    
    
; led   
    MOV DX, 2070h	; first Seven Segment Display
	MOV AL, 1001b
	OUT DX,Al    
    MOV CX, 20H
    L40:LOOP L40  
    
    
; dot  
    MOV DX,2009h	
    MOV AL,01111111b
    OUT DX,AL
    MOV CX, 20H
    L41:LOOP L41
    
    
 ; dot  
    MOV DX,2006h	
    MOV AL,00001000b
    OUT DX,AL
    MOV CX, 20H
    L71:LOOP L71
    
    
    
      ; dot  
    MOV DX,2007h	
    MOV AL,00001000b
    OUT DX,AL
    MOV CX, 20H
    L44:LOOP L44
    
    
    
      ; dot  
    MOV DX,2008h	
    MOV AL,00001000b
    OUT DX,AL
    MOV CX, 20H
    L45:LOOP L45
     
    
    
    
  
    
    
    
;-----------------------------------------------------------------



; dot  
    MOV DX,200Ah	
    MOV AL,00000010b
    OUT DX,AL
    MOV CX, 20H
    L46:LOOP L46    
       
	

; dot  
    MOV DX,200Bh	
    MOV AL,00000001b
    OUT DX,AL
    MOV CX, 20H
    L47:LOOP 47 
    
     
; dot  
    MOV DX,200Ch	
    MOV AL,00000001b
    OUT DX,AL
    MOV CX, 20H
    L48:LOOP L48              

; dot  
    MOV DX,200Dh	
    MOV AL,00000001b
    OUT DX,AL
    MOV CX, 20H
    L49:LOOP L49 
    
    
; ssd   
    MOV DX, 2032h	; first Seven Segment Display
	MOV AL,00000001b  
	OUT DX,Al 
    MOV CX, 20H
    L50:LOOP L50 
    
        
; dot  
    MOV DX,200Eh	
    MOV AL,00000010b
    OUT DX,AL
    MOV CX, 20H
    L51:LOOP L51    
    
    
; dot  
    MOV DX,200Eh	
    MOV AL,00000110b
    OUT DX,AL
    MOV CX, 20H
    L52:LOOP L52
    
    
    
; dot  
    MOV DX,200Eh	
    MOV AL,00001110b
    OUT DX,AL
    MOV CX, 20H
    L53:LOOP L53 
    
    

; ssd   
    MOV DX, 2032h	; first Seven Segment Display
	MOV AL,00000011b
	OUT DX,Al    
    MOV CX, 20H
    L54:LOOP L54 
               
    
    
    
    
; dot  
    MOV DX,200Eh	
    MOV AL,00011110b
    OUT DX,AL
    MOV CX, 20H
    L55:LOOP L55    
    
    
    
    

    
    
; dot  
    MOV DX,200Eh	
    MOV AL,00111110b
    OUT DX,AL
    MOV CX, 20H
    L56:LOOP L56  
    
    
; ssd   
    MOV DX, 2032h	; first Seven Segment Display
	MOV AL,00000111b
	OUT DX,Al    
    MOV CX, 20H
    L57:LOOP L57 
             
    
    
    
        
; dot  
    MOV DX,200Dh	
    MOV AL,01000001b
    OUT DX,AL
    MOV CX, 20H
    L58:LOOP L58    

; dot  
    MOV DX,200Ch	
    MOV AL,01000001b
    OUT DX,AL
    MOV CX, 20H
    L59:LOOP L59 


; dot  
    MOV DX,200Bh	
    MOV AL,01000001b
    OUT DX,AL
    MOV CX, 20H
    L60:LOOP L60 
    
; dot  
    MOV DX,200Ah	
    MOV AL,00100010b
    OUT DX,AL
    MOV CX, 20H
    L61:LOOP L61
    
; ssd   
    MOV DX, 2032h	; first Seven Segment Display
	MOV AL,00001111b
	OUT DX,Al    
    MOV CX, 20H
    L62:LOOP L62 
        

    
; dot  
    MOV DX,200Ah	
    MOV AL,00110010b
    OUT DX,AL
    MOV CX, 20H
    L63:LOOP L63
 

; dot  
    MOV DX,200Ah	
    MOV AL,00111010b
    OUT DX,AL
    MOV CX, 20H
    L64:LOOP L64 
    
; ssd   
    MOV DX, 2032h	; first Seven Segment Display
	MOV AL,00011111b
	OUT DX,Al    
    MOV CX, 20H
    L65:LOOP L65 
    

; dot  
    MOV DX,200Ah	
    MOV AL,00111110b
    OUT DX,AL
    MOV CX, 20H
    L66:LOOP L66 
    

; ssd   
    MOV DX, 2032h	; first Seven Segment Display
	MOV AL,00111111b
	OUT DX,Al    
    MOV CX, 20H
    L67:LOOP L67
    
    

; led   
    MOV DX, 2070h	; first Seven Segment Display
	MOV AL, 1001b
	OUT DX,Al    
    MOV CX, 20H
    L68:LOOP L68     
    
    
;---------------------------------------------------


; dot  
    MOV DX,200Fh	
    MOV AL,01000000b
    OUT DX,AL
    MOV CX, 20H
    L69:LOOP L69
    


; ssd   
    MOV DX, 2033h	; first Seven Segment Display
	MOV AL,00010000b
	OUT DX,Al    
    MOV CX, 20H
    L74:LOOP L74
    
            
; dot  
    MOV DX,200Fh	
    MOV AL,01100000b
    OUT DX,AL
    MOV CX, 20H
    L75:LOOP L75
    
    
; ssd   
    MOV DX, 2033h	; first Seven Segment Display
	MOV AL,00110000b
	OUT DX,Al    
    MOV CX, 20H
    L76:LOOP L76 
    
    
; dot  
    MOV DX,200Fh	
    MOV AL,01110000b
    OUT DX,AL
    MOV CX, 20H
    L77:LOOP L77 
    
       
    ; ssd   
    MOV DX, 2033h	; first Seven Segment Display
	MOV AL,00110001b
	OUT DX,Al    
    MOV CX, 20H
    L78:LOOP L78 
    
    ; dot  
    MOV DX,200Fh	
    MOV AL,01111000b
    OUT DX,AL
    MOV CX, 20H
    L79:LOOP L79
    
    ; ssd   
    MOV DX, 2033h	; first Seven Segment Display
	MOV AL,00110011b
	OUT DX,Al    
    MOV CX, 20H
    L80:LOOP L80   
        
    ; led   
    MOV DX, 2070h	; first Seven Segment Display
	MOV AL,00001001b
	OUT DX,Al    
    MOV CX, 20H
    L3688:LOOP L3688     
    
     
    
    ; dot  
    MOV DX,200Fh	
    MOV AL,01111100b
    OUT DX,AL
    MOV CX, 20H
    L81:LOOP L81
    
    ; ssd   
    MOV DX, 2033h	; first Seven Segment Display
	MOV AL,00110111b
	OUT DX,Al    
    MOV CX, 20H
    L82:LOOP L82 
    
    
    ; dot  
    MOV DX,200Fh	
    MOV AL,01111110b
    OUT DX,AL    
    MOV CX, 20H
    L83:LOOP L83
    
     ; dot  
    MOV DX,200Fh	
    MOV AL,01111111b
    OUT DX,AL  
    MOV CX, 20H
    L84:LOOP L84    
        
 
    ; dot  
    MOV DX,2010h	
    MOV AL,00000001b
    OUT DX,AL  
    MOV CX, 20H
    L85:LOOP L85   
        
    ; ssd   
    MOV DX, 2033h	; first Seven Segment Display
	MOV AL,01110111b
	OUT DX,Al    
    MOV CX, 20H
    L86:LOOP L86 
    
        
   ; dot  
    MOV DX,2011h	
    MOV AL,00000001b
    OUT DX,AL  
    MOV CX, 20H
    L87:LOOP L87    
    
   
    
   ; dot  
    MOV DX,2012h	
    MOV AL,00000001b
    OUT DX,AL  
    MOV CX, 20H
    L88:LOOP L88
    
     ; dot  
    MOV DX,2013h	
    MOV AL,00000001b
    OUT DX,AL  
    MOV CX, 20H
    L89:LOOP L89  
    
    

        
     ; dot  
    MOV DX,2013h	
    MOV AL,00000011b
    OUT DX,AL  
    MOV CX, 20H
    L290:LOOP L290    
            
     ; dot  
    MOV DX,2013h	
    MOV AL,00000111b
    OUT DX,AL  
    MOV CX, 20H
    L291:LOOP L291
      
            
     ; dot  
    MOV DX,2013h	
    MOV AL,00001111b
    OUT DX,AL  
    MOV CX, 20H
    L292:LOOP L292
      
            
     ; dot  
    MOV DX,2013h	
    MOV AL,00011111b
    OUT DX,AL  
    MOV CX, 20H
    L293:LOOP L293
      
            
     ; dot  
    MOV DX,2013h	
    MOV AL,00111111b
    OUT DX,AL  
    MOV CX, 20H
    L294:LOOP L294
      
            
     ; dot  
    MOV DX,2013h	
    MOV AL,01111111b
    OUT DX,AL  
    MOV CX, 20H
    L295:LOOP L295
      
    
                
     ; dot  
    MOV DX,2010h	
    MOV AL,00001001b
    OUT DX,AL  
    MOV CX, 20H
    L2951:LOOP L2951
      
                
     ; dot  
    MOV DX,2011h	
    MOV AL,00001001b
    OUT DX,AL  
    MOV CX, 20H
    L2952:LOOP L2952
      
                
     ; dot  
    MOV DX,2012h	
    MOV AL,00001001b
    OUT DX,AL  
    MOV CX, 20H
    L2953:LOOP L2953 
    
    
    
    
;-------------------------------------------------------------------------------------       



  ; dot  
    MOV DX,2015h	
    MOV AL,00000010b
    OUT DX,AL
    MOV CX, 20H
    L5034:LOOP L5034    
      
; ssd   
    MOV DX, 2034h	; first Seven Segment Display
	MOV AL,00000010b  
	OUT DX,Al 
    MOV CX, 20H
    L5035:LOOP L5035  
	

; dot  
    MOV DX,2016h	
    MOV AL,00000001b
    OUT DX,AL
    MOV CX, 20H
    L5036:LOOP L5036 
    
; ssd   
    MOV DX, 2034h	; first Seven Segment Display
	MOV AL,00000110b
	OUT DX,Al    
    MOV CX, 20H
    L5037:LOOP L5037 
    
    
; dot  
    MOV DX,2016h	
    MOV AL,00000011b
    OUT DX,AL
    MOV CX, 20H
    L5039:LOOP L5039

; dot  
    MOV DX,2016h	
    MOV AL,00000111b
    OUT DX,AL
    MOV CX, 20H
    L5040:LOOP L5040
  
; dot  
    MOV DX,2016h	
    MOV AL,00001111b
    OUT DX,AL
    MOV CX, 20H
    L5041:LOOP L5041   

    
; dot  
    MOV DX,2016h	
    MOV AL,00011111b
    OUT DX,AL
    MOV CX, 20H
    L5042:LOOP L5042
    
    
    
; dot  
    MOV DX,2016h	
    MOV AL,00111111b
    OUT DX,AL
    MOV CX, 20H
    L5043:LOOP L5043    
    
    
    
    
; dot  
    MOV DX,2016h	
    MOV AL,01111111b
    OUT DX,AL
    MOV CX, 20H
    L5044:LOOP L5044   
    
    
    
    
    
; dot  
    MOV DX,2015h	
    MOV AL,01000010b
    OUT DX,AL
    MOV CX, 20H
    L5045:LOOP L5045 
    
    ; dot  
    MOV DX,2017h	
    MOV AL,01000000b
    OUT DX,AL
    MOV CX, 20H
    L6045:LOOP L6045
    
    
    
    
    
 ; led   
    MOV DX, 2070h	; first Seven Segment Display
	MOV AL,00001011b
	OUT DX,Al    
    MOV CX, 20H
    L6046:LOOP L6046  
    
    
;-----------------------------------   
                     

   
  REPAT: 
   

  ;  MOV DX, 2000h	; first Seven Segment Display
	;MOV SI, 0 
;	MOV CX, 25

;NEXT0:
;	MOV AL,Dot[SI]
	;out dx,al
	;;inc SI
	;inc DX
    
	;LOOP NEXT0
	
	   
    MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 23 
	MOV CX, 25  
	
NEXT:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT  
	

    MOV DX, 2000h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 1

NEXT91:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	inc DX
    
	LOOP NEXT91  

	
  MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 22
	MOV CX, 24

NEXT1:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX 
	LOOP NEXT1 	
	

   MOV DX, 2001h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 2

NEXT92:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT92  



	
  MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 21
	MOV CX, 23

NEXT2:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT2 	
	

   MOV DX, 2002h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 3

NEXT93:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT93





   MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 20
	MOV CX, 22

NEXT3:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT3 	
	

   MOV DX, 2003h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 4

NEXT94:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT94



   MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 19
	MOV CX, 21

NEXT4:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT4 	
	

   MOV DX, 2004h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 5

NEXT95:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT95





   MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 18
	MOV CX, 20

NEXT5:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT5 	
	

   MOV DX, 2005h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 6

NEXT96:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT96	
    
 
 
 
 
  MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 17
	MOV CX, 19

NEXT6:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT6 	
	

   MOV DX, 2006h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 7

NEXT97:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT97 
 
 
 
  
  MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 16
	MOV CX, 18

NEXT7:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT7 	
	

   MOV DX, 2007h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 8

NEXT98:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT98 
 
 
 
 
 
 
 
 
   
  MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 15
	MOV CX, 17

NEXT8:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT8 	
	

   MOV DX, 2008h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 9

NEXT99:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT99 
 
 
 
 
 
  MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 14
	MOV CX, 16

NEXT9:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT9 	
	

   MOV DX, 2009h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 10

NEXT100:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT100  
    
 
 
 
 
 
 
 
 
  MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 13
	MOV CX, 15

NEXT10:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT10 	
	

   MOV DX, 200Ah	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 11

NEXT101:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT101   
 
 
  
  MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 12
	MOV CX, 14

NEXT11:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT11 	
	

   MOV DX, 200Bh	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 12

NEXT102:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT102   
 
 
 
 
 
  
  MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 11
	MOV CX, 13

NEXT12:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT12 	
	

   MOV DX, 200Ch	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 13

NEXT103:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT103   
 
 
 
 
 
 
   
  MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 10
	MOV CX, 12

NEXT13:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT13 	
	

   MOV DX, 200Dh	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 14

NEXT104:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT104  
 
 
 
 
   
  MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 9
	MOV CX, 11

NEXT14:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT14 	
	

   MOV DX, 200Eh	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 15

NEXT105:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT105  
  
 
 
 
  MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 8
	MOV CX, 10

NEXT15:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT15 	
	

   MOV DX, 200Fh	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 16

NEXT106:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT106 
  






  
  MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 7
	MOV CX, 9

NEXT16:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT16 	
	

   MOV DX, 2010h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 17

NEXT107:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT107 
  





    MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 6
	MOV CX, 8

NEXT17:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT17 	
	

   MOV DX, 2011h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 18

NEXT108:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT108 
  


       MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 5
	MOV CX, 7

NEXT18:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT18 	
	

   MOV DX, 2012h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 19

NEXT109:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT109 
  




       MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 4
	MOV CX, 6

NEXT19:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT19 	
	

   MOV DX, 2013h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 20

NEXT110:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT110 
 
 
 
 
 
        MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 3
	MOV CX, 5

NEXT20:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT20	
	

   MOV DX, 2014h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 21

NEXT111:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT111 
  
  
  
  
        MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 2
	MOV CX, 4

NEXT21:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT21	
	

   MOV DX, 2015h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 22

NEXT112:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT112   
  
  
  
  
  
         MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 1
	MOV CX, 3

NEXT22:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT22	
	

   MOV DX, 2016h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 23

NEXT113:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT113   
  
   
  
  
   MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 0
	MOV CX, 2

NEXT23:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT23	
	

   MOV DX, 2017h	; first Seven Segment Display
	MOV SI, 24 
	MOV CX, 24

NEXT114:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT114   
  
  
  
  
  
  
  
    MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 24
	MOV CX, 1

NEXT24:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
	LOOP NEXT24	
	

   MOV DX, 2018h	; first Seven Segment Display
	MOV SI, 24
	MOV CX, 25

NEXT115:
	MOV AL,Dot[SI]
	out dx,al
	dec SI
	dec DX
    
	LOOP NEXT115   
   
  
  ;     CLEAR SSD & LED
  
  
         MOV DX, 2030H
         MOV AL,00H
         out dx,al
        
         MOV CX, 16H
         L199: LOOP L199
  
         MOV DX, 2031H
         MOV AL,00H
         out dx,al
         
         MOV CX, 16H
         L201: LOOP L201 

  
         MOV DX, 2032H
         MOV AL,00H
         out dx,al
        
         MOV CX, 16H
         L198: LOOP L198
  
         MOV DX, 2033H
         MOV AL,00H
         out dx,al
           MOV CX, 16H
         L202: LOOP L202 

  
         MOV DX, 2034H
         MOV AL,00H
         out dx,al 
         MOV CX, 16H
         L203: LOOP L203 
         
         
         
         MOV DX, 2070H
         MOV AL,00H
         out dx,al
         MOV CX, 25H
         L204: LOOP L204 
         
         
         
          CMP DI , 05H
          JE EXIT
         
         
   
         MOV DX, 2030H
         MOV AL,00111111b
         out dx,al
       
  
         
         
         
         MOV DX, 2031H
         MOV AL,01110110b
         out dx,al
       
         
         
         
         MOV DX, 2032H
         MOV AL,00111111b
         out dx,al
      
  
         
         MOV DX, 2033H
         MOV AL,01110111b
         out dx,al
     
         
         
         MOV DX, 2034H
         MOV AL,00000110b
         out dx,al
      
  
         
         MOV DX, 2070H
         MOV AL,00001011B
         out dx,al      
         
         INC DI
         JMP REPAT
         
          
  EXIT:  
  
  
  
  MOV DX,2000H
  
  ALL:
        MOV AL,00H
        OUT DX,AL
        INC DX
        CMP DX ,2019H
        JE EX
    LOOP ALL
        
  
 EX: 
; return to operating system:
    RET
START   ENDP

;*******************************************

CSEG    ENDS 

        END    START    ; set entry point.
    

    
          
          
   
                       