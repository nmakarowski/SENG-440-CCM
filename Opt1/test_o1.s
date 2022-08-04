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
	.file	"test_o1.c"
	.text
	.align	2
	.global	fixed_mult
	.type	fixed_mult, %function
fixed_mult:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, fp}
	add	fp, sp, #12
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	mov	r1, r3
	mov	r2, #0
	ldr	r3, [fp, #-28]
	mov	r4, #0
	mul	r0, r3, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r5, r6, r1, r3
	mov	r1, r5
	mov	r2, r6
	add	r0, r0, r2
	mov	r2, r0
	ldr	r3, [fp, #-32]
	sub	r0, r3, #32
	mov	r5, r2, lsr r0
	ldr	r3, [fp, #-32]
	rsb	r3, r3, #32
	mov	r6, r2, asl r3
	ldr	ip, [fp, #-32]
	cmp	r0, #0
	ldr	r0, [fp, #-32]
	mov	r3, r1, lsr ip
	orr	r3, r6, r3
	movge	r3, r5
	mov	r4, r2, lsr r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp!, {r4, r5, r6, fp}
	bx	lr
	.size	fixed_mult, .-fixed_mult
	.align	2
	.global	cubic_root
	.type	cubic_root, %function
cubic_root:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	mov	r2, #1
	ldr	r3, [fp, #-36]
	mov	r3, r2, asl r3
	str	r3, [fp, #-28]
	mov	r2, #1
	ldr	r3, [fp, #-36]
	mov	r3, r2, asl r3
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L4
.L6:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-20]
	rsb	r2, r3, r2
	mov	r3, #1
	mov	r1, r3, asl r2
	mov	r2, #1
	ldr	r3, [fp, #-36]
	mov	r3, r2, asl r3
	add	r3, r1, r3
	str	r3, [fp, #-8]
	ldr	r0, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-36]
	bl	fixed_mult
	mov	r3, r0
	ldr	r0, [fp, #-8]
	mov	r1, r3
	ldr	r2, [fp, #-36]
	bl	fixed_mult
	mov	r3, r0
	ldr	r0, [fp, #-28]
	mov	r1, r3
	ldr	r2, [fp, #-36]
	bl	fixed_mult
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-8]
	ldr	r2, [fp, #-36]
	bl	fixed_mult
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-36]
	mov	r2, r2, asl r3
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bls	.L5
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-24]
.L5:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L4:
	ldr	r3, [fp, #-36]
	sub	r2, r3, #1
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bgt	.L6
	ldr	r3, [fp, #-24]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.size	cubic_root, .-cubic_root
	.align	2
	.global	fixed_multiplication
	.type	fixed_multiplication, %function
fixed_multiplication:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, fp}
	add	fp, sp, #12
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	mov	r1, r3
	mov	r2, #0
	ldr	r3, [fp, #-28]
	mov	r4, #0
	mul	r0, r3, r2
	mul	ip, r1, r4
	add	r0, r0, ip
	umull	r5, r6, r1, r3
	mov	r1, r5
	mov	r2, r6
	add	r0, r0, r2
	mov	r2, r0
	ldr	r3, [fp, #-32]
	sub	r0, r3, #32
	mov	r5, r2, lsr r0
	ldr	r3, [fp, #-32]
	rsb	r3, r3, #32
	mov	r6, r2, asl r3
	ldr	ip, [fp, #-32]
	cmp	r0, #0
	ldr	r0, [fp, #-32]
	mov	r3, r1, lsr ip
	orr	r3, r6, r3
	movge	r3, r5
	mov	r4, r2, lsr r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp!, {r4, r5, r6, fp}
	bx	lr
	.size	fixed_multiplication, .-fixed_multiplication
	.align	2
	.global	square_root
	.type	square_root, %function
square_root:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	mov	r2, #1
	ldr	r3, [fp, #-36]
	mov	r3, r2, asl r3
	str	r3, [fp, #-28]
	mov	r2, #1
	ldr	r3, [fp, #-36]
	mov	r3, r2, asl r3
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L11
.L13:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-8]
	rsb	r2, r3, r2
	mov	r3, #1
	mov	r1, r3, asl r2
	mov	r2, #1
	ldr	r3, [fp, #-36]
	mov	r3, r2, asl r3
	add	r3, r1, r3
	str	r3, [fp, #-12]
	ldr	r0, [fp, #-12]
	ldr	r1, [fp, #-12]
	ldr	r2, [fp, #-36]
	bl	fixed_multiplication
	mov	r3, r0
	ldr	r0, [fp, #-28]
	mov	r1, r3
	ldr	r2, [fp, #-36]
	bl	fixed_multiplication
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-12]
	ldr	r2, [fp, #-36]
	bl	fixed_multiplication
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-36]
	mov	r2, r2, asl r3
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L12
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-24]
.L12:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L11:
	ldr	r3, [fp, #-36]
	sub	r2, r3, #1
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bgt	.L13
	ldr	r3, [fp, #-24]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
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
	ldr	r0, .L17
	bl	printf
	sub	r3, fp, #24
	ldr	r0, .L17+4
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
	ldr	r0, .L17+8
	mov	r1, ip
	mov	r2, r4
	bl	printf
	ldr	r0, .L17+12
	bl	printf
	sub	r3, fp, #28
	ldr	r0, .L17+4
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
	ldr	r0, .L17+16
	mov	r1, ip
	mov	r2, r4
	bl	printf
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
.L18:
	.align	2
.L17:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
