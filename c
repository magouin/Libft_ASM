     1                                  global ft_strlen
     2                                  
     3                                  section .text
     4                                  
     5                                  ft_strlen:
     6 00000000 4829C9                  	sub rcx, rcx
     7                                  begin:
     8 00000003 4989F9                  	mov r9, rdi
     9 00000006 4901C9                  	add r9, rcx
    10 00000009 418A01                  	mov	al, [r9]
    11 0000000C 3C00                    	cmp al, 0
    12 0000000E 7405                    	je reta
    13 00000010 48FFC1                  	inc rcx
    14 00000013 EBEE                    	jmp begin
    15                                  reta:
    16 00000015 4889C8                  	mov rax, rcx
    17 00000018 C3                      	ret
