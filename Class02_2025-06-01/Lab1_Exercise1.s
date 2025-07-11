@ Lab 1, Exercise 1: Compute R2 = (10 + 15) - 5

.global _start
_start:
	mov r0, #10
	mov r1, #15
	add r0, r0, r1
	mov r1, #5
	sub r2, r0, r1
	
end:
	b end