global ft_strlen

section .text

ft_strlen:
	push rcx
	push r9
	push rdi
	push rsi
	sub rcx, rcx
begin:
	mov r9, rdi
	add r9, rcx
	mov	al, [r9]
	cmp al, 0
	je reta
	inc rcx
	jmp begin
reta:
	mov rax, rcx
	pop	 rcx
	pop	 r9
	pop	 rdi
	pop	 rsi
	ret