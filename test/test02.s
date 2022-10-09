.syntax unified
.text
.thumb
.func test1
.global test1
test1:
    ldr r2, [r7, #116]
    ldr r3, [r7, #68]
    eors    r3, r2
    str r3, [r7, #116]
    ldr r2, [r7, #112]
    ldr r3, [r7, #64]
    eors    r3, r2
    str r3, [r7, #112]
    ldr r2, [r7, #108]
    ldr r3, [r7, #60]
    eors    r3, r2
    str r3, [r7, #108]
    ldr r2, [r7, #104]
    ldr r3, [r7, #56]
    eors r3, r2
    str r3, [r7, #104]
    ldr r2, [r7, #100]
    ldr r3, [r7, #52]
    eors    r3, r2
    str r3, [r7, #100]
    ldr r2, [r7, #96]
    ldr r3, [r7, #48]
    eors    r3, r2
    str r3, [r7, #96]
    ldr r2, [r7, #92]
    ldr r3, [r7, #44]
    eors    r3, r2
    str r3, [r7, #92]
    ldr r2, [r7, #88]
    ldr r3, [r7, #40]
    eors    r3, r2
    str r3, [r7, #88]
    ldr r2, [r7, #84]
    ldr r3, [r7, #36]
    eors    r3, r2
    str r3, [r7, #84]
    ldr r2, [r7, #80]
    ldr r3, [r7, #32]
    eors    r3, r2
    str r3, [r7, #80]
    ldr r2, [r7, #76]
    ldr r3, [r7, #28]
    eors    r3, r2
    str r3, [r7, #76]
    ldr r2, [r7, #72]
    ldr r3, [r7, #24]
    eors    r3, r2
    str r3, [r7, #72]
bx lr
.endfunc