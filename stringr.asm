section .data
msg1 db "enter a string", 0ah
len1 equ $-msg1
msg2 db "reverse:", 0ah
len2 equ $-msg2 
len db 0
section .bss
str1 resb 20
str2 resb 20
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
    %macro read 1
    mov eax,3
    mov ebx,0
    mov ecx,%1
    mov edx,20
    int 80h
    %endmacro
    print msg1,len1
    read str1
    mov [len],al
    lea esi, [str1]
    lea edi, [str2]
    mov ecx,eax 
    dec ecx 
    add esi, ecx
san:
  dec esi
  mov al,[esi]
    mov [edi],al
    inc edi
    loop san
    print msg2,len2
    print str2, [len]
ext:
    mov ebx, 0
    mov eax,1
    int 80h
