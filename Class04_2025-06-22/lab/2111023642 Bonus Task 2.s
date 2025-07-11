.data
	.equ seven, 0Xff200020

.text 
.global _start
_start:
	ldr r0, =seven
	
	ldr r1, =0b01001111
	str r1, [r0]
	
end:
	b end