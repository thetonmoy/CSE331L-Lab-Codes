@ 2. Write an ARM assembly program that checks whether the value in R0 is greater than
@ the value in R1. If so, swap the values of R0 and R1. If not, leave them unchanged.

.data
data1: .word 11
data2: .word 2

.text
.global _start
_start:
	ldr r0, =data1
	ldr r0, [r0]
	ldr r1, =data2
	ldr r1, [r1]
	
	cmp r0, r1
	bgt swap
	b end
	
	swap:
		mov r2, r0
		mov r0, r1
		mov r1, r2
		b end
	
	end:
		b end
		