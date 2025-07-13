@ int add(int a, int b){
@ 	return a + b;
@ }
@ int main(){
@ 	int x = add(2, 3);
@ }

.data
	a: .word 2
	b: .word 3
.text
.global _start
_start:
	ldr r0, =a
	ldr r0, [r0]
	ldr r1, =b
	ldr r1, [r1]
	
	bl add
	mov r3, #100 @ to check if the return mechanism is working or not
	b end
	
	add:
		add r2, r0, r1
		bx lr
	
	end:
		b end