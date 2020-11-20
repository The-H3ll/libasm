section .text
global _ft_strcpy:

mov r12, 0
_ft_strcpy:
    mov r9b, byte [rsi + r12]
    mov byte [rdi + r12], r9b
    cmp r9b, 0
    je  return
    inc r12
    jmp _ft_strcpy
return:
    mov  rax, rdi
    mov r12, 0
    ret