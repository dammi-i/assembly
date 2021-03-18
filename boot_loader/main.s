global start

section .text
bits 32

start;
    mov dword [0xb8000], 0x41
    hlt
