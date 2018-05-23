global _ft_strdup

extern _ft_strlen
extern _malloc
extern _ft_memcpy

section .text

_ft_strdup:
	push rbx
	push rdi
	push r9
	push rsi

	push rdi

	call _ft_strlen
	inc rax
	mov rbx, rax
	mov rdi, rax
	call _malloc

	pop r9
	mov rsi, r9
	mov rdi, rax
	mov rdx, rbx
	call _ft_memcpy
	mov rax,  r9

	pop rsi
	pop r9
	pop rdi
	pop rbx
	ret