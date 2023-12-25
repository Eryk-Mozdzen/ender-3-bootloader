.syntax unified
.cpu cortex-m3
.thumb

.global reset_handler

FIRMWARE_BEGIN = 0x08007000

.type vtable, %object
vtable:
    .word 0
    .word reset_handler
.size vtable, .-vtable

.type reset_handler, %function
reset_handler:
    ldr r0, =FIRMWARE_BEGIN
    ldr r1, [r0]
    msr msp, r1

    ldr r0, =FIRMWARE_BEGIN + 4
    ldr r1, [r0]
    bx  r1

    b   .
.size reset_handler, .-reset_handler
