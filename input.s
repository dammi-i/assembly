.data
msg:
    .asciz "hello there"
inp:
    .ascii "%d"
err:
    .ascii "nello"

len = . - msg
ilen = . - inp
elen = . - err
.globl _start

.text

_start:
    mov x0, #2
    ldr x1, =inp
    ldr x2, =ilen
    mov w8, #0x3F
    svc #0
    cmp x1, #0
    b l2
    eor x1, x1, x1
    eor x2, x2, x2
    mov x0, #1
    ldr x1, =msg
    ldr x2, =len
    mov w8, #0x40
    bl l3
    svc #0
    mov x0, #0
    mov w8, #0x5D
l2:
    eor x1, x1, x1
    eor x2, x2, x2
    mov x0, #1
    ldr x1, =err
    ldr x2, =elen
    mov w8, #0x40
    svc #0
    mov x0, #0
    mov w8, #0x5D
    svc #0

l3:
