MOV AH,00H
MOV AL,03H
INT 10H

MOV AH,02H
MOV DH,00H
MOV DL,00H
MOV BH,00H
INT 10H

CALL MENU
S2:CALL TECLADO
CMP AL,31H
JZ S2
CALL LIMPIAR
CALL BISECCION
INT 21H


BISECCION:
    MOV AH,00H
    MOV AL,12H
    INT 10H
    CALL RECUADRO
    RET

RECUADRO:
    MOV CX,00D
    MOV DX,00D
    S1:MOV AH,0CH
    MOV AL,04H
    MOV BH,00H
    INT 10H
    INC CX
    CMP CX,720D
    JLE S1
    INC DX
    MOV CX,00D
    CMP DX,400D
    JLE S1
    S3:MOV AH,00H
    INT 16H
    CMP AL,53H
    JNZ S3
    CALL TITULO
    CALL CAJA
    CALL CAJA2
    CALL CAJA3
    CALL CAJA4
    CALL PLANO
    CALL BOTONSALIR
    CALL BOTONSIG
    CALL TIFX
    RET

CAJA:
    MOV CX,100D
    MOV DX,70D
    C1:MOV AH,0CH
    MOV AL,07H
    MOV BH,00H
    INT 10H
    INC CX
    CMP CX,300D
    JLE C1
    INC DX
    MOV CX,100D
    CMP DX,100D
    JLE C1
    RET
    
CAJA2:
    MOV CX,100D
    MOV DX,130D
    C2:MOV AH,0CH
    MOV AL,07H
    MOV BH,00H
    INT 10H
    INC CX
    CMP CX,300D
    JLE C2
    INC DX
    MOV CX,100D
    CMP DX,160D
    JLE C2
    RET

CAJA3:
    MOV CX,100D
    MOV DX,190D
    C3:MOV AH,0CH
    MOV AL,07H
    MOV BH,00H
    INT 10H
    INC CX
    CMP CX,300D
    JLE C3
    INC DX
    MOV CX,100D
    CMP DX,220D
    JLE C3
    RET 
    
CAJA4:
    MOV CX,100D
    MOV DX,250D
    C4:MOV AH,0CH
    MOV AL,07H
    MOV BH,00H
    INT 10H
    INC CX
    CMP CX,300D
    JLE C4
    INC DX
    MOV CX,100D
    CMP DX,280D
    JLE C4
    RET
    
PLANO:
    MOV CX,350D
    MOV DX,50D
    P4:MOV AH,0CH
    MOV AL,07H
    MOV BH,00H
    INT 10H
    INC CX
    CMP CX,600D
    JLE P4
    INC DX
    MOV CX,350D
    CMP DX,300D
    JLE P4
    RET

BOTONSALIR:
    MOV CX,500D
    MOV DX,325D
    BS:MOV AH,0CH
    MOV AL,07H
    MOV BH,00H
    INT 10H
    INC CX
    CMP CX,600D
    JLE BS
    INC DX
    MOV CX,500D
    CMP DX,370D
    JLE BS
    RET
    
BOTONSIG:
    MOV CX,350D
    MOV DX,325D
    BS1:MOV AH,0CH
    MOV AL,07H
    MOV BH,00H
    INT 10H
    INC CX
    CMP CX,450D
    JLE BS1
    INC DX
    MOV CX,350D
    CMP DX,370D
    JLE BS1
    RET
    
TITULO:
    MOV AH,01H
    MOV CH,16H
    MOV CL,0EH
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,0D
    MOV DL,0D
    INT 10H
    MOV AL,'M'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,00D
    MOV DL,01D
    INT 10H
    MOV AL,'E'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,00D
    MOV DL,02D
    INT 10H
    MOV AL,'T'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,00D
    MOV DL,03D
    INT 10H
    MOV AL,'O'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,00D
    MOV DL,04D
    INT 10H
    MOV AL,'D'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,00D
    MOV DL,05D
    INT 10H
    MOV AL,'0'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,00D
    MOV DL,07D
    INT 10H
    MOV AL,'D'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,00D
    MOV DL,08D
    INT 10H
    MOV AL,'E'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,00D
    MOV DL,10D
    INT 10H
    MOV AL,'B'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,00D
    MOV DL,11D
    INT 10H
    MOV AL,'I'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,00D
    MOV DL,12D
    INT 10H
    MOV AL,'S'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,00D
    MOV DL,13D
    INT 10H
    MOV AL,'E'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,00D
    MOV DL,14D
    INT 10H
    MOV AL,'C'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,2D
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,00D
    MOV DL,16D
    INT 10H
    MOV AL,'I'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,00D
    MOV DL,17D
    INT 10H
    MOV AL,'O'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,00D
    MOV DL,18D
    INT 10H
    MOV AL,'N'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    RET
    
TIFX:
    MOV AH,01H
    MOV CH,00H
    MOV CL,0EH
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,5D
    MOV DL,8D
    INT 10H
    MOV AL,'F'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    MOV AH,02H
    MOV BH,00H
    MOV DH,5D
    MOV DL,9D
    INT 10H
    MOV AL,'x'
    MOV AH,0AH
    MOV BL,10001111B
    MOV CX,1D
    INT 10H
    RET
    

AVANZAR:
    MOV AH,03H
    MOV BH,00H
    INT 10H
    MOV AH,02H
    INC DL
    INT 10H
    RET  

