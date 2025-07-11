@ A=4, B=3, C=2, D=5
@ ((A + B) * C) – D

.data
A: .word 4
B: .word 3
C: .word 2
D: .word 5

.text
.global _start
_start:
	ldr r0, =A
	ldr r0, [r0]
	
	ldr r1, =B
	ldr r1, [r1]
	
	add r0, r0, r1
	
	ldr r1, =C
	ldr r1, [r1]
	
	mul r0, r0, r1
	
	ldr r1, =D
	ldr r1, [r1]
	
	sub r0, r0, r1
	
exit:
	b exit
