SECTION .data
msg times 3 db "*"
msg2 db "", 0Ah;
SECTION .text
global _start
_start:
	mov edx, 1
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 80h

	mov edx, 1
	mov ecx, msg2
	mov ebx, 1
	mov eax, 4
	int 80h
	
	mov edx, 2
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 80h
	
	mov edx, 1
	mov ecx, msg2
	mov ebx, 1
	mov eax, 4
	int 80h
	
	mov edx, 3
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 80h
	
	mov ebx, 0
	mov eax, 1
	int 80h
	
