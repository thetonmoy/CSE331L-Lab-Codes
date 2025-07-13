@ int a = 20, b = 6;
@ int quotient = a / b;
@ int remainder = a % b;

@ dividend / divisor = quotient (remainder = )


.data
	dividend: .word 20
	divisor: .word 6
	
.text
.global _start
_start:
	ldr r0, =dividend @ becomes remainder at the end of the loop
	ldr r0, [r0]
	
	ldr r1, =divisor
	ldr r1, [r1]
	
	mov r2, #0 @ quotient
	@ mov r3, #0
	
	loop_start:
		cmp r0, r1
		bge loop
		b end
	
	loop:
		sub r0, r0, r1 @ dividend = dividend - divisor
		@ sub r3, r0, r1 @ remainder = dividend - divisor
		add r2, r2, #1 @ quotient = quotient + 1
		b loop_start
		
	end: 
		b end