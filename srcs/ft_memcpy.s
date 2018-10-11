global _ft_memcpy

section .text

_ft_memcpy:
	mov rcx, rdx
	mov al, 0
	rep movsb
	mov rax, rdi
	ret