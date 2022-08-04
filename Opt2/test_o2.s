	.arch armv5
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"test_o2.c"
	.text
	.align	2
	.global	cubic_root
	.type	cubic_root, %function
cubic_root:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	add	fp, sp, #28
	sub	sp, sp, #40
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	mov	r2, #1
	ldr	r3, [fp, #-44]
	mov	r3, r2, asl r3
	str	r3, [fp, #-64]
	mov	r2, #1
	ldr	r3, [fp, #-44]
	mov	r3, r2, asl r3
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L2
.L4:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-32]
	rsb	r2, r3, r2
	mov	r3, #1
	mov	r1, r3, asl r2
	mov	r2, #1
	ldr	r3, [fp, #-44]
	mov	r3, r2, asl r3
	add	r3, r1, r3
	str	r3, [fp, #-48]
	ldr	r0, [fp, #-64]
	mov	r7, r0
	mov	r8, #0
	ldr	r2, [fp, #-48]
	mov	r5, r2
	mov	r6, #0
	ldr	r3, [fp, #-48]
	mov	r1, r3
	mov	r2, #0
	ldr	r9, [fp, #-48]
	mov	r3, r9
	mov	r4, #0
	mul	r0, r3, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r9, sl, r1, r3
	mov	r1, r9
	mov	r2, sl
	add	r0, r0, r2
	mov	r2, r0
	ldr	r3, [fp, #-44]
	sub	r0, r3, #32
	mov	sl, r2, lsr r0
	ldr	r3, [fp, #-44]
	rsb	r3, r3, #32
	mov	r9, r2, asl r3
	ldr	ip, [fp, #-44]
	cmp	r0, #0
	ldr	r0, [fp, #-44]
	mov	r3, r1, lsr ip
	orr	r3, r9, r3
	movge	r3, sl
	mov	r4, r2, lsr r0
	mov	r4, #0
	mul	r0, r3, r6
	mul	r2, r5, r4
	add	r0, r0, r2
	umull	r1, r2, r5, r3
	add	r0, r0, r2
	mov	r2, r0
	ldr	r3, [fp, #-44]
	sub	r0, r3, #32
	mov	r5, r2, lsr r0
	ldr	r3, [fp, #-44]
	rsb	r3, r3, #32
	mov	r6, r2, asl r3
	ldr	ip, [fp, #-44]
	cmp	r0, #0
	ldr	r0, [fp, #-44]
	mov	r3, r1, lsr ip
	orr	r3, r6, r3
	movge	r3, r5
	mov	r4, r2, lsr r0
	mov	r4, #0
	mul	r0, r3, r8
	mul	r2, r7, r4
	add	r0, r0, r2
	umull	r1, r2, r7, r3
	add	r0, r0, r2
	mov	r2, r0
	ldr	r3, [fp, #-44]
	sub	r0, r3, #32
	mov	r5, r2, lsr r0
	ldr	r3, [fp, #-44]
	rsb	r3, r3, #32
	mov	r6, r2, asl r3
	ldr	ip, [fp, #-44]
	cmp	r0, #0
	ldr	r0, [fp, #-44]
	mov	r3, r1, lsr ip
	orr	r3, r6, r3
	movge	r3, r5
	mov	r4, r2, lsr r0
	str	r3, [fp, #-56]
	ldr	sl, [fp, #-60]
	mov	r1, sl
	mov	r2, #0
	ldr	r0, [fp, #-48]
	mov	r3, r0
	mov	r4, #0
	mul	r0, r3, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r5, r6, r1, r3
	mov	r1, r5
	mov	r2, r6
	add	r0, r0, r2
	mov	r2, r0
	ldr	r3, [fp, #-44]
	sub	r0, r3, #32
	mov	r5, r2, lsr r0
	ldr	r3, [fp, #-44]
	rsb	r3, r3, #32
	mov	r6, r2, asl r3
	ldr	ip, [fp, #-44]
	cmp	r0, #0
	ldr	r0, [fp, #-44]
	mov	r3, r1, lsr ip
	orr	r3, r6, r3
	movge	r3, r5
	mov	r4, r2, lsr r0
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-44]
	mov	r3, r2, asl r3
	ldr	r6, [fp, #-56]
	cmp	r3, r6
	bls	.L3
	ldr	r9, [fp, #-56]
	str	r9, [fp, #-64]
	ldr	sl, [fp, #-52]
	str	sl, [fp, #-60]
.L3:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L2:
	ldr	r3, [fp, #-44]
	sub	r2, r3, #1
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	bgt	.L4
	sub	sp, fp, #28
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
	.size	cubic_root, .-cubic_root
	.align	2
	.global	square_root
	.type	square_root, %function
square_root:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp}
	add	fp, sp, #24
	sub	sp, sp, #36
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	mov	r2, #1
	ldr	r3, [fp, #-44]
	mov	r3, r2, asl r3
	str	r3, [fp, #-60]
	mov	r2, #1
	ldr	r3, [fp, #-44]
	mov	r3, r2, asl r3
	str	r3, [fp, #-56]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L7
.L9:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-32]
	rsb	r2, r3, r2
	mov	r3, #1
	mov	r1, r3, asl r2
	mov	r2, #1
	ldr	r3, [fp, #-44]
	mov	r3, r2, asl r3
	add	r3, r1, r3
	mov	sl, r3
	ldr	r2, [fp, #-60]
	mov	r5, r2
	mov	r6, #0
	mov	r1, sl
	mov	r2, #0
	mov	r3, sl
	mov	r4, #0
	mul	r0, r3, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r7, r8, r1, r3
	mov	r1, r7
	mov	r2, r8
	add	r0, r0, r2
	mov	r2, r0
	ldr	r3, [fp, #-44]
	sub	r0, r3, #32
	mov	r7, r2, lsr r0
	ldr	r3, [fp, #-44]
	rsb	r3, r3, #32
	mov	r8, r2, asl r3
	ldr	ip, [fp, #-44]
	cmp	r0, #0
	ldr	r0, [fp, #-44]
	mov	r3, r1, lsr ip
	orr	r3, r8, r3
	movge	r3, r7
	mov	r4, r2, lsr r0
	mov	r4, #0
	mul	r0, r3, r6
	mul	r2, r5, r4
	add	r0, r0, r2
	umull	r1, r2, r5, r3
	add	r0, r0, r2
	mov	r2, r0
	ldr	r3, [fp, #-44]
	sub	r0, r3, #32
	mov	r5, r2, lsr r0
	ldr	r3, [fp, #-44]
	rsb	r3, r3, #32
	mov	r6, r2, asl r3
	ldr	ip, [fp, #-44]
	cmp	r0, #0
	ldr	r0, [fp, #-44]
	mov	r3, r1, lsr ip
	orr	r3, r6, r3
	movge	r3, r5
	mov	r4, r2, lsr r0
	str	r3, [fp, #-52]
	ldr	r8, [fp, #-56]
	mov	r1, r8
	mov	r2, #0
	mov	r3, sl
	mov	r4, #0
	mul	r0, r3, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r5, r6, r1, r3
	mov	r1, r5
	mov	r2, r6
	add	r0, r0, r2
	mov	r2, r0
	ldr	r3, [fp, #-44]
	sub	r0, r3, #32
	mov	r5, r2, lsr r0
	ldr	r3, [fp, #-44]
	rsb	r3, r3, #32
	mov	r6, r2, asl r3
	ldr	ip, [fp, #-44]
	cmp	r0, #0
	ldr	r0, [fp, #-44]
	mov	r3, r1, lsr ip
	orr	r3, r6, r3
	movge	r3, r5
	mov	r4, r2, lsr r0
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-44]
	mov	r3, r2, asl r3
	ldr	r6, [fp, #-52]
	cmp	r3, r6
	bcc	.L8
	ldr	r7, [fp, #-52]
	str	r7, [fp, #-60]
	ldr	r8, [fp, #-48]
	str	r8, [fp, #-56]
.L8:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L7:
	ldr	r3, [fp, #-44]
	sub	r2, r3, #1
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	bgt	.L9
	ldr	r3, [fp, #-56]
	mov	r0, r3
	sub	sp, fp, #24
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, fp}
	bx	lr
	.size	square_root, .-square_root
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Enter Number to calculate square root: \000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"\012Square Root of %d\012ccm: %d.%d\012\000"
	.align	2
.LC3:
	.ascii	"Enter Number to calculate Cubic root: \000"
	.align	2
.LC4:
	.ascii	"\012Cubic Root of %d\012ccm: %d.%d\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #28
	ldr	r0, .L13
	bl	printf
	sub	r3, fp, #24
	ldr	r0, .L13+4
	mov	r1, r3
	bl	scanf
	ldr	r3, [fp, #-24]
	mov	r0, r3
	mov	r1, #15
	bl	square_root
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	ip, [fp, #-24]
	ldr	r3, [fp, #-20]
	mov	r4, r3, lsr #15
	ldr	r3, [fp, #-20]
	mov	r1, r3, asl #17
	mov	r1, r1, lsr #17
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #5
	rsb	r2, r3, r2
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r3, r3, asl #6
	mov	r3, r3, lsr #15
	ldr	r0, .L13+8
	mov	r1, ip
	mov	r2, r4
	bl	printf
	ldr	r0, .L13+12
	bl	printf
	sub	r3, fp, #28
	ldr	r0, .L13+4
	mov	r1, r3
	bl	scanf
	ldr	r3, [fp, #-28]
	mov	r0, r3
	mov	r1, #10
	bl	cubic_root
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	ip, [fp, #-28]
	ldr	r3, [fp, #-16]
	mov	r4, r3, lsr #10
	ldr	r3, [fp, #-16]
	mov	r1, r3, asl #22
	mov	r1, r1, lsr #22
	mov	r3, r1
	mov	r3, r3, asl #3
	mov	r2, r3, asl #5
	rsb	r2, r3, r2
	mov	r3, r2, asl #6
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r3, r3, asl #6
	mov	r3, r3, lsr #10
	ldr	r0, .L13+16
	mov	r1, ip
	mov	r2, r4
	bl	printf
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
.L14:
	.align	2
.L13:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
