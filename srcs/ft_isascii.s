global _ft_isascii

section .text

_ft_isascii:
	push	rcx
	push	rsi
	push	r9
	push	rdi

	mov		rax, 0
	cmp		edi, 0
	jl		exit
	mov		rax, 1
exit:
	pop		rdi
	pop		r9
	pop		rsi
	pop		rcx
	ret