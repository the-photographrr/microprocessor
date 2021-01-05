section .data
%macro display  2
  MOV eax, 4
  MOV ebx, 1
  MOV ecx, %1
  MOV edx, %2
  int 80h
  %endmacro
num db 64h 

msg db "first digit", 0ah 
l equ $-msg 
 msg2 db "second digit", 0ah
l2 equ $-msg2
section .bss
num1 resb 1
 num2 resb 1
section .text
global _start
_start:
  
  
  MOV ah, [num]
  and ah, 0F0H
  ror ah, 04H    
  ADD ah,30h
  MOV [num1], ah
  
  MOV al, [num]
  and al,0FH
  ADD al, 30H
  MOV [num2], al
  
  display msg, l
  display num1, 1
   display msg2, l2
  display num2, 1
  MOV eax, 1
  MOV ebx, 0
  int 80h

