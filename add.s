.globl _start

_start:
    mov x1, #1
    mov x2, #2
    add x6, x1, x2
    mov x0, x6
    mov w8, #0x5D
    svc #0
