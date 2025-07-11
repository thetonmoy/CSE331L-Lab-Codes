@ Write an ARM Assembly program that assigns a grade based on a student's
@ score stored in memory.
@ If the score is 80 or above, assign grade A.
@ If the score is 60 or above but less than 80, assign grade B.
@ If the score is 40 or above but less than 60, assign grade C.
@ If the score is less than 40, assign grade F.
@ Store the grade as a number in register R1:
@ Grade A = 1, Grade B = 2, Grade C = 3, Grade F = 4.
@ The input score is stored in the data segment as a word. 
@ The output should be the grade code in R1 when the program finishes.

.data
	score: .word 99
.text
.global _start
_start:
	ldr r0, =score
	ldr r0, [r0]
	
	cmp r0, #80
	bge gradeA
	
	cmp r0, #60
	bge gradeB
	
	cmp r0, #40
	bge gradeC
	
	b gradeD
	
	gradeA:
		mov r1, #1
		b end
		
	gradeB:
		mov r1, #2
		b end
		
	gradeC:
		mov r1, #3
		b end
		
	gradeD:
		mov r1, #4
		b end
		
	end:
		b end
