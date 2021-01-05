SECTION .data
msg1 db 'enter the first digit :' , 0xA,0xD
len1 equ $- msg1
msg2 db 'enter the second digit :' , 0xA,0xD
len2 equ $- msg2
msg3 db "the difference is :"
len3 equ $- msg3

SECTION .bss
  num1 resb 4
  num2 resb 4
  result resb 2

SECTION .text
global _start

_start:
  mov eax , 4
  mov ebx , 1
  mov ecx , msg1
  mov edx , len1
  int 80h
  
  mov eax , 3
  mov ebx , 0
  mov ecx , num1
  mov edx , 10
  int 80h
  
  mov eax , 4
  mov ebx , 1
  mov ecx , msg2
  mov edx , len2
  int 80h
  
  mov eax , 3
  mov ebx , 0
  mov ecx , num2
  mov edx , 10
  int 80h
  
  mov eax , 4
  mov ebx , 1
  mov ecx , msg3
  mov edx , len3
  int 80h
  
  mov eax , [num1]
  add eax , '0'
  
  mov ebx , [num2]
  add ebx , '0'
  
  sub eax , ebx
  add eax , '0'
  
  mov [result] , eax
  
  mov eax , 4
  mov ebx , 1
  mov ecx , result
  mov edx , 5
  int 80h
  
  exit:
  
  mov eax , 1
  mov ebx , 0
  int 80h
