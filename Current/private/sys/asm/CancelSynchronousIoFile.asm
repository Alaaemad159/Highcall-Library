; Hc/NtCancelSynchronousIoFile
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciCancelSynchronousIoFile:DWORD

.DATA
.CODE

HcCancelSynchronousIoFile PROC
	mov r10, rcx
	mov eax, sciCancelSynchronousIoFile
	syscall
	ret
HcCancelSynchronousIoFile ENDP

ELSE
; 32bit

EXTERNDEF C sciCancelSynchronousIoFile:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcCancelSynchronousIoFile PROC
	mov eax, sciCancelSynchronousIoFile
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
HcCancelSynchronousIoFile ENDP

ENDIF

END