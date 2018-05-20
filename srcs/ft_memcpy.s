global _ft_memcpy

section .text

_ft_memcpy:
	push	rcx
	push	rsi
	push	r9
	push	rdi
	push	rbx

	mov		r9, 0
begin:
	cmp		r9, rdx
	je		exit
	mov		bl, BYTE [rsi] 
	mov		BYTE [rdi], bl
	inc		r9
	inc		rsi
	jmp		begin
exit:
	pop		rbx
	pop		rdi
	pop		r9
	pop		rsi
	pop		rcx
	ret