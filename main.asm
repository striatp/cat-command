section .data
	path: db "./test.txt", 0

section .text
global _start

extern getargv
extern rdfile
extern mfree

_start:
	mov rdi, 1
	call getargv

	mov rdi, rax
	call rdfile
	mov r12, rax
	mov r13, rdx

	mov rax, 1
	mov rdi, 1
	mov rsi, r12
	mov rdx, r13
	syscall

	mov rdi, r12
	mov rsi, r13
	call mfree

	mov rax, 60
	xor rdi, rdi
	syscall
