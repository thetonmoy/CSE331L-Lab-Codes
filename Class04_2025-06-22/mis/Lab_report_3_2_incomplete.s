@ 2. Write a Code for ARM assembly that Calculates the Factorial of a number 
@ and shows that number’s Binary Value using LEDs

.data
	number: .word 5
	.equ seven1, 0Xff200020

.text
.global _start
_start:
	ldr r0, =number
	ldr r0, [r0]
	
	mov r1, #1
	
	loop_body:
		cmp r0, #0
		beq loop_end
		
		mul r1, r1, r0
		sub r0, r0, #1
		b loop_body
		
	loop_end:
		b loop_end

