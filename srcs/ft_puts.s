global _ft_puts

extern _ft_strlen

section .text

_ft_puts:
	push rdx
	push rsi
	push rdi
	push rbp
	mov	rbp, rsp
	sub	rsp, 16

	mov DWORD [rbp - 8], 10
	call _ft_strlen
	mov rdx, rax
	mov rsi, rdi
	mov rdi, 1
	mov rax, 0x2000004
	syscall
	mov rax, 0x2000004
	mov rdi, 1
	mov rsi, rbp
	sub rsi, 8
	mov rdx, 1
	syscall
	
	mov	rsp, rbp
	pop	rbp
	pop rdi
	pop rsi
	pop rdx
	ret
