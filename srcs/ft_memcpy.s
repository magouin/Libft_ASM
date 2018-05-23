global _ft_memcpy

section .text

_ft_memcpy:
	push	rsi
	push	r9
	push	rdi
	push	rbx

	mov		rbx, rdi
	mov		r9, 0
begin:
	cmp		r9, rdx
	je		exit
	mov		bl, BYTE [rsi] 
	mov		BYTE [rdi], bl
	inc		r9
	inc		rsi
	inc		rdi
	jmp		begin
exit:

	mov		rax, rbx
	pop		rbx
	pop		rdi
	pop		r9
	pop		rsi
	ret