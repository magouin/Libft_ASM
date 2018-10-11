global _ft_bzero

section .text

_ft_bzero:
	mov rcx, rsi
	mov al, 0
	rep stosb  
	mov rax, rdi
	ret