@ 1. Write an ARM assembly program that compares three integers stored in R0, R1 and
@ R2. Store the greater number in R3 using conditional branch instructions.

.data
	num1: .word -1
	num2: .word 0
	num3: .word 11
.text
.global _start
_start:
	ldr r0, =num1
	ldr r0, [r0]
	ldr r1, =num2
	ldr r1, [r1]
	ldr r2, =num3
	ldr r2, [r2]
	
	mov r3, r0
	b compare2
	
	compare2:
		cmp r1, r3
		bgt step1
	
	compare3:
		cmp r2, r3
		bgt step2
	
	b end
	
	step1:
		mov r3, r1
		b compare3
	
	step2:
		mov r3, r2
		b end
		
	end:
		b end
