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
	.file	"teatest.c"
	.text
	.align	1
	.global	encrypt
	.syntax unified
	.code	16
	.thumb_func
	.type	encrypt, %function
encrypt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	ldr	r3, [r1, #8]
	ldr	r7, [r1]
	ldr	r6, [r1, #4]
	str	r3, [sp]
	ldr	r3, [r1, #12]
	movs	r1, #0
	ldr	r4, [r0]
	ldr	r2, [r0, #4]
	str	r3, [sp, #4]
.L2:
	ldr	r3, .L4
	adds	r1, r1, r3
	lsls	r3, r2, #4
	adds	r3, r3, r7
	mov	ip, r3
	mov	r5, ip
	lsrs	r3, r2, #5
	adds	r3, r3, r6
	eors	r3, r5
	adds	r5, r1, r2
	eors	r3, r5
	adds	r4, r4, r3
	ldr	r5, [sp]
	lsls	r3, r4, #4
	adds	r3, r3, r5
	mov	ip, r3
	ldr	r5, [sp, #4]
	lsrs	r3, r4, #5
	adds	r3, r3, r5
	mov	r5, ip
	eors	r3, r5
	adds	r5, r1, r4
	eors	r3, r5
	adds	r2, r2, r3
	ldr	r3, .L4+4
	cmp	r1, r3
	bne	.L2
	str	r4, [r0]
	@ sp needed
	str	r2, [r0, #4]
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L5:
	.align	2
.L4:
	.word	-1640531527
	.word	-957401312
	.size	encrypt, .-encrypt
	.align	1
	.global	decrypt
	.syntax unified
	.code	16
	.thumb_func
	.type	decrypt, %function
decrypt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	ldr	r3, [r1]
	str	r3, [sp]
	ldr	r3, [r1, #4]
	ldr	r7, [r1, #8]
	ldr	r6, [r1, #12]
	ldr	r4, [r0]
	ldr	r2, [r0, #4]
	str	r3, [sp, #4]
	ldr	r1, .L9
.L7:
	lsls	r3, r4, #4
	adds	r3, r3, r7
	mov	ip, r3
	mov	r5, ip
	lsrs	r3, r4, #5
	adds	r3, r3, r6
	eors	r3, r5
	adds	r5, r4, r1
	eors	r3, r5
	subs	r2, r2, r3
	ldr	r5, [sp]
	lsls	r3, r2, #4
	adds	r3, r3, r5
	mov	ip, r3
	ldr	r5, [sp, #4]
	lsrs	r3, r2, #5
	adds	r3, r3, r5
	mov	r5, ip
	eors	r3, r5
	adds	r5, r2, r1
	eors	r3, r5
	subs	r4, r4, r3
	ldr	r3, .L9+4
	adds	r1, r1, r3
	cmp	r1, #0
	bne	.L7
	str	r4, [r0]
	@ sp needed
	str	r2, [r0, #4]
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L10:
	.align	2
.L9:
	.word	-957401312
	.word	1640531527
	.size	decrypt, .-decrypt
	.align	1
	.global	run_tea_test
	.syntax unified
	.code	16
	.thumb_func
	.type	run_tea_test, %function
run_tea_test:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L21
	sub	sp, sp, #36
	str	r3, [sp, #16]
	ldr	r3, .L21+4
	str	r3, [sp, #20]
	ldr	r3, .L21+8
	str	r3, [sp, #24]
	ldr	r3, .L21+12
	ldr	r0, .L21+16
	str	r3, [sp, #28]
	bl	hexstring
	ldr	r3, .L21+20
	ldr	r5, .L21+24
	movs	r6, r3
	movs	r4, r5
	movs	r7, #0
	str	r3, [sp, #4]
.L12:
	ldr	r3, [r6]
	str	r3, [sp, #8]
	ldr	r3, [r6, #4]
	add	r1, sp, #16
	add	r0, sp, #8
	str	r3, [sp, #12]
	bl	encrypt
	ldr	r3, [sp, #8]
	str	r3, [r4]
	ldr	r3, [sp, #12]
	str	r3, [r4, #4]
	movs	r3, #128
	adds	r7, r7, #2
	adds	r6, r6, #8
	adds	r4, r4, #8
	lsls	r3, r3, #2
	cmp	r7, r3
	bne	.L12
	movs	r4, #0
	str	r4, [sp]
.L16:
	ldr	r3, [r5]
	str	r3, [sp, #8]
	ldr	r3, [r5, #4]
	add	r1, sp, #16
	add	r0, sp, #8
	str	r3, [sp, #12]
	bl	decrypt
	ldr	r3, [sp, #4]
	ldr	r7, [sp, #8]
	ldr	r6, [r3]
	cmp	r7, r6
	beq	.L13
	ldr	r0, [sp]
	bl	hexstrings
	movs	r0, r7
	bl	hexstrings
	movs	r0, r6
	adds	r4, r4, #1
	bl	hexstring
.L13:
	ldr	r3, [sp, #4]
	ldr	r7, [sp, #12]
	ldr	r6, [r3, #4]
	cmp	r7, r6
	beq	.L14
	ldr	r0, [sp]
	bl	hexstrings
	movs	r0, r7
	bl	hexstrings
	movs	r0, r6
	adds	r4, r4, #1
	bl	hexstring
.L14:
	cmp	r4, #20
	bhi	.L15
	movs	r2, #128
	ldr	r3, [sp]
	adds	r3, r3, #2
	str	r3, [sp]
	ldr	r3, [sp, #4]
	adds	r3, r3, #8
	str	r3, [sp, #4]
	ldr	r3, [sp]
	adds	r5, r5, #8
	lsls	r2, r2, #2
	cmp	r3, r2
	bne	.L16
.L15:
	movs	r0, r4
	bl	hexstring
	cmp	r4, #0
	beq	.L17
	ldr	r0, .L21+28
	bl	hexstring
	movs	r0, #1
.L11:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L17:
	ldr	r0, .L21+16
	bl	hexstring
	movs	r0, r4
	b	.L11
.L22:
	.align	2
.L21:
	.word	286331153
	.word	572662306
	.word	858993459
	.word	1145324612
	.word	305419896
	.word	testdata
	.word	edata
	.word	-1160008295
	.size	run_tea_test, .-run_tea_test
	.global	edata
	.global	testdata
	.section	.rodata
	.align	2
	.type	testdata, %object
	.size	testdata, 2048
testdata:
	.word	1329799233
	.word	1128615502
	.word	1430473044
	.word	1096360020
	.word	1162169166
	.word	542001440
	.word	1196312907
	.word	1414676768
	.word	659707208
	.word	1329799251
	.word	223629909
	.word	1644825866
	.word	218762617
	.word	1380011274
	.word	1465131083
	.word	223234369
	.word	1632839690
	.word	1818588525
	.word	539905056
	.word	1835363395
	.word	695430757
	.word	168626701
	.word	168626701
	.word	1380977165
	.word	1128351301
	.word	218762565
	.word	1701336074
	.word	1735292192
	.word	1819569765
	.word	1634476133
	.word	1629516663
	.word	1663067246
	.word	1869902709
	.word	1948283757
	.word	1751348591
	.word	1965057125
	.word	544108400
	.word	1948282473
	.word	544434536
	.word	1701601652
	.word	1701994784
	.word	1768425997
	.word	1919906931
	.word	1818321769
	.word	1851858988
	.word	1752440932
	.word	1885675621
	.word	1685025641
	.word	1998615397
	.word	1751345512
	.word	1701994784
	.word	1702065440
	.word	1869881444
	.word	1819044128
	.word	1920234357
	.word	543519841
	.word	1835362420
	.word	1918962189
	.word	1818304613
	.word	1746956147
	.word	1869902697
	.word	1633905010
	.word	538979948
	.word	1763734601
	.word	1869488243
	.word	1919950964
	.word	1852142693
	.word	543450468
	.word	1952540788
	.word	1701344288
	.word	1814062451
	.word	544438113
	.word	224685665
	.word	1937072906
	.word	1936551796
	.word	1769497888
	.word	1684370547
	.word	544106784
	.word	1818717765
	.word	543452769
	.word	1948282473
	.word	1931502952
	.word	1752463465
	.word	1852138272
	.word	2037544308
	.word	1869488187
	.word	1953046572
	.word	544434464
	.word	2037149295
	.word	1919945229
	.word	1852142693
	.word	543450468
	.word	1952540788
	.word	1634625824
	.word	1668640115
	.word	1935745128
	.word	1701344288
	.word	2019893369
	.word	1702130537
	.word	1852383332
	.word	1701344288
	.word	1735279904
	.word	1752394092
	.word	1684955424
	.word	1752461088
	.word	168653413
	.word	1769367907
	.word	1635412332
	.word	1852795252
	.word	1718558835
	.word	1918985760
	.word	1952541728
	.word	1948283493
	.word	1936026985
	.word	1953046572
	.word	544434464
	.word	1701208435
	.word	544175136
	.word	1936617315
	.word	1919247465
	.word	1634235424
	.word	1953046644
	.word	225667360
	.word	544173578
	.word	1700948332
	.word	1886724204
	.word	1948282479
	.word	1931502952
	.word	1752463465
	.word	1852138272
	.word	2037544308
	.word	544175136
	.word	1886418291
	.word	543519599
	.word	1835362420
	.word	544175136
	.word	1702257000
	.word	1701143072
	.word	1852383342
	.word	1919945229
	.word	1769235297
	.word	1763730787
	.word	1752440942
	.word	1679848545
	.word	1629518177
	.word	779055980
	.word	1850679328
	.word	1936269413
	.word	1769304352
	.word	1780508020
	.word	1769239413
	.word	1684367718
	.word	544106784
	.word	1701211753
	.word	1852404338
	.word	1946815847
	.word	544498024
	.word	1952540791
	.word	1919252069
	.word	1701736224
	.word	543584032
	.word	1936025716
	.word	1634476133
	.word	1864397687
	.word	1969430642
	.word	1836020851
	.word	1635197043
	.word	1634476147
	.word	1852402531
	.word	1852383335
	.word	1634235424
	.word	1913261428
	.word	1953459557
	.word	1769218149
	.word	539780461
	.word	544437353
	.word	1667329136
	.word	1635197029
	.word	1868767347
	.word	1952804973
	.word	1819569765
	.word	1768300665
	.word	1684368492
	.word	544825888
	.word	1870078049
	.word	543519602
	.word	778399343
	.word	168626701
	.word	543516756
	.word	1936029041
	.word	1852795252
	.word	544432416
	.word	1998614388
	.word	1752458600
	.word	1948283493
	.word	1701995880
	.word	544434464
	.word	1751348595
	.word	1948279072
	.word	1735289192
	.word	544432416
	.word	1769367908
	.word	1914725742
	.word	1952999273
	.word	1718553101
	.word	1852402464
	.word	1763734375
	.word	1869488243
	.word	1702043764
	.word	1701606516
	.word	1852383332
	.word	1768453152
	.word	1868701811
	.word	539913071
	.word	544491808
	.word	544432503
	.word	1853189990
	.word	1869881444
	.word	1768169583
	.word	1667851878
	.word	779381877
	.word	1750338061
	.word	1948284001
	.word	1696621928
	.word	1969448312
	.word	1702259060
	.word	1634035744
	.word	1718558820
	.word	1847615776
	.word	1869182049
	.word	1752375406
	.word	1684829551
	.word	543515168
	.word	1701847137
	.word	1852797810
	.word	543584032
	.word	1952870252
	.word	1661603193
	.word	1634885992
	.word	1919251555
	.word	1684955424
	.word	1954047264
	.word	1919902066
	.word	1634625892
	.word	1629518194
	.word	1768712546
	.word	539785588
	.word	544432503
	.word	1768841581
	.word	1953719654
	.word	1684955424
	.word	1684957472
	.word	1970303849
	.word	1818386804
	.word	168639333
	.word	1952540788
	.word	1852796448
	.word	1969365093
	.word	1752440948
	.word	1698963557
	.word	544830569
	.word	1819635555
	.word	1702043748
	.word	1952671084
	.word	1634235424
	.word	1701322868
	.word	1965057121
	.word	1920099694
	.word	1818717801
	.word	1998597241
	.word	168653665
	.word	1869835361
	.word	1851878688
	.word	1936025193
	.word	1851859060
	.word	1852383332
	.word	1886611812
	.word	1650553973
	.word	540763500
	.word	1952540788
	.word	1701344288
	.word	1768244256
	.word	1864399220
	.word	1952999285
	.word	544175136
	.word	1701536109
	.word	1634235424
	.word	1930038644
	.word	1667591269
	.word	1852795252
	.word	1752440876
	.word	539782757
	.word	544432503
	.word	1701538156
	.word	1702062455
	.word	1851878688
	.word	1936025193
	.word	1851859060
	.word	1852383332
	.word	1886611812
	.word	1650553973
	.word	540763500
	.word	1936617315
	.word	1702195557
	.word	2037150830
	.word	1946815788
	.word	544498024
	.word	1679844680
	.word	544433519
	.word	1701536109
	.word	745826592
	.word	544432416
	.word	1767992419
	.word	744777069
	.word	1935767328
	.word	544104736
	.word	1986096757
	.word	1633970543
	.word	543517794
	.word	1969513828
	.word	1869182051
	.word	168636014
	.word	1701650505
	.word	539782753
	.word	1769238133
	.word	1752440940
	.word	1969299557
	.word	1919903860
	.word	543584032
	.word	1936287860
	.word	1869570592
	.word	1852121195
	.word	1853189987
	.word	1701995892
	.word	1752440932
	.word	1867522149
	.word	1684107373
	.word	745698671
	.word	1851853325
	.word	1632378980
	.word	1126201700
	.word	1819571041
	.word	1767992677
	.word	539780462
	.word	543452769
	.word	1701670771
	.word	1752461088
	.word	1696625253
	.word	1969448312
	.word	1702259060
	.word	1634035744
	.word	1864397668
	.word	1752440934
	.word	1797289057
	.word	996437609
	.word	1752435213
	.word	543519589
	.word	1701995895
	.word	1970234912
	.word	1931502702
	.word	1768169583
	.word	1667851878
	.word	544500853
	.word	1998614388
	.word	543912559
	.word	1869901417
	.word	1701344288
	.word	1751348000
	.word	744844645
	.word	1634235424
	.word	1953046644
	.word	1635191309
	.word	1969889395
	.word	1684367204
	.word	1952801312
	.word	544367988
	.word	1948282740
	.word	543517537
	.word	543516788
	.word	1701344367
	.word	1635000434
	.word	1763732323
	.word	1752440942
	.word	1646293865
	.word	543911791
	.word	1768453928
	.word	168650851
	.word	1953723757
	.word	543515168
	.word	1970500457
	.word	1948279909
	.word	544434536
	.word	1819042150
	.word	1629498409
	.word	1948279918
	.word	544105832
	.word	1763733351
	.word	544175214
	.word	1767993972
	.word	1735289198
	.word	1684955424
	.word	1952805664
	.word	224750708
	.word	1701344266
	.word	1702195488
	.word	1869182067
	.word	1852383342
	.word	1869504800
	.word	1919248500
	.word	1869570592
	.word	538979947
	.word	1763734601
	.word	1864379507
	.word	1868767334
	.word	1702064757
	.word	543236140
	.word	1852401780
	.word	1752637543
	.word	224945001
	.word	1735749386
	.word	1948284008
	.word	1700929647
	.word	1952805664
	.word	1684368500
	.word	1851858988
	.word	541663332
	.word	1847618913
	.word	1730180207
	.word	1735289199
	.word	544175136
	.word	1702257000
	.word	2037276960
	.word	1852401780
	.word	1634738279
	.word	1667855474
	.word	1918987381
	.word	1869875725
	.word	544171040
	.word	1954047342
	.word	1852405536
	.word	544367988
	.word	2004446817
	.word	221149537
	.word	1292504330
	.word	541807169
	.word	1229018964
	.word	218762574
	.word	1380009994
	.word	1380927060
	.word	1243622468
	.word	544828533
	.word	539767090
	.word	959985713
	.word	168626701
	.word	168626701
	.word	168626701
	.word	541133325
	.word	1313754947
	.word	1230259013
	.word	542397763
	.word	1263419737
	.word	1226851653
	.word	1229660238
	.word	1092634446
	.word	1430803538
	.word	542320466
	.word	1381322563
	.word	218762580
	.word	218762506
	.word	1091177738
	.word	1380931360
	.word	1179590724
	.word	1347962144
	.word	1095647564
	.word	1313818964
	.word	168626701
	.word	1998615625
	.word	1763734369
	.word	1633099886
	.word	1667856242
	.word	1631789163
	.word	1701606515
	.word	1634235424
	.word	541663348
	.word	1701667171
	.word	1919115552
	.word	544437103
	.word	543516788
	.word	1769108835
	.word	544437615
	.word	1634890867
	.word	1919248238
	.word	1752631821
	.word	1226861935
	.word	544039200
	.word	1852403559
	.word	1869881447
	.word	1818326048
	.word	1650532459
	.word	779384175
	.word	1699225632
	.word	1953784096
	.word	1952670066
	.word	1830839397
	.word	2036473957
	.word	1919448096
	.word	1948280165
	.word	1735289192
	.word	168639091
	.word	544434536
	.word	1684955491
	.word	1931502697
	.bss
	.align	2
	.type	edata, %object
	.size	edata, 2048
edata:
	.space	2048
	.ident	"GCC: (Arm GNU Toolchain 11.3.Rel1) 11.3.1 20220712"
