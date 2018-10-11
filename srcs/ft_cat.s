global _ft_cat

section .text

_ft_cat:
	push rbp
	push r10
	mov rbp, rsp
	sub rsp , 8224

	mov rax, 0x2000005
	mov rsi, 0
	syscall
	cmp rax, 0
	jl exit
	mov rdi, rax
	mov rax, 0x2000003
	lea rsi, [rsp + 8192]
	mov rdx, 8192
	syscall 
exit:
	mov rsp, rbp
	pop r10
	pop rbp
	ret