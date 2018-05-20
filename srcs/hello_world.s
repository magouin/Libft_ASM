global _main
extern ft_bzero
extern _printf
extern ft_strlen
extern ft_strcat

section .text

_main:
    push    rbp             ;save rbp
    mov     rbp,rsp         ;save rsp in rbp
    and     rsp,0fffffff0h  ;round rsp down to 16 byte boundary
	mov		rdi, msg
	call	ft_strlen
	mov		rbx, rax
	mov		rdx, rbx
	mov		rax, 0x2000004	; write
	mov		rdi, 1
	mov		rsi, msg
	syscall
	mov		rsi, rbx
	mov		rdi, msg
	add		rdi, rbx
	add		rdi, 1
	mov		al, 1
	call	_printf			; _printf("nb = %d\n", ft_strlen("Hello, world!"))
	mov		rdi, msg
	mov		rsi, rbx
	call	ft_bzero		; ft_bzero
	mov		rax, 0x2000004	; write
	mov		rdi, 1
	mov		rsi, msg
	mov		rdx, rbx
	syscall
	mov		rdi, msg
	mov		rsi, s1
	call	ft_strcat
	mov		rax, 0x2000004	; write
	mov		rdi, 1
	mov		rsi, msg
	mov		rdx, rbx
	syscall
	mov		rax, 0
	pop		rbp
	ret


section .data

msg db	'Hello, programmers!',0xA,0x0	
len1 equ $ - msg			

pr db 'nb = %d', 0xA,0x0
len2 equ $ - pr 
s1 db 'first and ', 0
s2 db 'seconde', 0xa, 0
