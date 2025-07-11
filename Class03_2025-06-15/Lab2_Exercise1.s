@ Compare two numbers and store the larger one.
.data
	number1: .word 11
	number2: .word 22
.text
.global _start
_start:
	ldr r0, =number1
	ldr r0, [r0]
	ldr r1, =number2
	ldr r1, [r1]
	
	cmp r0, r1
	bgt checkPoint1
	
	mov r2, r1
	b end
	
	checkPoint1:
		mov r2, r0
		b end
		
	end:
		b end