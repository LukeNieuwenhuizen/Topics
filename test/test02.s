.syntax unified
.text
.thumb

.func test1
.global test1

test1:
    ldr r4, #0
    ldr r1, [r4]
    ldr r1, [r4]
    ldr r1, [r5]
    ldr r1, [r4]

    mov r3, r1
    mov r7, r7
    mov r3, r7
bx lr

.endfunc