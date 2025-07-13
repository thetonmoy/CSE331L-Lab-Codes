@ 10. Display the digit "8" five times on the 7-segment display 
@ with on (e.g., 2 seconds) and off intervals.

.data
	.equ ssd, 0Xff200020
	var: .word 5
.text
.global _start
_start:
	ldr r2, =var
	ldr r2, [r2]
	
	mov r3, #0
	
	
	loop:
		cmp r3, r2
		ble loopBody
		b end
	loopBody:
		ldr r0, =ssd
		ldr r1, =0b01111111
		str r1, [r0]
		
		bl func

		ldr r0, =ssd
		ldr r1, =0b00000000
		str r1, [r0]
		
		add r3, r3, #1
		b loop


	func:
		@ push {r4, r5}
		ldr r4, =5000000
		mov r5, #0
		loop2:
			cmp r5, r4
			ble loopBody2
			@ pop {r4, r5}
			bx lr
		loopBody2:
			add r5, r5, #1
			b loop2

		
	end:
		b end