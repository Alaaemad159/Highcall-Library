; Hc/NtGdiDdRenderMoComp
; This file was automatically generated by Highcall's syscall generator.

IFDEF RAX
; 64bit

EXTERNDEF sciGdiDdRenderMoComp:DWORD

.DATA
.CODE

HcGdiDdRenderMoComp PROC
	mov r10, rcx
	mov eax, sciGdiDdRenderMoComp
	syscall
	ret
HcGdiDdRenderMoComp ENDP

ELSE
; 32bit

EXTERNDEF C sciGdiDdRenderMoComp:DWORD

.586			  
.MODEL FLAT, C   
.STACK
.DATA
.CODE

ASSUME FS:NOTHING

HcGdiDdRenderMoComp PROC
	mov eax, sciGdiDdRenderMoComp
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
HcGdiDdRenderMoComp ENDP

ENDIF

END