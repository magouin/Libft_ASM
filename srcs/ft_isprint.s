global _ft_isprint

section .text

_ft_isprint:
	push	rcx
	push	rsi
	push	r9
	push	rdi

	mov		rax, 0
	cmp		edi, 32
	jl		exit
	cmp		edi, 127
	je		exit
	mov		rax, 1
exit:
	pop		rdi
	pop		r9
	pop		rsi
	pop		rcx
	ret