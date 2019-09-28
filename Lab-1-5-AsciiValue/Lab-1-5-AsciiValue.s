;
; CSU11021 Introduction to Computing I 2019/2020
; Convert a sequence of ASCII digits to the value they represent
;

	AREA	RESET, CODE, READONLY
	ENTRY

	LDR	R1, ='2'	; Load R1 with ASCII code for symbol '2'
	LDR	R2, ='0'	; Load R2 with ASCII code for symbol '0'
	LDR	R3, ='3'	; Load R3 with ASCII code for symbol '3'
	LDR	R4, ='4'	; Load R4 with ASCII code for symbol '4'

	SUB R1, R1, #0x30 	; Convert values to number form
	SUB R2, R2, #0x30
	SUB R3, R3, #0x30
	SUB R4, R4, #0x30
	
	MOV R0, R4 
	
	LDR	R5, =1000
	MUL R1, R5, R1 		; x1000 position
	ADD R0, R1, R0
	
	LDR R5, =100
	MUL R2, R5, R2		; x100 position
	ADD R0, R2, R0
	
	LDR R5, =10
	MUL R3, R5, R3		; x10 position
	ADD R0, R3, R0
	

STOP	B	STOP

	END
