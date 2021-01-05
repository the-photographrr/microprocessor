section .data
m db "Enter first string:", 0ah
l equ $-m
m2 db "Enter second string:", 0ah
l2 equ $-m2
m3 db "Two strings are equal",0ah
l3 equ $-m3
m4 db "Two strings are not equal",0ah
l4 equ $-m4
%macro display 2
mov eax, 4
mov ebx, 1
mov ecx, %1
mov edx, %2
int 80h 
%endmacro 
%macro read 2
mov eax, 3
mov ebx, 0
mov ecx,%1
mov edx, %2
int 80h 
%endmacro 
section .bss
str1 resb 50
str2 resb 50
section .text
global _start
_start:
display m, l
read str1, 50
display m2, l2
read str2, 50
mov eax, 0
loop1:
mov ebx, [str1 + eax]
mov ecx, [str2 + eax]
cmp ebx, ecx
jnz notequal
cmp ebx, 0
jz equal
inc eax
jmp loop1
notequal:
display m4, l4
jmp ext
equal:
display m3, l3
ext:
mov eax, 1
mov ebx, 0
int 80h
