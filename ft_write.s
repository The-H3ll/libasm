extern ___error
section .text
global   _ft_write:
_ft_write:
   mov rax, 0x2000004 ; moving this specific number to call read with syscall
   syscall
   jc error ; Jump if carryflag is set by syscall
   ret
error:
   push rax  ; Saving the content to use rax in errno
   call  ___error
   pop rax  ; returning the content to the stack
   mov   rax, -1
   ret