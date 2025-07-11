@ Find maximum of three numbers.
.data
	num1: .word 0
	num2: .word 0
	num3: .word 39
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
	b step2
	
	step2:
		cmp r1, r3
		bgt move2
	
	step3:
		cmp r2, r3
		bgt move3
		b end
	
	move2:
		mov r3, r1
		b step3
	
	move3:
		mov r3, r2
		b end
		
	end:
		b end