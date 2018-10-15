global _ft_isdigit

section .text

_ft_isdigit:
	push	rcx
	push	rsi
	push	r9
	push	rdi

	mov		rax, 0
	cmp		edi, 48
	jl		.exit
	cmp		edi, 57
	jg		.exit
	mov		rax, 1
.exit:
	pop		rdi
	pop		r9
	pop		rsi
	pop		rcx
	ret