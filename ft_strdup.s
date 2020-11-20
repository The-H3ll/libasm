
;char    *_ft_strdup(char *s)
;{
;    int i = 0;
;    char *str = (char *) malloc(sizeof(char) * (strlen(s) + 1))
;    while (s[i] != '\0')
;    {
;        str[i] = s[i];
;        i += 1;
;    }
;    str[i] = '\0';
;    return (str)
;}
extern ___error
extern  _ft_strlen
extern  _ft_strcpy
extern  _malloc
extern  
section .text
global  _ft_strdup:
mov r11, 0
_ft_strdup:
    call _ft_strlen  ; calling ft_strlen function
    sub  rax, 8
    mov r11, rax    ; moving the content of rax to the r11 register 
    push rdi        ; we push the content of rdi to the stack to use the register
    mov  rdi, r11   ; moving the register to rdi because malloc take only from the first parametre
    mov rax, 0      ;   set rax to 0
    call _malloc
    cmp rax, 0
    je error:
    pop rdi         ;   return the content of rdi
    mov rsi, rdi    ; 
    mov rdi, rax    ;
    call _ft_strcpy
    ret
error:
    call ___error
    mov [rax], 12
    mov rax, 0
    ret