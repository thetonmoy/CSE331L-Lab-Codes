.global _start
_start:
	mov r0, #1
	mov r1, #10
	BL add_num
	mov r3, #20
	b end
	
add_num:
	add r2, r0, r1
	BX LR
	
end:
	b end