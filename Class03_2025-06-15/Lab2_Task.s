@ Write an ARM assembly program that classifies an integer stored in memory 
@ as positive, negative, or zero.
@ The program should read the integer value from memory into register R0.
@ It should then determine whether the value is:
@ Zero: If the value is exactly 0, store 0 in R1.
@ Negative: If the value is less than 0, store -1 in R1.
@ Positive: If the value is greater than 0, store 1 in R1.
@ Use conditional branch instructions (BEQ, BLT, BGT) to implement 
@ the classification logic.
@ The input number is stored in a .word in memory (variable).
@ The result (classification code) should be stored in register R1 when 
@ the program finishes.

.data
	num: .word 3
.text
.global _start
_start:
	ldr r0, =num
	ldr r0, [r0]
	
	cmp r0, #0
	beq step1
	blt step2
	bgt step3
	
	step1:
		mov r1, #0
		b end
	
	step2:
		mov r1, #-1
		b end
	
	step3:
		mov r1, #1
		b end
	
	end:
		b end
