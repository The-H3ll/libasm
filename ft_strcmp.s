
section .text

global _ft_strcmp:


push r10
push r11

mov r10, 0
mov r11, 0

_ft_strcmp:
    mov r9b, byte[rdi + r10]
    cmp r9b, byte[rsi + r10]
    je equal
    jl less
    jg greater
    inc r10
    inc r11
    jmp _ft_strcmp
equal:
    mov rax, 0
    pop r11
    pop r10
    ret
less:
    mov rax, -1
    pop r11
    pop r10
    ret
greater:
    mov rax, +1
    pop r10
    pop r11
    ret



