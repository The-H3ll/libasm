
extern ___error
section .text

global  _ft_read:
_ft_read:
   mov  rax, 0x2000003
   syscall
   jc error
   ret
error:
   ;mov   r11, rax
   ;mov   rax, 0
   ;call ___error
   ;mov   rax, -1
   ret