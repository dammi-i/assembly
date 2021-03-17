section .text
    global _start

_start:
    mov esi, 3
    mov ebp, 4
    add esi, ebp
    mov ebx, esi
    mov eax, 1
    int 0x80
