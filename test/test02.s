.syntax unified
.text
.thumb

.func test1
.global test1

test1:
    ldr r1, [r4]
    ldr r1, [r4]
    ldr r1, [r5]
    ldr r1, [r4]
bx lr

.endfunc