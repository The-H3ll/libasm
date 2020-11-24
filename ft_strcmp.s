section .text

global _ft_strcmp:
push    r10
mov     r10, 0
_ft_strcmp:
    mov r9b, byte[rdi + r10]; moving the content from the first argument to the register 
    cmp r9b, byte[rsi + r10]; comparing between r9 and the second argument
    jl less         ; ==> if (x < y)
    jg greater      ; ==> if (x > y)
    cmp r9b, 0      ; comparing between r9 and null
    je equal        ; ==> if (x == y)
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