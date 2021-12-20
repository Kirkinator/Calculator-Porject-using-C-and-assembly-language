; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

INCLUDE Irvine32.inc

.data
array DWORD 0,1,2,3,4,5,6,7,8,9


.code
main proc

mov esi,0				
.WHILE eax != 9                 ;while eax register does not equal 9
	mov eax,[array+esi]          ; increment the array + the esi register
	call Writedec               ;writes an unsigned decimal to standard output
	call Crlf                   ;implements a new line in output
	add esi,4                   ;add 4 for DWORD arrays
.ENDW

	invoke ExitProcess,0
main endp
end main