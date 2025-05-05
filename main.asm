global _start
section .text

print:
	mov eax, 4 ; system call for write (sys_write)
	mov ebx, 1 ; use stdout as the fd
	int 0x80 ; invoke the syscall
	ret

_start:
	mov ecx, msg1 ; use message as the buffer
	mov edx, msg_len1 ; supply the length
	call print
	
	mov ecx, msg2 ; use message as the buffer
	mov edx, msg_len2 ; supply the length
	call print
	
	; exit gracefully
	mov eax, 1 ; system call for exit
	mov ebx, 0
	int 0x80 ; invoke the syscall

section .data
	msg1: db "Hello, World1!", 0xa
	msg_len1 equ $-msg1

	msg2: db "Hello, World2!", 0xa
	msg_len2 equ $-msg2
