SECTION .data 
	msg1 db "Enter the first digit",0xA,0xD
	len1 equ $ -msg1
	msg2 db "Enter the second digit",0xA,0xD
	len2 equ $ -msg2
	msg3 db "The sum is="
	len3 equ $ -msg3

SECTION .bss
	num1 resb 2,
	num2 resb 2,
	result resb 1

SECTION .text
global _start
_start:
	mov eax, 4
	mov ebx, 1
	mov ecx, msg1,
	mov edx, len1
	int 0x80
	
	mov eax, 3
	mov ebx, 0
	mov ecx, num1,
	mov edx, 2
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, msg2,
	mov edx, len2
	int 0x80	

	mov eax, 3
	mov ebx, 0
	mov ecx, num2,
	mov edx, 2
	int 0x80

	mov eax, 4
	mov ebx, 1
	mov ecx, msg3,
	mov edx, len3
	int 0x80

	mov eax,[num1]
	sub eax,'0'

	mov ebx,[num2]
	sub ebx,'0'

	add eax,ebx
	add eax,'0'

	mov [result],eax
	mov eax, 4
	mov ebx, 1
	mov ecx, result,
	mov edx, 1
	int 0x80	

	exit:

	mov eax, 1
	mov ebx, 0
	int 0x80
