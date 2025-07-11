@ ((A + B)) X (C - D)) + (E X F) 
@ A=7, B=3, C=5, D=2, E=4, F=6 

.global _start
_start:
	mov r0, #7
	mov r1, #3
	add r0, r0, r1
	
	mov r1, #5
	mov r2, #2
	sub r1, r1, r2
	
	mul r0, r0, r1
	
	mov r1, #4
	mov r2, #6
	mul r1, r1, r2
	
	add r7, r0, r1
	
exit:
	b exit