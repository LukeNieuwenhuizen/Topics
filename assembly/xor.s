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
	.file	"xor.c"
	.text
	.global	xorValues
	.bss
	.align	2
	.type	xorValues, %object
	.size	xorValues, 256
xorValues:
	.space	256
	.global	hiddenValues
	.align	2
	.type	hiddenValues, %object
	.size	hiddenValues, 256
hiddenValues:
	.space	256
	.global	numValues
	.align	2
	.type	numValues, %object
	.size	numValues, 4
numValues:
	.space	4
	.global	numChars
	.align	2
	.type	numChars, %object
	.size	numChars, 4
numChars:
	.space	4
	.global	__aeabi_uldivmod
	.text
	.align	1
	.global	CountBits
	.syntax unified
	.code	16
	.thumb_func
	.type	CountBits, %function
CountBits:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	str	r3, [r7, #8]
	asrs	r3, r3, #31
	str	r3, [r7, #12]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	lsrs	r1, r2, #23
	lsls	r0, r3, #9
	str	r0, [r7, #20]
	ldr	r0, [r7, #20]
	orrs	r0, r1
	str	r0, [r7, #20]
	lsls	r3, r2, #9
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	adds	r2, r2, r0
	adcs	r3, r3, r1
	lsrs	r1, r2, #14
	lsls	r5, r3, #18
	orrs	r5, r1
	lsls	r4, r2, #18
	adds	r2, r2, r4
	adcs	r3, r3, r5
	ldr	r1, .L3
	ands	r1, r2
	str	r1, [r7]
	movs	r1, #1
	ands	r3, r1
	str	r3, [r7, #4]
	movs	r2, #15
	movs	r3, #0
	ldr	r0, [r7]
	ldr	r1, [r7, #4]
	bl	__aeabi_uldivmod
	lsls	r3, r2, #24
	lsrs	r3, r3, #24
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r7}
	pop	{r1}
	bx	r1
.L4:
	.align	2
.L3:
	.word	286331153
	.size	CountBits, .-CountBits
	.align	1
	.global	genXorValues
	.syntax unified
	.code	16
	.thumb_func
	.type	genXorValues, %function
genXorValues:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r3, #0
	str	r3, [r7, #4]
	movs	r3, #0
	str	r3, [r7]
	b	.L6
.L8:
	ldr	r3, [r7]
	movs	r0, r3
	bl	CountBits
	movs	r3, r0
	cmp	r3, #3
	bls	.L7
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldr	r2, [r7]
	lsls	r2, r2, #24
	lsrs	r1, r2, #24
	ldr	r2, .L9
	strb	r1, [r2, r3]
.L7:
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
.L6:
	ldr	r3, [r7]
	cmp	r3, #255
	ble	.L8
	ldr	r3, .L9+4
	ldr	r2, [r7, #4]
	str	r2, [r3]
	nop
	mov	sp, r7
	add	sp, sp, #8
	@ sp needed
	pop	{r7}
	pop	{r0}
	bx	r0
.L10:
	.align	2
.L9:
	.word	xorValues
	.word	numValues
	.size	genXorValues, .-genXorValues
	.align	1
	.global	xorText
	.syntax unified
	.code	16
	.thumb_func
	.type	xorText, %function
xorText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #128
	lsls	r2, r3, #1
	ldr	r3, .L15
	movs	r1, #0
	movs	r0, r3
	bl	memset
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L12
.L14:
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	adds	r3, r2, r3
	ldrb	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r1, r3, #1
	str	r1, [r7, #12]
	ldr	r1, .L15+4
	ldrb	r3, [r1, r3]
	eors	r3, r2
	lsls	r3, r3, #24
	lsrs	r1, r3, #24
	ldr	r2, .L15
	ldr	r3, [r7, #8]
	adds	r3, r2, r3
	adds	r2, r1, #0
	strb	r2, [r3]
	ldr	r3, .L15+8
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	cmp	r2, r3
	bne	.L13
	movs	r3, #0
	str	r3, [r7, #12]
.L13:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L12:
	ldr	r3, .L15+12
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	cmp	r2, r3
	blt	.L14
	nop
	nop
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7}
	pop	{r0}
	bx	r0
.L16:
	.align	2
.L15:
	.word	hiddenValues
	.word	xorValues
	.word	numValues
	.word	numChars
	.size	xorText, .-xorText
	.section	.rodata
	.align	2
.LC6:
	.ascii	"This is the message to hide\000"
	.align	2
.LC10:
	.ascii	"%3d %3d\012\000"
	.text
	.align	1
	.global	main
	.syntax unified
	.code	16
	.thumb_func
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L21
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	strlen
	movs	r3, r0
	movs	r2, r3
	ldr	r3, .L21+4
	str	r2, [r3]
	bl	genXorValues
	ldr	r3, [r7, #8]
	movs	r0, r3
	bl	xorText
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L18
.L19:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	adds	r3, r2, r3
	ldrb	r3, [r3]
	movs	r1, r3
	ldr	r2, .L21+8
	ldr	r3, [r7, #12]
	adds	r3, r2, r3
	ldrb	r3, [r3]
	movs	r2, r3
	ldr	r3, .L21+12
	movs	r0, r3
	bl	printf
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L18:
	ldr	r3, .L21+4
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	cmp	r2, r3
	blt	.L19
	movs	r3, #0
	movs	r0, r3
	mov	sp, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r7}
	pop	{r1}
	bx	r1
.L22:
	.align	2
.L21:
	.word	.LC6
	.word	numChars
	.word	hiddenValues
	.word	.LC10
	.size	main, .-main
	.ident	"GCC: (Arm GNU Toolchain 11.3.Rel1) 11.3.1 20220712"
