global _ft_puts

extern _ft_strlen

section .text

_ft_puts:
	push rdx
	push rax
	push rsi
	push rdi
	push rbp
	mov	rbp, rsp
	sub	rsp, 16

	mov DWORD [rbp], 10
	call _ft_strlen
	mov rdx, rax
	mov rsi, rdi
	mov rdi, 1
	mov rax, 4
	syscall
	mov rax, 4
	mov rdi, 1
	mov rsi, rbp
	mov rdx, 1
	syscall
	
	mov	rsp, rbp
	pop	rbp
	pop rdi
	pop rsi
	pop rax
	pop rdx
	ret
