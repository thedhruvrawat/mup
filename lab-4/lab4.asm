.model tiny
.386
.data

    INPUT DB "ENTER YOUR BITS ID: $"
    OUTPUT DB "REVERSED ID: $"

.code
.startup

        MOV DX, OFFSET INPUT
        MOV AH,  09H
        INT 21H

        SUB CL, CL
L1:     MOV AH,  01H
        INT 21H

        MOV [DI], AL
        INC DI        
        INC CL
        CMP AL, 0DH
        JNZ L1

        SUB DI, 02H
        DEC CL
        MOV DX, OFFSET OUTPUT
        MOV AH, 09H
        INT 21H

L2:     MOV DL, [DI]
        MOV AH, 02H
        INT 21H
        
        DEC DI
        DEC CL
        JNZ L2

        MOV AH, 4CH
        INT 21H

.exit 
end