section .data
       msg1 db 'enter the multipicant ',0ah 
       len1 equ $-msg1 
       msg2 db 'enter the multiplier ',0ah
       len2 equ $-msg2
       msg3 db 'product is ',0ah 
       len3 equ $-msg3
       section .bss
       num1 resb 5
       num2 resb 5
       res resb 10
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
  mov edx,5
  int 80h
  
  mov eax,4
  mov ebx,1
  mov ecx,msg2
  mov edx,len2
  int 80h 
  
  mov eax,3
  mov ebx,0
  mov ecx,num2
  mov edx,5
  int 80h 
  
  
  mov al,[num1]
  sub al,'0'
  
  mov bl,[num2]
  sub bl,'0'
  mul bl
  add al,'0'
  
  mov [res],al
  mov eax,4
  mov ebx,1
  mov ecx,msg3 
  mov edx,len3
  int 80h 
  
  mov eax,4
  mov ebx,1
  mov ecx,res
  mov edx,10
  int 80h 
  
  mov eax,1
  int 80h
