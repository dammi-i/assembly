.globl _start


_start:
    mov x1, #6
    mov x2, #3
    sdiv x3, x1, x2
    mul x4, x2, x3
    sub x5, x4, x1
    mov x0, x5
    mov w8, #93
    svc #0
