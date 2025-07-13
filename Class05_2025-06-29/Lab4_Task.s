.data
	.equ led, 0Xff200000
.text
.global _start
_start:
	
	@ mov r1, #1
	ldr r1, =1
	mov r2, #2 @ for multiplication
	mov r3, #0 @ i = 0
	
	loop:
		ldr r0, =led
		str r1, [r0]
		
		@ delay loop
		ldr r4, =5000000
		mov r5, #0
		loop2:
			cmp r5, r4
			ble loop_body2
			b loop_body
		loop_body2:
			add r5, r5, #1
			b loop2
			
	loop_body:
		mul r1, r1, r2
		add r3, r3, #1		
		cmp r3, #10
		ble loop
		b end
	
	end:
		b end
	
@ 1 2 4 8 16 32 64 128 256 512

@	data:
@		.equ led, 0Xff200000
@	text:
@	.global _start
@	_start:
@		mov r1, #1
@		mov r2, #2 @ dummy 2 for mul
@		mov r3, #0
@		loop:
@			cmp r3, #10
@			beq end
@			ldr r0, =led
@			str r1, [r0]
@			mul r1, r1, r2
@			add r3, r3, #1
@		delay:
@			ldr r4, =5000000
@		delay_loop:
@			sub r4, r4, #1
@			cmp r4, #0
@			beq loop
@			b delay_loop
@			b loop
@		end:
@			b end