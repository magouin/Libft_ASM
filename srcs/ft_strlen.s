global _ft_strlen

section .text

_ft_strlen:
	push rcx
	push r9
	push rdi
	push rsi

	mov rcx, 0
	mov r9, rdi
begin:
	mov	al, [r9]
	cmp al, 0
	je reta
	inc rcx
	inc r9
	jmp begin
reta:
	mov rax, rcx
	
	pop	 rsi
	pop	 rdi
	pop	 r9
	pop	 rcx
	ret