.data
	var: .word 10
	var2: .word 10
.text
.global _start
_start:
	mov r0, #0
	mov r1, #10 
	
	ldr r2, =var
	ldr r2, [r2]
	
	ldr r3, =var2
	ldr r3, [r3]
	
loop_start:
	cmp r0, r1
	bge loop_end
	
	@ loop_body
	mul r4, r2, r0
	
	add r0, r0, #1
	b loop_start
	
loop_end:
	b loop_end