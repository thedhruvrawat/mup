.model tiny
.486

.data
        STRING DB '2019B3A70537P'   ;using a string

.code
.startup
        MOV CL, 13
        MOV BL, 39H
        LEA SI, STRING
X1:     CMP [SI], BL
        JLE X2
        INC SI
        DEC CL
        JNZ X1
        JMP X3
X2:     MOV AL, [SI]
        ADD DL, AL 
        SUB DL, 30H                 ;converting ASCII to numerical value
        INC SI
        DEC CL
        JNZ X1
X3:     MOV AX, 2019H
        MOV DS, AX
        MOV DI, 0537H
        MOV [DI], DL
.exit
end

;Since the sum of 2+0+1+9+3+7+0+5+3+7 is 39, the program will store 39 = 25H 
;at memory location 2019:0537