.data
.equ seven1, 0Xff200020
.equ seven2, 0Xff200030

.text
.global _start
_start:
	ldr r0, =seven1
	@ ldr r1, 0b 00000110 01011011 01001111 01100110 @ 1 2 3 4
	ldr r1, =0b00000110010110110100111101100110
	str r1, [r0]
	
	ldr r2, =seven2
	@ ldr r3, =0b 01101101 01111101
	ldr r3, =0b0110110101111101
	str r3, [r2]
end:
	b end