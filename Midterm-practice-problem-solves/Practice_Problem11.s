@ 11. Display Even Numbers (0, 2, 4, 6, 8) on 7-Segment. Loop through 
@ even digits and show each for 1 second.

.data
	.equ ssd, 0Xff200020
	var: .word 2
.text
.global _start
_start:
	ldr r4, =var
	ldr r4, [r4]
	mov r5, #0
	outer_loop:
		cmp r5, r4
		ble outer_loop_body
		b end
	outer_loop_body:

		ldr r0, =ssd
		ldr r1, =0b00111111 @ 0
		str r1, [r0]
		ldr r2, =5000000
		mov r3, #0
		bl loop

		ldr r0, =ssd
		ldr r1, =0b01011011 @ 2
		str r1, [r0]
		ldr r2, =5000000
		mov r3, #0
		bl loop

		ldr r0, =ssd
		ldr r1, =0b01100110 @ 4
		str r1, [r0]
		ldr r2, =5000000
		mov r3, #0
		bl loop

		ldr r0, =ssd
		ldr r1, =0b01111101 @ 6
		str r1, [r0]
		ldr r2, =5000000
		mov r3, #0
		bl loop

		ldr r0, =ssd
		ldr r1, =0b01111111 @ 8
		str r1, [r0]
		ldr r2, =5000000
		mov r3, #0
		bl loop

		@ b end
		add r5, r5, #1
		b outer_loop

		loop:
			cmp r3, r2
			ble loopBody
			bx lr
		loopBody:
			add r3, r3, #1
			b loop	
		
	end: 
		b end