SIGLINEA:
    MOV AH,02H
    INC DH
    MOV DL,00H
    MOV BH,00H
    INT 10H
    RET

TECLADO:
    MOV AH,00H
    INT 16H

LIMPIAR:
    MOV AH,02H
    MOV DX,0000H
    INT 10H
    MOV AX,0600H
    MOV BH,07H
    MOV CX,0000H
    MOV DX,164FH
    INT 10H
    RET

LETRA:
    MOV AH,09H
    MOV BL,00001111B
    MOV CX,01
    INT 10H
    CALL AVANZAR
    RET

MENU:
    MOV AL,"B"
    CALL LETRA
    MOV AL,"i"
    CALL LETRA
    MOV AL,"e"
    CALL LETRA
    MOV AL,"n"
    CALL LETRA
    MOV AL,"v"
    CALL LETRA
    MOV AL,"e"
    CALL LETRA
    MOV AL,"n"
    CALL LETRA
    MOV AL,"i"
    CALL LETRA
    MOV AL,"d"
    CALL LETRA
    MOV AL,"o"
    CALL LETRA
    MOV AL," "
    CALL LETRA
    MOV AL,"a"
    CALL LETRA
    MOV AL,"l"
    CALL LETRA
    MOV AL," "
    CALL LETRA
    MOV AL,"s"
    CALL LETRA
    MOV AL,"i"
    CALL LETRA
    MOV AL,"s"
    CALL LETRA
    MOV AL,"t"
    CALL LETRA
    MOV AL,"e"
    CALL LETRA
    MOV AL,"m"
    CALL LETRA
    MOV AL,"a"
    CALL LETRA
    CALL SIGLINEA
    MOV AL,"I"
    CALL LETRA
    MOV AL,"n"
    CALL LETRA
    MOV AL,"g"
    CALL LETRA
    MOV AL,"r"
    CALL LETRA
    MOV AL,"e"
    CALL LETRA
    MOV AL,"s"
    CALL LETRA
    MOV AL,"e"
    CALL LETRA
    MOV AL," "
    CALL LETRA
    MOV AL,"o"
    CALL LETRA
    MOV AL,"p"
    CALL LETRA
    MOV AL,"c"
    CALL LETRA
    MOV AL,"i"
    CALL LETRA
    MOV AL,"o"
    CALL LETRA
    MOV AL,"n"
    CALL LETRA
    MOV AL,":"
    CALL LETRA
    CALL SIGLINEA
    MOV AL,"1"
    CALL LETRA
    MOV AL,")"
    CALL LETRA
    MOV AL,"B"
    CALL LETRA
    MOV AL,"i"
    CALL LETRA
    MOV AL,"s"
    CALL LETRA
    MOV AL,"e"
    CALL LETRA
    MOV AL,"c"
    CALL LETRA
    MOV AL,"c"
    CALL LETRA
    MOV AL,"i"
    CALL LETRA
    MOV AL,"o"
    CALL LETRA
    MOV AL,"n"
    CALL LETRA
    CALL SIGLINEA
    MOV AL,"2"
    CALL LETRA
    MOV AL,")"
    CALL LETRA
    MOV AL,"P"
    CALL LETRA
    MOV AL,"u"
    CALL LETRA
    MOV AL,"n"
    CALL LETRA
    MOV AL,"t"
    CALL LETRA
    MOV AL,"o"
    CALL LETRA
    MOV AL," "
    CALL LETRA
    MOV AL,"f"
    CALL LETRA
    MOV AL,"i"
    CALL LETRA
    MOV AL,"j"
    CALL LETRA
    MOV AL,"o"
    CALL LETRA
    CALL SIGLINEA
    MOV AL,"3"
    CALL LETRA
    MOV AL,")"
    CALL LETRA
    MOV AL,"N"
    CALL LETRA
    MOV AL,"e"
    CALL LETRA
    MOV AL,"w"
    CALL LETRA
    MOV AL,"t"
    CALL LETRA
    MOV AL,"o"
    CALL LETRA
    MOV AL,"n"
    CALL LETRA
    MOV AL," "
    CALL LETRA
    MOV AL,"R"
    CALL LETRA
    MOV AL,"a"
    CALL LETRA
    MOV AL,"p"
    CALL LETRA
    MOV AL,"h"
    CALL LETRA
    MOV AL,"s"
    CALL LETRA
    MOV AL,"o"
    CALL LETRA
    MOV AL,"n"
    CALL LETRA
    CALL SIGLINEA
    MOV AL,"4"
    CALL LETRA
    MOV AL,")"
    CALL LETRA
    MOV AL,"S"
    CALL LETRA
    MOV AL,"t"
    CALL LETRA
    MOV AL,"e"
    CALL LETRA
    MOV AL,"f"
    CALL LETRA
    MOV AL,"f"
    CALL LETRA
    MOV AL,"e"
    CALL LETRA
    MOV AL,"n"
    CALL LETRA
    MOV AL,"s"
    CALL LETRA
    MOV AL,"e"
    CALL LETRA
    MOV AL,"n"
    CALL LETRA
    CALL SIGLINEA
    MOV AL,"O"
    CALL LETRA
    MOV AL,"p"
    CALL LETRA
    MOV AL,"c"
    CALL LETRA
    MOV AL,"i"
    CALL LETRA
    MOV AL,"o"
    CALL LETRA
    MOV AL,"n"
    CALL LETRA
    MOV AL,":"
    CALL LETRA
    MOV AL," "
    CALL LETRA
    RET