@ if(r0 < r1){
@ 	r3 = 1;
@ }
@ else if(r0 == r1){
@ 	r3 = 0;
@ }
@ else{
@ 	r3 = 2;
@ }

.data
	var1: .word 13
	var2: .word 12
.text
.global _start
_start:
	ldr r0, =var1
	ldr r0, [r0]
	ldr r1, =var2
	ldr r1, [r1]
	
	cmp r0, r1
	blt condition1
	beq condition2
	mov r3, #2
	b end
	
	condition1:
		mov r3, #1
		b end
	condition2:
		mov r3, #0
		b end

	end:
		b end