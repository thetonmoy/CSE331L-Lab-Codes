@ Peripherals:
@ 8. Write an ARMv7 Assembly program that displays the digits 0 to 9 on the 7-segment
@ display, with a certain delay.

.data
	.equ ssd1, 0Xff200020
.text
.global _start
_start:
	ldr r0, =ssd1
	ldr r1, =0b00111111 @ 0
	str r1, [r0]
	ldr r2, =5000000
	mov r3, #0
	bl loopStart
	
	ldr r0, =ssd1
	ldr r1, =0b00000110 @ 1
	str r1, [r0]
	ldr r2, =5000000
	mov r3, #0
	bl loopStart
	
	ldr r0, =ssd1
	ldr r1, =0b01011011 @ 2
	str r1, [r0]
	ldr r2, =5000000
	mov r3, #0
	bl loopStart
	
	ldr r0, =ssd1
	ldr r1, =0b01001111 @ 3
	str r1, [r0]
	ldr r2, =5000000
	mov r3, #0
	bl loopStart
	
	ldr r0, =ssd1
	ldr r1, =0b01100110 @ 4
	str r1, [r0]
	ldr r2, =5000000
	mov r3, #0
	bl loopStart
	
	ldr r0, =ssd1
	ldr r1, =0b01101101 @ 5
	str r1, [r0]
	ldr r2, =5000000
	mov r3, #0
	bl loopStart
	
	ldr r0, =ssd1
	ldr r1, =0b01111101 @ 6
	str r1, [r0]
	ldr r2, =5000000
	mov r3, #0
	bl loopStart

	ldr r0, =ssd1
	ldr r1, =0b00000111 @ 7
	str r1, [r0]
	ldr r2, =5000000
	mov r3, #0
	bl loopStart
	
	ldr r0, =ssd1
	ldr r1, =0b01111111 @ 8
	str r1, [r0]
	ldr r2, =5000000
	mov r3, #0
	bl loopStart
	
	ldr r0, =ssd1
	ldr r1, =0b01101111 @ 9
	str r1, [r0]
	ldr r2, =5000000
	mov r3, #0
	bl loopStart
	
	b end 

	loopStart:
		cmp r2, r3
		bge loopBody
		bx lr
	
	loopBody:
		add r3, r3, #1
		b loopStart
		
	end:
		b end
	