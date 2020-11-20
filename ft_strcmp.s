section .text

global _ft_strcmp:
push    r10
mov     r10, 0
_ft_strcmp:
    mov r9b, byte[rdi + r10]
    cmp r9b, byte[rsi + r10]
    jl less
    jg greater
    cmp r9b, 0
    je equal
    inc r10
    jmp _ft_strcmp
equal:
     mov rax, 0
    ret
less:
    mov rax, -1
    ret
greater:
    mov rax, +1
    ret