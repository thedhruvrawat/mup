.model tiny
.386

.data
		USRPROMPT   DB 		'enter your name without any space', 0DH, 0AH, '$'
		PWDPROMPT   DB 		0DH, 0AH, 'Kindly enter your password', 0DH, 0AH, '$'
		USRNAME     DB 		'dhruvrawat$'		; username already stored in memory
		INPNAME     DB 		10 DUP('$')			; For storing entered username
		PWD 	    DB 		'2019b3a70537p$'    ; password already stored in memory
		INPPWD 	    DB 		13 DUP('$')			; For storing entered password
		NEWLINE	    DB		0DH, 0AH, '$'
		AUTHSUCC    DB		'Authentication Successful, you are welcome', ' ', '$'
		AUTHFAIL    DB		'wrong password$'
		
.code
.startup

		MOV		AX, DS
		MOV		ES, AX
		
		;Output "enter your name without any space"
		LEA		DX, USRPROMPT
		MOV		AH, 09H
		INT 	21H
		
		;Read username from STDIN
		MOV		CL, 10D
		LEA		DI, INPNAME
L1:		MOV		AH, 01H
		INT 	21H			
		CLD
		STOSB	
		DEC		CL
		JNZ		L1
		
		;Compare the entered username with one already stored
		MOV		CL, 10D
		LEA		SI, USRNAME
		LEA 	DI, INPNAME
		REPE	CMPSB		;If both values are same, repeatedly compare byte data, increment SI and DI and decrement CL 
		CMP		CL, 00D
		JNE		L4			;If comparison stopped in between (CL != 00D), then jump to L4
		
		;Output "Kindly enter your password"
		LEA		DX, PWDPROMPT
		MOV		AH, 09H
		INT		21H

		;Read password from STDIN without echoing on screen
		MOV		CL, 13D
		LEA		DI, INPPWD
L2:		MOV		AH, 08H
		INT 	21H			
		CLD
		STOSB
		MOV		DX, '*'			;Print a '*' on screen
		MOV		AH, 02H
		INT 	21H
		MOV		DX, ' '	
		MOV		AH, 02H
		INT 	21H
		DEC 	CL
		JNZ		L2
		
		;Compare the entered password with one already stored
		MOV		CL, 14D
		LEA		SI, PWD
		LEA		DI, INPPWD
		REPE	CMPSB		
		CMP		CL, 00D
        LEA		DX, NEWLINE		
		MOV		AH, 09H
		INT 	21H
		JNE		L3
		
		;Output "Authentication Successful, you are welcome [username]"
		LEA		DX, AUTHSUCC
		MOV		AH, 09H
		INT 	21H
		LEA		DX, USRNAME
		MOV		AH, 09H
		INT 	21H
		LEA		DX, NEWLINE		
		MOV		AH, 09H
		INT 	21H
        JMP     L4

L3:		;Output "wrong password"
        LEA		DX, AUTHFAIL
		MOV		AH, 09H
		INT		21H

L4:		;Exiting

.exit 
end	