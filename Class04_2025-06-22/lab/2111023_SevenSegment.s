.data
	.equ seven, 0Xff200020
	.equ seven_2, 0Xff200030

.text 
.global _start
_start:
	ldr r0, =seven
	
	ldr r1, =0b 00000110 01001111 00000110 01001111
	str r1, [r0]
	
	ldr r2, =seven_2
	
	ldr r3, =0b 00000110 01001111
	str r3, [r2]
	
	
end:
	b end