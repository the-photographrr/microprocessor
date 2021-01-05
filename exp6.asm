SECTION .data
msga db 'please enter the number = ' 
lena equ $ -msga
msgb db 'you have entered = ' 
lenb equ $ -msgb

SECTION .bss
num resb 5

SECTION .text
global _start

_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, msga
	mov edx, lena
	int 80h

	mov eax, 3
	mov ebx, 0
	mov ecx, num
	mov edx, 5
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, msgb
	mov edx, lenb
	int 80h
	
	mov eax, 4
	mov ebx, 1
	mov ecx, num
	mov edx, 5
	int 80h
	
	mov eax, 1
	mov ebx, 0
	int 80h
	
