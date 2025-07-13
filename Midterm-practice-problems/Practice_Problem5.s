@ if(score >= 80){
@ 	grade = 'A';
@ }
@ else if(score >= 60){
@ 	grade = 'B';
@ }
@ else{
@ 	grade = 'F';
@ }

@ assuming, grade = r1 & 1 = A, 2 = B, 3 = F

.data
	score: .word 79
.text
.global _start
_start:
	ldr r0, =score
	ldr r0, [r0]
	
	cmp r0, #80
	bge condition1
	
	cmp r0, #60
	bge condition2
	
	mov r1, #3
	b end
	
	condition1:
		mov r1, #1
		b end
	condition2:
		mov r1, #2
		b end
		
	end:
		b end