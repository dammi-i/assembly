.globl _start

_start:
    mov x0, #1
    mov x4, '1'
    mov x5, '2'
    add x6, x4, x5
    ldr x1, [x6]
    ldr x2, #4
    mov w8, #64
    svc #0

    mov x0, #0
    mov w8, #93
    svc #0
