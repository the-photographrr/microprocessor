section .data
msg1:db "enter a number",0ah
msg2:db "number is +ve",0ah
msg3:db "number is -ve",0ah
msg4:db "number is zero",0ah
n:db 0

section .text
global _start
_start:
  mov ax,4
  mov bx,1
  mov ecx,msg1
  mov dx,14
  int 80h
  
  mov ax,3
  mov bx,0
  mov ecx,n
  mov dx,2
  int 80h
  
  mov al,[n]
  mov bl,'0'
  cmp al,bl
  jz print_zero
  jg print_positive
  jl print_negative
  print_negative:
    mov ax,4
    mov bx,1
    mov ecx,msg3
    mov dx,14
    int 80h
    
    jmp exit
    print_zero:
      mov ax,4
      mov bx,1
      mov ecx,msg4
      mov dx,14
      int 80h
      
      jmp exit
      print_positive:
        mov ax,4
        mov bx,1
        mov ecx,msg2
        mov dx,14
        int 80h
        
        exit:
          mov ax,1
          int 80h
