; Hc/NtCreateIRTimer
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciCreateIRTimer:DWORD

.DATA
.CODE

HcCreateIRTimer PROC
	mov r10, rcx
	mov eax, sciCreateIRTimer
	syscall
	ret
HcCreateIRTimer ENDP

ELSE
; 32bit

EXTERNDEF C sciCreateIRTimer:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcCreateIRTimer PROC
	mov eax, sciCreateIRTimer
	mov ecx, fs:[0c0h]
	test ecx, ecx
	jne _wow64
	lea edx, [esp + 4]
	INT 02eh
	ret
	_wow64:
	xor ecx, ecx
	lea edx, [esp + 4h]
	call dword ptr fs:[0c0h]
	ret
HcCreateIRTimer ENDP

ENDIF

END