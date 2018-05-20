global ft_strcat

section .text

ft_strcat:
	push	rcx
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
	mov		bx, [rsi]
	lea		BYTE rdi, [rsi]
	inc		rdi
	inc		rsi
	jmp		copy
return:
	pop		rbx
	pop		rdi
	pop		r9
	pop		rsi
	pop		rcx
	ret