SECTION .data
	msg: db "Welcome Back....", 0xa
	msgLength: equ $ - msg
        Exit equ 0
	var1: db 0x11, 0x22  
	var2: dw 0x3344    
	var3: dd 0xaabbccdd 
	var4: dq 0xaabbccdd11223344 
	repeat_buffer: times 128 db 0x68

SECTION .bss 
	buffer: resb 64  

SECTION .text
global _start
_start:
	mov rax, 1   
	mov rdi, 1  
	mov rsi, msg 
	mov rdx, msgLength
	syscall

	mov r8, var4
	mov r9, [var4]
	
   mov rax, 60 
   mov rdi, Exit
   syscall    
