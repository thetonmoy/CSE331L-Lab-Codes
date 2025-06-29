@ Lab 1, Exercise 3: Calculate R3 = 6 * 7

.data
variable1: .word 6
variable2: .word 7

.text
.global _start
_start:
	ldr r0, =variable1
	ldr r0, [r0]
	ldr r1, =variable2
	ldr r1, [r1]
	mul r3, r0, r1

exit:
	b exit