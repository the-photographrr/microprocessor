section .data
msg1 db 'Please enter your string : '
len1 equ $ -msg1
msg2 db 'Your entered string is : '
len2 equ $ -msg2
section .bss
num1 resw 100
section .text
global _start
_start:
mov eax,4
mov ebx,1
mov ecx,msg1
mov edx,len1
int 80h
mov eax,3
mov ebx,0
mov ecx,num1
mov edx,100
int 80h
mov eax,4
mov ebx,1
mov ecx,msg2
mov edx,len2
int 80h
mov eax,4
mov ebx,1
mov ecx,num1
mov edx,100
int 80h
mov eax,1
mov ebx,0
int 80h
