; Hc/NtUserThunkedMenuInfo
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciUserThunkedMenuInfo:DWORD

.DATA
.CODE

HcUserThunkedMenuInfo PROC
	mov r10, rcx
	mov eax, sciUserThunkedMenuInfo
	syscall
	ret
HcUserThunkedMenuInfo ENDP

ELSE
; 32bit

EXTERNDEF C sciUserThunkedMenuInfo:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcUserThunkedMenuInfo PROC
	mov eax, sciUserThunkedMenuInfo
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
HcUserThunkedMenuInfo ENDP

ENDIF

END