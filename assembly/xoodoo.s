	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"xoodoo.c"
	.text
	.global	XoodooMask
	.bss
	.align	2
	.type	XoodooMask, %object
	.size	XoodooMask, 48
XoodooMask:
	.space	48
	.text
	.align	1
	.global	starttrigger
	.syntax unified
	.code	16
	.thumb_func
	.type	starttrigger, %function
starttrigger:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	pop	{r0}
	bx	r0
	.size	starttrigger, .-starttrigger
	.align	1
	.global	endtrigger
	.syntax unified
	.code	16
	.thumb_func
	.type	endtrigger, %function
endtrigger:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	add	r7, sp, #0
	nop
	mov	sp, r7
	@ sp needed
	pop	{r7}
	pop	{r0}
	bx	r0
	.size	endtrigger, .-endtrigger
	.align	1
	.global	randbyte
	.syntax unified
	.code	16
	.thumb_func
	.type	randbyte, %function
randbyte:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7}
	pop	{r0}
	bx	r0
	.size	randbyte, .-randbyte
	.align	1
	.global	Xoodoo_Initialize
	.syntax unified
	.code	16
	.thumb_func
	.type	Xoodoo_Initialize, %function
Xoodoo_Initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #48
	movs	r1, #0
	movs	r0, r3
	bl	memset
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7}
	pop	{r0}
	bx	r0
	.size	Xoodoo_Initialize, .-Xoodoo_Initialize
	.align	1
	.global	Xoodoo_Initialize_Masks0
	.syntax unified
	.code	16
	.thumb_func
	.type	Xoodoo_Initialize_Masks0, %function
Xoodoo_Initialize_Masks0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	movs	r2, #0
	str	r2, [r3]
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7}
	pop	{r0}
	bx	r0
	.size	Xoodoo_Initialize_Masks0, .-Xoodoo_Initialize_Masks0
	.align	1
	.global	Xoodoo_Initialize_Masks
	.syntax unified
	.code	16
	.thumb_func
	.type	Xoodoo_Initialize_Masks, %function
Xoodoo_Initialize_Masks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L7
.L8:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	movs	r0, r3
	bl	randbyte
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L7:
	ldr	r3, [r7, #12]
	cmp	r3, #47
	ble	.L8
	nop
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7}
	pop	{r0}
	bx	r0
	.size	Xoodoo_Initialize_Masks, .-Xoodoo_Initialize_Masks
	.align	1
	.global	Xoodoo_AddBytes
	.syntax unified
	.code	16
	.thumb_func
	.type	Xoodoo_AddBytes, %function
Xoodoo_AddBytes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #48
	bne	.L10
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	eors	r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	ldr	r1, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #8
	ldr	r1, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #8
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #12
	ldr	r1, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #12
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #16
	ldr	r1, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #16
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #16
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #20
	ldr	r1, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #20
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #20
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #24
	ldr	r1, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #24
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #24
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #28
	ldr	r1, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #28
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #28
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #32
	ldr	r1, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #32
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #32
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #36
	ldr	r1, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #36
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #36
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #40
	ldr	r1, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #40
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #40
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #44
	ldr	r1, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #44
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #44
	eors	r2, r1
	str	r2, [r3]
	b	.L16
