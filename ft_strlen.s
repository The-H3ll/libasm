section .text

global  _ft_strlen:

mov r12, 0

_ft_strlen:
    cmp     byte [rdi+r12], 0
    je      return
    inc     r12
    jmp     _ft_strlen
return:
    mov rax, r12
    mov r12, 0
    ret