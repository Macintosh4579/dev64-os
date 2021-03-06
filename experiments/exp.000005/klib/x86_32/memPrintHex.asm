;
; prints memory in hexadecimal form
; Parameters:
; [DS:ESI] - address in memory
; ECX - memory size
;
; Return
; Nothing
;
; Clobbers:
; esi
;  
segment .text
[bits 32]
global memPrintHex

extern alPrint
extern al2Hex

memPrintHex:
  push eax
  push ecx
  push ebx

  mov ebx, alPrint
.l1:
  lodsb
  call al2Hex
  loop .l1

  pop ebx
  pop ecx
  pop eax

  ret