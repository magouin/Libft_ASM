global _ft_isalpha

section .text

_ft_isalpha:
	push	rcx
	push	rsi
	push	r9
	push	rdi

	mov		rax, 0
	cmp		edi, 65
	jl		.exit
	cmp		edi, 90
	jg		.next
	mov		rax, 1
.next:
	cmp		edi, 97
	jl		.exit
	cmp		edi, 122
	jg		.exit
	mov		rax, 1
.exit:
	pop		rdi
	pop		r9
	pop		rsi
	pop		rcx
	ret
