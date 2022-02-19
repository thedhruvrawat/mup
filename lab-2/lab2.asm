; Name: Dhruv Rawat
; ID: 2019B3A70537P
; Sum = 2+0+1+9+3+7+0+5+3+7 = 37 = 25H
.model tiny
.486

.data
        STRING DB 2,0,1,9,'B',3,'A',7,0,5,3,7
.code

.startup
        MOV CL, 12
        MOV BL, 9
        LEA SI, STRING

X1:     CMP [SI], BL
        JLE X2
        INC SI
        DEC CL
        JNZ X1
        JMP X3

X2:     MOV AL, [SI]
        ADD DL, AL 
        INC SI
        DEC CL
        JNZ X1

X3:     MOV AX, 2019H
        MOV DS, AX
        MOV DI, 0537H
        MOV [DI], DL

.exit
end