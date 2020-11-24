
extern ___error
section .text

global  _ft_read:
_ft_read:
   mov  rax, 0x2000003 ; moving this specific number to call read with syscall
   syscall
   jc error ; Jump if carryflag is set by syscall
   ret
error:
   mov   r11, rax ; moving the content to r11
   mov   rax, 0
   call ___error ; calling errno
   mov   rax, -1 
   ret