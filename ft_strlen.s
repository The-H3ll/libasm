section .text

global  _ft_strlen:

mov r12, 0 ; seting register to null

_ft_strlen:
    cmp     byte [rdi+r12], 0; We compare between the byte and null
    je      return
    inc     r12 ; incrementing the register
    jmp     _ft_strlen ; looping
return:
    mov rax, r12 ; moving the result to the return pointer
    mov r12, 0
    ret