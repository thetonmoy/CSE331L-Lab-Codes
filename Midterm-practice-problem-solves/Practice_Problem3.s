@ for(int i = 0; i < 10; i++){
@ 	sum += i:
@ }

.data

.text
.global _start
_start:
	mov r0, #0 @ i = 0
	mov r1, #10 @ i < 10
	mov r2, #0 @ sum = 0
	
	loop:
		add r2, r2, r0 @ sum = sum + i
		add r0, r0, #1 @ i++
		cmp r0, r1
		blt loop
		b end
	end:
		b end
		
@ GE	signed ≥
@ GT	signed >
@ LE	signed ≤
@ LT	signed <