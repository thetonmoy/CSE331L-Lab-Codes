.data
	.equ led, 0Xff200000
	.equ sws, 0Xff200040
.text
.global _start
_start:
	ldr r0, =sws
	ldr r0, [r0]
	
	ldr r1, =led
	
	str r0, [r1]
	
	end:
		b end