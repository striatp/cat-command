section .text
global mfree

mfree:
	mov rax, 11
	; rdi already contains pointer to allocated mem
	; rsi already contains length of allocated mem
	syscall

	ret
