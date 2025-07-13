@ 9. Implement a countdown timer starting from 9 to 0 on 7-Segment

.data
	.equ ssd, 0Xff200020
.text
.global _start
_start:
	ldr r0, =ssd
	ldr r1, =0b01101111 @ 9
	str r1, [r0]
	ldr r2, =500000
	mov r3, #0
	bl loop
	
	ldr r0, =ssd
	ldr r1, =0b01111111 @ 8
	str r1, [r0]
	ldr r2, =500000
	mov r3, #0
	bl loop
	
	ldr r0, =ssd
	ldr r1, =0b00000111 @ 7
	str r1, [r0]
	ldr r2, =500000
	mov r3, #0
	bl loop
	
	ldr r0, =ssd
	ldr r1, =0b01111101 @ 6
	str r1, [r0]
	ldr r2, =500000
	mov r3, #0
	bl loop
	
	ldr r0, =ssd
	ldr r1, =0b01101101 @ 5
	str r1, [r0]
	ldr r2, =500000
	mov r3, #0
	bl loop
	
	ldr r0, =ssd
	ldr r1, =0b01100110 @ 4
	str r1, [r0]
	ldr r2, =500000
	mov r3, #0
	bl loop
	
	ldr r0, =ssd
	ldr r1, =0b01001111 @ 3
	str r1, [r0]
	ldr r2, =500000
	mov r3, #0
	bl loop
	
	ldr r0, =ssd
	ldr r1, =0b01011011 @ 2
	str r1, [r0]
	ldr r2, =500000
	mov r3, #0
	bl loop
	
	ldr r0, =ssd
	ldr r1, =0b00000110 @ 1
	str r1, [r0]
	ldr r2, =500000
	mov r3, #0
	bl loop
	
	ldr r0, =ssd
	ldr r1, =0b00111111 @ 0
	str r1, [r0]
	ldr r2, =500000
	mov r3, #0
	bl loop
	
	b end
	
	loop:
		cmp r3, r2
		ble loopBody
		bx lr
	loopBody:
		add r3, r3, #1
		b loop
		
	end:
		b end
		
	