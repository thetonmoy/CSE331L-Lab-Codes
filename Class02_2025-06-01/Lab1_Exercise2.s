@ Lab 1, Exercise 2: Store 100 in memory and load it back

.data
variable: .word 100

.text
.global _start
_start:
	ldr r0, =variable
	ldr r0, [r0]

end:
	b end