.L10:
	ldr	r3, [r7]
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	movs	r2, #3
	ands	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #8]
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	str	r3, [r7, #44]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	adds	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L14
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L14
	ldr	r3, [r7, #32]
	movs	r2, #4
	subs	r3, r2, r3
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L13
	ldr	r3, [r7, #52]
	str	r3, [r7, #40]
.L13:
	movs	r3, #20
	adds	r2, r7, r3
	ldr	r3, [r7, #32]
	adds	r3, r2, r3
	ldr	r2, [r7, #40]
	ldr	r1, [r7, #48]
	movs	r0, r3
	bl	memcpy
	ldr	r3, [r7, #44]
	adds	r2, r3, #4
	str	r2, [r7, #44]
	ldr	r1, [r3]
	ldr	r2, [r7, #20]
	eors	r2, r1
	str	r2, [r3]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	str	r3, [r7, #52]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #40]
	adds	r3, r2, r3
	str	r3, [r7, #48]
	b	.L14
.L15:
	ldr	r3, [r7, #44]
	adds	r2, r3, #4
	str	r2, [r7, #44]
	ldr	r1, [r3]
	ldr	r2, [r7, #48]
	ldr	r2, [r2]
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #52]
	subs	r3, r3, #4
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	adds	r3, r3, #4
	str	r3, [r7, #48]
.L14:
	ldr	r3, [r7, #52]
	cmp	r3, #3
	bhi	.L15
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L16
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r2, [r7, #52]
	ldr	r1, [r7, #48]
	movs	r3, #16
	adds	r3, r7, r3
	movs	r0, r3
	bl	memcpy
	ldr	r3, [r7, #44]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	eors	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3]
.L16:
	nop
	mov	sp, r7
	add	sp, sp, #56
	@ sp needed
	pop	{r7}
	pop	{r0}
	bx	r0
	.size	Xoodoo_AddBytes, .-Xoodoo_AddBytes
	.align	1
	.global	Xoodoo_OverwriteBytes
	.syntax unified
	.code	16
	.thumb_func
	.type	Xoodoo_OverwriteBytes, %function
Xoodoo_OverwriteBytes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #48
	bne	.L18
	ldr	r3, [r7, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #4]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #8
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #8]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #12
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #12]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #16
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #16]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #20
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #20]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #24
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #24]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #28
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #28]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #32
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #32]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #36
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #36]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #40
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #40]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #44
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #44]
	str	r2, [r3]
	b	.L20
.L18:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r2, r3
	ldr	r2, [r7]
	ldr	r1, [r7, #8]
	movs	r0, r3
	bl	memcpy
.L20:
	nop
	mov	sp, r7
	add	sp, sp, #24
	@ sp needed
	pop	{r7}
	pop	{r0}
	bx	r0
	.size	Xoodoo_OverwriteBytes, .-Xoodoo_OverwriteBytes
	.align	1
	.global	Xoodoo_OverwriteWithZeroes
	.syntax unified
	.code	16
	.thumb_func
	.type	Xoodoo_OverwriteWithZeroes, %function
Xoodoo_OverwriteWithZeroes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	movs	r1, #0
	movs	r0, r3
	bl	memset
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7}
	pop	{r0}
	bx	r0
	.size	Xoodoo_OverwriteWithZeroes, .-Xoodoo_OverwriteWithZeroes
	.align	1
	.global	Xoodoo_ExtractBytes
	.syntax unified
	.code	16
	.thumb_func
	.type	Xoodoo_ExtractBytes, %function
Xoodoo_ExtractBytes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r1, r2, r3
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	memcpy
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7}
	pop	{r0}
	bx	r0
	.size	Xoodoo_ExtractBytes, .-Xoodoo_ExtractBytes
	.align	1
	.global	Xoodoo_ExtractAndAddBytes
	.syntax unified
	.code	16
	.thumb_func
	.type	Xoodoo_ExtractAndAddBytes, %function
Xoodoo_ExtractAndAddBytes:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #72]
	cmp	r3, #48
	bne	.L24
	ldr	r3, [r7, #12]
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	eors	r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #4
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #8
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #8
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #12
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #12
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #16
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #16
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #16
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #20
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #20
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #20
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #24
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #24
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #24
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #28
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #28
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #28
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #32
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #32
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #32
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #36
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #36
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #36
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #40
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #40
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #40
	eors	r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #44
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #44
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	adds	r3, r3, #44
	eors	r2, r1
	str	r2, [r3]
	b	.L32
.L24:
	ldr	r3, [r7, #72]
	str	r3, [r7, #60]
	ldr	r3, [r7]
	lsrs	r3, r3, #2
	str	r3, [r7, #32]
	ldr	r3, [r7]
	movs	r2, #3
	ands	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	str	r3, [r7, #48]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #2
	ldr	r2, [r7, #48]
	adds	r3, r2, r3
	str	r3, [r7, #48]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L29
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L29
	ldr	r3, [r7, #28]
	movs	r2, #4
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	adds	r2, r3, #4
	str	r2, [r7, #48]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	lsrs	r2, r2, r3
	movs	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bls	.L27
	ldr	r3, [r7, #60]
	str	r3, [r7, #44]
.L27:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #60]
.L28:
	ldr	r3, [r7, #56]
	adds	r2, r3, #1
	str	r2, [r7, #56]
	ldrb	r1, [r3]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #52]
	adds	r0, r3, #1
	str	r0, [r7, #52]
	eors	r2, r1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	strb	r2, [r3]
	ldr	r3, [r7, #40]
	lsrs	r3, r3, #8
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	subs	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L28
	b	.L29
.L30:
	ldr	r3, [r7, #56]
	ldr	r2, [r3]
	ldr	r3, [r7, #48]
	adds	r1, r3, #4
	str	r1, [r7, #48]
	ldr	r3, [r3]
	eors	r2, r3
	ldr	r3, [r7, #52]
	str	r2, [r3]
	ldr	r3, [r7, #60]
	subs	r3, r3, #4
	str	r3, [r7, #60]
	ldr	r3, [r7, #56]
	adds	r3, r3, #4
	str	r3, [r7, #56]
	ldr	r3, [r7, #52]
	adds	r3, r3, #4
	str	r3, [r7, #52]
.L29:
	ldr	r3, [r7, #60]
	cmp	r3, #3
	bhi	.L30
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L32
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	str	r3, [r7, #36]
.L31:
	ldr	r3, [r7, #56]
	adds	r2, r3, #1
	str	r2, [r7, #56]
	ldrb	r1, [r3]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #24
	lsrs	r2, r3, #24
	ldr	r3, [r7, #52]
	adds	r0, r3, #1
	str	r0, [r7, #52]
	eors	r2, r1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	strb	r2, [r3]
	ldr	r3, [r7, #36]
	lsrs	r3, r3, #8
	str	r3, [r7, #36]
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L31
.L32:
	nop
	mov	sp, r7
	add	sp, sp, #64
	@ sp needed
	pop	{r7}
	pop	{r0}
	bx	r0
	.size	Xoodoo_ExtractAndAddBytes, .-Xoodoo_ExtractAndAddBytes
	.section	.rodata
	.align	2
	.type	RC, %object
	.size	RC, 48
RC:
	.word	88
	.word	56
	.word	960
	.word	208
	.word	288
	.word	20
	.word	96
	.word	44
	.word	896
	.word	240
	.word	416
	.word	18
	.text
	.align	1
	.global	Xoodoo_Permute_Nrounds
	.syntax unified
	.code	16
	.thumb_func
	.type	Xoodoo_Permute_Nrounds, %function
Xoodoo_Permute_Nrounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #140
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	movs	r2, #132
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	movs	r2, #128
	adds	r2, r7, r2
	str	r3, [r2]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #124]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #120]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #116]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	str	r3, [r7, #112]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	str	r3, [r7, #108]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #104]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	str	r3, [r7, #100]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	str	r3, [r7, #96]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	str	r3, [r7, #92]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	str	r3, [r7, #88]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #80]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #76]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #72]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #68]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	movs	r2, #12
	subs	r3, r2, r3
	str	r3, [r7, #36]
	b	.L34
.L35:
	ldr	r2, [r7, #120]
	ldr	r3, [r7, #104]
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #56]
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #28]
	movs	r0, #132
	adds	r3, r7, r0
	ldr	r2, [r3]
	ldr	r3, [r7, #116]
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #32]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #32]
	adds	r3, r7, r0
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	eors	r3, r2
	adds	r2, r7, r0
	str	r3, [r2]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #100]
	movs	r4, #128
	adds	r3, r7, r4
	ldr	r2, [r3]
	ldr	r3, [r7, #112]
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #24]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #24]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #24]
	adds	r3, r7, r4
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	eors	r3, r2
	adds	r2, r7, r4
	str	r3, [r2]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #108]
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #32]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #124]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #24]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #24]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #120]
	ldr	r3, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #120]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #56]
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #68]
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #28]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #64]
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #60]
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #28]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #100]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #104]
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	str	r3, [r7, #104]
	ldr	r3, [r7, #112]
	str	r3, [r7, #108]
	ldr	r3, [r7, #116]
	str	r3, [r7, #112]
	ldr	r3, [r7, #32]
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #56]
	str	r3, [r7, #28]
	ldr	r3, [r7, #60]
	str	r3, [r7, #56]
	ldr	r3, [r7, #64]
	str	r3, [r7, #60]
	ldr	r3, [r7, #68]
	str	r3, [r7, #64]
	ldr	r3, [r7, #28]
	str	r3, [r7, #68]
	ldr	r3, .L36
	ldr	r2, [r7, #36]
	lsls	r2, r2, #2
	ldr	r3, [r2, r3]
	adds	r2, r7, r0
	ldr	r2, [r2]
	eors	r3, r2
	adds	r2, r7, r0
	str	r3, [r2]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	adds	r2, r7, r0
	ldr	r2, [r2]
	eors	r3, r2
	adds	r2, r7, r0
	str	r3, [r2]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	adds	r2, r7, r4
	ldr	r2, [r2]
	eors	r3, r2
	adds	r2, r7, r4
	str	r3, [r2]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #124]
	eors	r3, r2
	str	r3, [r7, #124]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #120]
	eors	r3, r2
	str	r3, [r7, #120]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	adds	r2, r7, r0
	ldr	r2, [r2]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #52]
	adds	r1, r7, r0
	ldr	r1, [r1]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	adds	r2, r7, r4
	ldr	r2, [r2]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #48]
	adds	r1, r7, r4
	ldr	r1, [r1]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #124]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #124]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #120]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #120]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	adds	r3, r7, r0
	ldr	r3, [r3]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	adds	r3, r7, r0
	ldr	r3, [r3]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	adds	r3, r7, r4
	ldr	r3, [r3]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	adds	r3, r7, r4
	ldr	r3, [r3]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #124]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #124]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #120]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #120]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #112]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #108]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #104]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #88]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #96]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #32]
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #100]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #32]
	str	r3, [r7, #100]
	ldr	r3, [r7, #68]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #64]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #56]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #40]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #48]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #28]
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #52]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #28]
	str	r3, [r7, #52]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L34:
	ldr	r3, [r7, #36]
	cmp	r3, #11
	bhi	.LCB1593
	b	.L35	@long jump
.LCB1593:
	ldr	r3, [r7, #12]
	movs	r2, #132
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	movs	r2, #128
	adds	r2, r7, r2
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldr	r2, [r7, #124]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	ldr	r2, [r7, #120]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	ldr	r2, [r7, #116]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #20
	ldr	r2, [r7, #112]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	ldr	r2, [r7, #108]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	ldr	r2, [r7, #104]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #32
	ldr	r2, [r7, #100]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #36
	ldr	r2, [r7, #96]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #40
	ldr	r2, [r7, #92]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	ldr	r2, [r7, #88]
	str	r2, [r3]
	nop
	mov	sp, r7
	add	sp, sp, #140
	@ sp needed
	pop	{r4, r7}
	pop	{r0}
	bx	r0
.L37:
	.align	2
.L36:
	.word	RC
	.size	Xoodoo_Permute_Nrounds, .-Xoodoo_Permute_Nrounds
	.align	1
	.global	Xoodoo_Permute_6rounds
	.syntax unified
	.code	16
	.thumb_func
	.type	Xoodoo_Permute_6rounds, %function
Xoodoo_Permute_6rounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #120
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #116]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #112]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #108]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #104]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #100]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #96]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #92]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #88]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	str	r3, [r7, #80]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #76]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	str	r3, [r7, #72]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #68]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	str	r3, [r7, #64]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	str	r3, [r7, #60]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	str	r3, [r7, #56]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	str	r3, [r7, #48]
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	str	r3, [r7, #44]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	str	r3, [r7, #40]
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	str	r3, [r7, #32]
	ldr	r3, [r7]
	ldr	r3, [r3, #40]
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r3, [r3, #44]
	str	r3, [r7, #24]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #96
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #44
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #224
	lsls	r2, r2, #2
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #240
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #208
	lsls	r2, r2, #1
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #18
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #116]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r2, [r7, #112]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r2, [r7, #108]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	ldr	r2, [r7, #104]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	ldr	r2, [r7, #100]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #20
	ldr	r2, [r7, #96]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	ldr	r2, [r7, #92]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	ldr	r2, [r7, #88]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	ldr	r2, [r7, #84]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #36
	ldr	r2, [r7, #80]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #40
	ldr	r2, [r7, #76]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	ldr	r2, [r7, #72]
	str	r2, [r3]
	nop
	mov	sp, r7
	add	sp, sp, #120
	@ sp needed
	pop	{r7}
	pop	{r0}
	bx	r0
	.size	Xoodoo_Permute_6rounds, .-Xoodoo_Permute_6rounds
	.align	1
	.global	Xoodoo_Permute_12rounds
	.syntax unified
	.code	16
	.thumb_func
	.type	Xoodoo_Permute_12rounds, %function
Xoodoo_Permute_12rounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #120
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #116]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #112]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #108]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #104]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #100]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #96]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #92]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #88]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	str	r3, [r7, #80]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #76]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	str	r3, [r7, #72]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #68]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	str	r3, [r7, #64]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	str	r3, [r7, #60]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	str	r3, [r7, #56]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	str	r3, [r7, #48]
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	str	r3, [r7, #44]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	str	r3, [r7, #40]
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	str	r3, [r7, #32]
	ldr	r3, [r7]
	ldr	r3, [r3, #40]
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r3, [r3, #44]
	str	r3, [r7, #24]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #72]
	bl	starttrigger
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #88
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	bl	endtrigger
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #56
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #240
	lsls	r2, r2, #2
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #208
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #144
	lsls	r2, r2, #1
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #20
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #96
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #44
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #224
	lsls	r2, r2, #2
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #240
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #208
	lsls	r2, r2, #1
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #88]
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #100]
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #96]
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #92]
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #20]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #12]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #12]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #16]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	movs	r2, #27
	rors	r3, r3, r2
	movs	r2, r3
	ldr	r3, [r7, #8]
	movs	r1, #18
	rors	r3, r3, r1
	eors	r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #84]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #92]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	str	r3, [r7, #92]
	ldr	r3, [r7, #100]
	str	r3, [r7, #96]
	ldr	r3, [r7, #20]
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	movs	r2, #21
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #116]
	movs	r2, #18
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #100]
	mvns	r3, r3
	ldr	r2, [r7, #84]
	ands	r2, r3
	ldr	r3, [r7, #100]
	ldr	r1, [r7, #36]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #116]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #52]
	mvns	r3, r3
	ldr	r2, [r7, #36]
	ands	r2, r3
	ldr	r3, [r7, #52]
	ldr	r1, [r7, #84]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #96]
	mvns	r3, r3
	ldr	r2, [r7, #80]
	ands	r2, r3
	ldr	r3, [r7, #96]
	ldr	r1, [r7, #32]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #112]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	mvns	r3, r3
	ldr	r2, [r7, #32]
	ands	r2, r3
	ldr	r3, [r7, #48]
	ldr	r1, [r7, #80]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #92]
	mvns	r3, r3
	ldr	r2, [r7, #76]
	ands	r2, r3
	ldr	r3, [r7, #92]
	ldr	r1, [r7, #28]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #108]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #44]
	mvns	r3, r3
	ldr	r2, [r7, #28]
	ands	r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r7, #76]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	mvns	r3, r3
	ldr	r2, [r7, #72]
	ands	r2, r3
	ldr	r3, [r7, #88]
	ldr	r1, [r7, #24]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #104]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #40]
	mvns	r3, r3
	ldr	r2, [r7, #24]
	ands	r2, r3
	ldr	r3, [r7, #40]
	ldr	r1, [r7, #72]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #84]
	mvns	r3, r3
	ldr	r2, [r7, #116]
	ands	r2, r3
	ldr	r3, [r7, #84]
	ldr	r1, [r7, #68]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #100]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #36]
	mvns	r3, r3
	ldr	r2, [r7, #68]
	ands	r2, r3
	ldr	r3, [r7, #36]
	ldr	r1, [r7, #116]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	mvns	r3, r3
	ldr	r2, [r7, #112]
	ands	r2, r3
	ldr	r3, [r7, #80]
	ldr	r1, [r7, #64]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #96]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #32]
	mvns	r3, r3
	ldr	r2, [r7, #64]
	ands	r2, r3
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #112]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	mvns	r3, r3
	ldr	r2, [r7, #108]
	ands	r2, r3
	ldr	r3, [r7, #76]
	ldr	r1, [r7, #60]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #92]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ldr	r2, [r7, #60]
	ands	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #108]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	mvns	r3, r3
	ldr	r2, [r7, #104]
	ands	r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r7, #56]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #88]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #24]
	mvns	r3, r3
	ldr	r2, [r7, #56]
	ands	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #104]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #116]
	mvns	r3, r3
	ldr	r2, [r7, #100]
	ands	r2, r3
	ldr	r3, [r7, #116]
	ldr	r1, [r7, #52]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #84]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r3, [r7, #68]
	mvns	r3, r3
	ldr	r2, [r7, #52]
	ands	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #100]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #112]
	mvns	r3, r3
	ldr	r2, [r7, #96]
	ands	r2, r3
	ldr	r3, [r7, #112]
	ldr	r1, [r7, #48]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #80]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	mvns	r3, r3
	ldr	r2, [r7, #48]
	ands	r2, r3
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #96]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #108]
	mvns	r3, r3
	ldr	r2, [r7, #92]
	ands	r2, r3
	ldr	r3, [r7, #108]
	ldr	r1, [r7, #44]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #76]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	mvns	r3, r3
	ldr	r2, [r7, #44]
	ands	r2, r3
	ldr	r3, [r7, #60]
	ldr	r1, [r7, #92]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #104]
	mvns	r3, r3
	ldr	r2, [r7, #88]
	ands	r2, r3
	ldr	r3, [r7, #104]
	ldr	r1, [r7, #40]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #72]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #56]
	mvns	r3, r3
	ldr	r2, [r7, #40]
	ands	r2, r3
	ldr	r3, [r7, #56]
	ldr	r1, [r7, #88]
	ands	r3, r1
	eors	r3, r2
	ldr	r2, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #100]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #72]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #80]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #20]
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #84]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #52]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #44]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	movs	r2, #31
	rors	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	movs	r2, #24
	rors	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #68]
	eors	r3, r2
	str	r3, [r7, #116]
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #64]
	eors	r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #60]
	eors	r3, r2
	str	r3, [r7, #108]
	ldr	r2, [r7, #104]
	ldr	r3, [r7, #56]
	eors	r3, r2
	str	r3, [r7, #104]
	ldr	r2, [r7, #100]
	ldr	r3, [r7, #52]
	eors	r3, r2
	str	r3, [r7, #100]
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #48]
	eors	r3, r2
	str	r3, [r7, #96]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #44]
	eors	r3, r2
	str	r3, [r7, #92]
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #40]
	eors	r3, r2
	str	r3, [r7, #88]
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #36]
	eors	r3, r2
	str	r3, [r7, #84]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #32]
	eors	r3, r2
	str	r3, [r7, #80]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #28]
	eors	r3, r2
	str	r3, [r7, #76]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #24]
	eors	r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #116]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r2, [r7, #112]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r2, [r7, #108]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	ldr	r2, [r7, #104]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	ldr	r2, [r7, #100]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #20
	ldr	r2, [r7, #96]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	ldr	r2, [r7, #92]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	ldr	r2, [r7, #88]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	ldr	r2, [r7, #84]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #36
	ldr	r2, [r7, #80]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #40
	ldr	r2, [r7, #76]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	ldr	r2, [r7, #72]
	str	r2, [r3]
	nop
	mov	sp, r7
	add	sp, sp, #120
	@ sp needed
	pop	{r7}
	pop	{r0}
	bx	r0
	.size	Xoodoo_Permute_12rounds, .-Xoodoo_Permute_12rounds
	.ident	"GCC: (Arm GNU Toolchain 11.3.Rel1) 11.3.1 20220712"
