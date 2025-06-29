@ Lab 1, Exercise 4: Result = (A + B) * C - D, with A = 4, B = 3, C = 2, D = 5

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
	
	ldr r2, =C
	ldr r2, [r2]
	
	ldr r3, =D
	ldr r3, [r3]
	
	add r0, r0, r1
	mul r0, r0, r2
	sub r0, r0, r3
	
end:
	b end