section .data
%macro display 2

MOV eax,4
MOV ebx,1
MOV ecx,%1
MOV edx,%2
int 80h 
%endmacro

m1 db "enter a divident",0ah
l1 equ $-m1
m2 db "÷ enter divisor",0ah
l2 equ $-m2
m3 db "=the continent is",0ah
l3 equ $-m3

section .bss
res resb 2
n1 resb 10
n2 resb 10
section .text
global_start:
 _start:
  
  display m1,l1
  MOV eax, 3
  MOV ebx, 0
  MOV ecx,n1
  MOV edx,5
  int 80h 

  display m2,l2
  MOV eax, 3
  MOV ebx, 0
  MOV ecx,n2
  MOV edx,5
  int 80h

  MOV al,[n1]
  SUB al,'0'
  MOV bl,[n2]
  SUB bl,'0'
  DIV bl
  ADD al,'0'

  MOV [res],al
  display m3,l3
  MOV ecx,res
  MOV edx, 2
  MOV ebx, 1
  MOV eax, 4
  int 80h
  MOV ebx,0
  MOV eax,1
  int 80h
