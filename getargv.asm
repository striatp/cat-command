section .text
global getargv

getargv:
	imul rdi, 8
	add  rdi, 16

	mov  rax, [rsp+rdi]
	ret
