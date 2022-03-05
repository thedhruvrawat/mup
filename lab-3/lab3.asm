.model tiny
.486

.data
        NAM DB 'Dhruv Rawat'
        CNT DB 11
        FLIP DB 11 dup(?)
.code
.startup
        LEA SI, NAM
        LEA AX, FLIP
        MOV DI, AX
        MOV CL, CNT
        ADD SI, 10
        CLD
L2:     MOVSB
        SUB SI, 2
        LOOP L2
L3:     MOV CL, CNT
        LEA SI, FLIP
        MOV BX, 2019H
        MOV ES, BX
        MOV DI, 0537H
        CLD
        REP MOVSB               ;copying contents from mem location FLIP to 2019:0537
.exit
end

;Dhruv Rawat stored as tawaR vurhD at location 2019:0537