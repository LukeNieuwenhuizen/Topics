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