	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"test.c"
	.text
	.align	2
	.global	cubic_root
	.type	cubic_root, %function
cubic_root:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	str	r0, [fp, #-32]
	mov	r3, #10
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-28]
	mov	r3, #1
	mov	r3, r3, asl r2
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-28]
	mov	r3, #1
	mov	r3, r3, asl r2
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L2
.L4:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	mov	r2, r2, lsr r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	mov	r2, r2, lsr r3
	ldr	r3, [fp, #-12]
	add	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	mov	r2, r2, lsr r3
	ldr	r3, [fp, #-12]
	add	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	mov	r2, r2, lsr r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl r2
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bcc	.L3
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
.L3:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	sub	r2, r2, #1
	cmp	r3, r2
	bcc	.L4
	ldr	r3, [fp, #-20]
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	cubic_root, .-cubic_root
	.align	2
	.global	square_root
	.type	square_root, %function
square_root:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	str	r0, [fp, #-32]
	mov	r3, #15
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-28]
	mov	r3, #1
	mov	r3, r3, asl r2
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-28]
	mov	r3, #1
	mov	r3, r3, asl r2
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L7
.L9:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	mov	r2, r2, lsr r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	mov	r2, r2, lsr r3
	ldr	r3, [fp, #-12]
	add	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	mov	r2, r2, lsr r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-32]
	mov	r2, r3, asl r2
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	bcc	.L8
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-20]
.L8:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L7:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	sub	r2, r2, #1
	cmp	r3, r2
	bcc	.L9
	ldr	r3, [fp, #-20]
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
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
	@ Function supports interworking.
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
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
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
