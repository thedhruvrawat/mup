.MODEL TINY
.DATA
    FIRSTNAME   DB  "DHRUV"
    NAMECOUNT   DB  5
    ID          DB  "2019B3A70537P"
    IDCOUNT     DB  13

.CODE
.STARTUP

    ;SETTING THE DISPLAY MODE
    MOV AH, 0
    MOV AL, 3   
    INT 10H
    
    LEA SI, FIRSTNAME
    MOV DL, 0 
    
X1: MOV AH, 2 
    MOV BH, 0 
    MOV DH, 0 
    INT 10H
    
    MOV AL, [SI] 
    MOV AH, 09H
    MOV BH,0
    MOV CX,1 
    MOV BL, 0EH 
    INT 10H
    
    INC DL
    INC SI
    DEC BYTE PTR NAMECOUNT 
    JNZ X1
    
    LEA SI, ID
    MOV DL, 67 

X2: MOV AH, 2 
    MOV BH, 0 
    MOV DH, 24 
    INT 10H
    
    MOV AL, [SI] 
    MOV AH, 09H
    MOV BH,0
    MOV CX,1 
    MOV BL, 0EH 
    INT 10H
    
    INC DL 
    INC SI
    DEC BYTE PTR IDCOUNT 
    JNZ X2


    MOV AH, 7
X3: INT 21H
    CMP AL, '%'
    JNZ X3
    
.EXIT
END