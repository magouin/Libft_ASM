global _ft_isalnum

extern _ft_isalpha
extern _ft_isdigit

section .text

_ft_isalnum:
	push	rcx
	push	rsi
	push	r9
	push	rdi

	mov		rax, 0
	call	_ft_isalpha
	cmp		rax, 1
	je		exit
	call	_ft_isdigit
exit:
	pop		rdi
	pop		r9
	pop		rsi
	pop		rcx
	ret