section .text
global _ft_strcpy:

mov r12, 0
_ft_strcpy:
    mov r9b, byte [rsi + r12] ; moving from second argument to r9 
    mov byte [rdi + r12], r9b ; And moving from r9 to the first argument
    cmp r9b, 0                ; Comparing between r9 and null
    je  return                ; ==> if (x == y)
    inc r12                   
    jmp _ft_strcpy
return:
    mov  rax, rdi               ; moving rdi to the return register
    mov r12, 0
    ret