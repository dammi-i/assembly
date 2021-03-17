fizz:
    .asciz "Fizz\n"
buzz:
    .asciz "Buzz\n"

flen = . - fizz
blen = . - buzz


.globl _start

_start:
    mov x9, #0
    mov x10, #50
    blt loop
    loop:
        cmp x9, x10
        add x9, x9, #1
        mov x5, #3
        mov x6, #5
        # checking if x9 % 3 == 0
        # y / x
        sdiv x3, x9, x5
        # x * (y/x)
        mul x4, x5, x3
        # y - (x * (y/x))
        sub x7, x9, x4
        cmp x7, #0
        mov x0, #1
        ldr x1, = fizz
        ldr x2, = flen
        mov w8, #64
        svc #0
        blt loop
    mov x0, #0
    mov w8, #93
    svc #0
