global _ft_memset

section .text

_ft_memset:
	push rdi
	mov rcx, rdx
	mov al, sil
	rep stosb  
	pop rax
	ret