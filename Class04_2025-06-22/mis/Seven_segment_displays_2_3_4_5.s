.data
.equ seven1, 0Xff200020

.text
.global _start
_start:
	ldr r0, =seven1
	@ ldr r1, 0b 00000110 01011011 01001111 01100110 @ 1 2 3 4
	ldr r1, =0b00000110010110110100111101100110
	str r1, [r0]
end:
	b end