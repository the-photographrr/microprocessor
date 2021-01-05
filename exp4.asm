SECTION .data
msg times 3 db "*"
msg1 db "", 0Ah;

SECTION .text
global _start

_start:
	mov edx, 3
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 80h

	mov edx, 1
	mov ecx, msg1
	mov ebx, 1
	mov eax, 4
	int 80h
	
	mov edx, 2
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 80h
	
	mov edx, 1
	mov ecx, msg1
	mov ebx, 1
	mov eax, 4
	int 80h
	
	mov edx, 1
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 80h
	
	mov ebx, 0
	mov eax, 1
	int 80h
	
