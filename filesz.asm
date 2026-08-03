section .text
global filesz

filesz:
	sub rsp, 144
	mov rax, 5
	; rdi already contains fd cuz param
	mov rsi, rsp
	syscall

	test rax, rax
	js .error

	mov rax, [rsp+48]
	add rsp, 144
	ret

.error:
	add rsp, 144
	ret
