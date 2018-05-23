global _ft_strcat

section .text

_ft_strcat:
	push	rsi
	push	r9
	push	rdi
	push	rbx

	mov		rax, rdi
begin:
	cmp		BYTE [rdi], 0
	je		copy
	inc		rdi
	jmp		begin
copy:
	cmp		BYTE [rsi], 0
	je		return
	mov		bl, [rsi]
	mov		BYTE [rdi], bl
	inc		rdi
	inc		rsi
	jmp		copy
return:

	pop		rbx
	pop		rdi
	pop		r9
	pop		rsi
	ret