global _ft_strdup

extern _ft_strlen
extern _malloc
extern _ft_memcpy

section .text

_ft_strdup:
	push rbx
	push rdi
	call _ft_strlen
	inc rax
	mov rbx, rax
	mov rdi, rax
	call _malloc
	pop rdi
	mov rsi, rdi
	mov rdi, rax
	push rdi
	mov rdx, rbx
	call _ft_memcpy
	pop rdi
	mov rax, rdi
	pop rbx
	ret