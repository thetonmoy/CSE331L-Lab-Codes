.data
	.equ led, 0Xff200000
	.equ pb, 0Xff200050
.text
.global _start
_start:
	
	loop:
		ldr r0, =pb
		ldr r0, [r0]
	
		ldr r1, =led
	
		str r0, [r1]
		
		b loop
	end:
		b end
