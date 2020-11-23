extern ___error
section .text
global   _ft_write:
_ft_write:
   mov rax, 0x2000004
   syscall
   jc error
   ret
error:
   mov   r12, rax
   mov   rax, 0
   call  ___error
   mov   [rax], r12
   mov   rax, -1
   ret