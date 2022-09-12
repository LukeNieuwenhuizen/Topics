.syntax unified
.text
.thumb

.func test1
.global test1

test1:
    ldr r3, #99
    ldr r1, #12
    ldr r0, [r1]
    ldr r1, [r4]
    ldr r1, [r4]
    ldr r1, [r1]

    movs r1, r3
    movs r7, r7
    movs r3, r7
bx lr

.endfunc