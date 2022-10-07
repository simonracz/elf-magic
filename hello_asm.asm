global _start:

section .data
message: db 'Hello!', 10

section .text
_start:
	mov rax, 1		; write
	mov rdi, 1		; filedescriptor stdin 0, stdout 1, stderr 2
	mov rsi, message	; memory address of the text
	mov rdx, 7		; number of bytes
	syscall
.loop:
	jmp .loop
	mov rax, 60		; exit
	xor rdi, rdi		; rdi = 0
	syscall

; Syscall calling convention
; Syscall number -> rax
; Maximum 6 arguments. And in this exact order:
; rdi, rsi, rdx, r10, r8, r9
; Return value in rax
; Syscall changes these two registers (clobbers):
; rcx, r11
; 
; On Ubuntu, syscall name -> number mapping : /usr/include/x86_64-linux-gnu/asm/unistd_64.h
