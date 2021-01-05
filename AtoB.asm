section .data
         msg1 db "Enter first digit : ",0AH;
         a1 equ $-msg1 
         msg2 db "Enter second digit :", 0AH;
         a2 equ $-msg2 
         msg3 db "Result is :"
         a3 equ $-msg3
section .bss
        a resb 2
        b resb 2
        c resb 2
section .text
  global _start

_start: 
  %macro print 2
  mov eax,4 
  mov ebx,1
  mov ecx,%1
  mov edx,%2
  int 80h 
  %endmacro
  
  %macro read 2
  mov eax,3
  mov ebx,0
  mov ecx,%1
  mov edx,%2
  int 80h
  %endmacro
  
  print msg1,a1
  read a,2
  print msg2,a2
  read b,2
  print msg3,a3
  
  mov al,[a]
  sub al,30H
  rol al,04
  mov ch,[b]
  sub ch,30H
  OR al,ch
  mov cl,10H
  div cl
  add ax,3030H
  
  mov [c],ax
  print c,2
  mov eax,1
  int 80h
