; -- header --
 bits 64
default rel
; -- variables --
section .bss
; -- constants --)
section .data
 ; -- Entrey Point --
section .text
global main
extern ExitProcess
extern printf
extern scanf
          
main:
	PUSH rbp
	MOV rbp, rsp
	SUB rsp, 32    
; -- PUSH ---
	PUSH 10
; -- PUSH ---
	PUSH 7
; -- ADD ---
	POP rax
	ADD qword[rsp], rax
; -- PRINT ---
; NOT IMPLEMENTED 
; -- HALT ---
	JNP EXIT_LABEL
EXIT_LABEL:
	XOR rax, rax
\CALL ExitProcess
