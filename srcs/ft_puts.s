global _ft_puts

extern _ft_strlen

section .text

_ft_puts:
	push rdi
	call _ft_strlen
	pop rdi
	mov rdx, rax
	mov rsi, rdi
	mov rdi, 1
	mov rax, 0x2000004
	syscall
	mov rax, 0x2000004
	mov rdi, 1
	lea rsi, [rel msg]
	mov rdx, 1
	syscall
	ret
	
section .data

msg: db 10