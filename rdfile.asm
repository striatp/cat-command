section .text
global rdfile

extern malloc
extern filesz

rdfile:
	push rbx
	push r12
	push r13

	mov rax, 2
	; rdi already contains the string path pointer
	xor rsi, rsi
	xor rdx, rdx
	syscall

	mov rbx, rax ; fd

	; file size
	mov  rdi, rbx
	call filesz
	mov  r12, rax

	; allocate mem
	mov  rdi, r12
	call malloc
	mov  r13, rax

	; reading file
	xor rax, rax
	mov rdi, rbx
	mov rsi, r13
	mov rdx, r12
	syscall

	; closing file
	mov rax, 3
	mov rdi, rbx
	syscall

	mov rax, r13
	mov rdx, r12

	pop r13
	pop r12
	pop rbx
	ret
