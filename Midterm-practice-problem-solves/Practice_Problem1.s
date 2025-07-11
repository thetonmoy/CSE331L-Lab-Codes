@ 1. Write an ARM assembly program that compares three integers stored in R0, R1, and
@ R2. Store the greater number in R3 using conditional branch instructions.

.data
	data1: .word 55
	data2: .word 22
	data3: .word 11
.text
.global _start
_start:
	ldr r0, =data1
	ldr r0, [r0]
	ldr r1, =data2
	ldr r1, [r1]
	ldr r2, =data3
	ldr r2, [r2]
	
	mov r3, #0 @ to store the greatest number, initialized to 0
	
	cmp r0, r3
	bgt branch1
	
	step2:
		cmp r1, r3
		bgt branch2
	
	step3:
		cmp r2, r3
		bgt branch3
		b end
	
	branch1:
		mov r3, r0
		b step2
	
	branch2:
		mov r3, r1
		b step3
	
	branch3:
		mov r3, r2
		b end
		
	end:
		b end