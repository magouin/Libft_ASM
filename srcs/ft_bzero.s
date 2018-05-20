global _ft_bzero

section .text

_ft_bzero:
	push	rcx
	push	rsi
	push	r9
	push	rdi
	sub		rcx, rcx
begin:
	cmp		rsi, rcx
	je		reta
	mov		r9, rdi
	add		r9, rcx
	mov		BYTE [r9], 0
	inc		rcx
	jmp		begin
reta:
	pop		rdi
	pop		r9
	pop		rsi
	pop		rcx
	ret