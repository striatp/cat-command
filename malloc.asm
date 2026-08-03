section .text
global malloc

malloc:
	mov rsi, rdi
	mov rax, 9
	xor rdi, rdi
	mov rdx, 3
	mov r10, 0x22
	mov r8, -1
	xor r9,  r9
	syscall

	ret
