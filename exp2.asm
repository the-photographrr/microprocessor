SECTION .data
msg db "ARUN",0Ah,"CS",0Ah,"IPT",0Ah

SECTION .text
global _start

_start:
	mov edx, 13
	mov ecx, msg
	mov ebx, 1
	mov eax, 4
	int 80h

	mov ebx, 0
	mov eax, 1
	int 80h
