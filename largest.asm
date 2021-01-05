section .data
   m1 db "enter a number: ",0ah 
   l1 equ $- m1 
   m2 db "enter second number: ",0ah 
   l2 equ $- m2 
   m db "The largest number is: ", 0ah 
   l equ $- m 
   %macro display 2
   MOV eax, 4
   MOV ebx, 1
   MOV ecx, %1
   MOV edx, %2
   int 80h 
   %endmacro 
   %macro read 2
   MOV eax, 3
   MOV ebx, 0
   MOV ecx, %1
   MOV edx, %2
   int 80h 
   %endmacro 
section .bss
   largest resb 2
   num1 resd 2
   num2 resd 2 
section .text
   global _start   
_start:
       display m1, l1
       read num1,2
        display m2, l2
       read num2,2        
   mov   ecx,[num1]
   cmp   ecx,[num2]
   jg   ex
   mov   ecx,[num2]
   ex:
   mov   [largest],ecx
   display m, l
   int 80h 
   mov   ecx,largest 
   mov   edx, 2
   mov   ebx,1  
   mov   eax,4       
   int 80h 
    MOV ebx, 0
   mov   eax, 1
   int   80h
