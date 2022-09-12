	.cpu arm7tdmi
	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"xor.c"
	.text
	.global	__aeabi_lmul
	.global	__aeabi_uldivmod
	.global	__aeabi_ldivmod
	.align	1
	.global	CountBits
	.syntax unified
	.code	16
	.thumb_func
	.type	CountBits, %function
CountBits:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r3, #0
	@ sp needed
	ldr	r2, .L2
	asrs	r1, r0, #31
	bl	__aeabi_lmul
	ldr	r3, .L2+4
	ands	r0, r3
	movs	r3, #1
	movs	r2, #15
	ands	r1, r3
	movs	r3, #0
	bl	__aeabi_uldivmod
	lsls	r0, r2, #24
	lsrs	r0, r0, #24
	pop	{r4}
	pop	{r1}
	bx	r1
.L3:
	.align	2
.L2:
	.word	134480385
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
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	movs	r5, #0
	movs	r6, #0
	ldr	r3, .L8
	ldr	r4, .L8+4
	ldr	r7, .L8+8
	str	r3, [sp, #4]
.L7:
	movs	r0, r4
	movs	r1, #1
	movs	r2, #15
	movs	r3, #0
	ands	r0, r7
	ands	r1, r5
	bl	__aeabi_uldivmod
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	cmp	r2, #3
	bls	.L5
	ldr	r3, [sp, #4]
	strb	r4, [r3, r6]
	adds	r6, r6, #1
.L5:
	movs	r3, #0
	ldr	r2, .L8+4
	adds	r4, r4, r2
	adcs	r5, r5, r3
	ldr	r3, .L8+12
	cmp	r3, r4
	bne	.L7
	cmp	r5, #8
	bne	.L7
	ldr	r3, .L8+16
	@ sp needed
	str	r6, [r3]
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L9:
	.align	2
.L8:
	.word	xorValues
	.word	134480385
	.word	286331153
	.word	67240192
	.word	.LANCHOR0
	.size	genXorValues, .-genXorValues
	.align	1
	.global	xorText
	.syntax unified
	.code	16
	.thumb_func
	.type	xorText, %function
xorText:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	movs	r2, #128
	ldr	r5, .L14
	lsls	r2, r2, #1
	movs	r4, r0
	movs	r1, #0
	movs	r0, r5
	bl	memset
	ldr	r3, .L14+4
	ldr	r2, [r3, #4]
	ldr	r6, [r3]
	movs	r3, #0
	str	r2, [sp, #4]
	movs	r2, r3
	ldr	r7, .L14+8
.L11:
	ldr	r1, [sp, #4]
	cmp	r1, r3
	bgt	.L13
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L13:
	ldrb	r0, [r4, r3]
	adds	r1, r2, #1
	ldrb	r2, [r7, r2]
	eors	r2, r0
	strb	r2, [r5, r3]
	cmp	r6, r1
	bne	.L12
	movs	r1, #0
.L12:
	movs	r2, r1
	adds	r3, r3, #1
	b	.L11
.L15:
	.align	2
.L14:
	.word	hiddenValues
	.word	.LANCHOR0
	.word	xorValues
	.size	xorText, .-xorText
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC5:
	.ascii	"This is the message to hide\000"
.LC9:
	.ascii	"%3d %3d\012\000"
	.section	.text.startup,"ax",%progbits
	.align	1
	.global	main
	.syntax unified
	.code	16
	.thumb_func
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L19
	movs	r0, r5
	bl	strlen
	ldr	r6, .L19+4
	str	r0, [r6, #4]
	bl	genXorValues
	movs	r0, r5
	bl	xorText
	movs	r4, #0
.L17:
	ldr	r3, [r6, #4]
	cmp	r3, r4
	bgt	.L18
	@ sp needed
	movs	r0, #0
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L18:
	ldr	r3, .L19+8
	ldrb	r1, [r5, r4]
	ldrb	r2, [r3, r4]
	ldr	r0, .L19+12
	bl	printf
	adds	r4, r4, #1
	b	.L17
.L20:
	.align	2
.L19:
	.word	.LC5
	.word	.LANCHOR0
	.word	hiddenValues
	.word	.LC9
	.size	main, .-main
	.global	numChars
	.global	numValues
	.global	hiddenValues
	.global	xorValues
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	numValues, %object
	.size	numValues, 4
numValues:
	.space	4
	.type	numChars, %object
	.size	numChars, 4
numChars:
	.space	4
	.type	hiddenValues, %object
	.size	hiddenValues, 256
hiddenValues:
	.space	256
	.type	xorValues, %object
	.size	xorValues, 256
xorValues:
	.space	256
	.ident	"GCC: (Arm GNU Toolchain 11.3.Rel1) 11.3.1 20220712"
