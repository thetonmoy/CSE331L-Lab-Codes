.data
	count: .word 2
	.equ seven, 0Xff200020

.text
.global _start
_start:
	
	mov r0, #0
	ldr r1, =count
	ldr r1, [r1]
	
	loop_start:
		cmp r0, r1
		bge loop_end
		
		@loop_body
		ldr r2, =seven
		ldr r3, =0b010110110000000000000000
		str r3, [r2]
		
		ldr r2, =seven
		ldr r3, =0b010110110000011000000000
		str r3, [r2]
		
		ldr r2, =seven
		ldr r3, =0b010110110000011000000110
		str r3, [r2]
		
		ldr r2, =seven
		ldr r3, =0b000000000000000000000000
		str r3, [r2]
		
		add r0, r0, #1
		b loop_start
		
	loop_end:
		b loop_end