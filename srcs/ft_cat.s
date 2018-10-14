global _ft_cat
extern _ft_puts
section .text

_ft_cat:
	push rbp
	push r10
	mov rbp, rsp
	sub rsp, 8192

	mov r10, rdi
	cmp r10w, -1
	je .exit

.begin:
	mov rax, 0x2000003
	mov rdi, r10
	lea rsi, [rsp]
	mov rdx, 8192
	syscall
	jc .exit
	cmp eax, 0
	je .exit

	mov rdi, 1
	lea rsi, [rsp]
	mov rdx, rax
	mov rax, 0x2000004
	syscall
	jc .exit
	jmp .begin
.exit:
	mov rsp, rbp
	pop r10
	pop rbp
	ret