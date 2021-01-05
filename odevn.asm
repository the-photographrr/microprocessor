section .data
%macro display 2
mov eax, 4
mov ebx, 1
mov ecx, %1
mov edx, %2
int 80h
%endmacro

msg1 db 'enter an number', 0ah
len1 equ $-msg1
msg2 db ' is odd number', 0ah
len2 equ $-msg2
msg3 db ' is even number', 0ah
len3 equ $-msg3

section .bss
num resb 5
section .text
global _start:
_start:
display msg1, len1

mov eax, 3 
mov ebx, 0
mov ecx, num
mov edx, 5
int 80h

mov ax, [num]
and ax, 1
jz evn

display msg2, len2
jmp out
evn:
  display msg3, len3
 
out:
  mov eax, 1
  mov ebx, 0
  int 80h
