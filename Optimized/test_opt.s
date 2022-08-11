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
	.file	"test_opt.c"
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
	str	r0, [fp, #-8]
	mov	r0, #1024
	str	r0, [fp, #-28]
	mov	r1, #1024
	str	r1, [fp, #-24]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #10
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-28]
	mov	r2, r2, asl #3
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	str	r3, [fp, #-12]
	mov	r0, #0
	str	r0, [fp, #-20]
	b	.L2
.L4:
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-16]
	cmp	r1, r3
	bhi	.L3
	ldr	r2, [fp, #-12]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
.L3:
	ldr	r0, [fp, #-28]
	ldr	r1, [fp, #-20]
	mov	r3, r0, lsr r1
	ldr	r0, [fp, #-28]
	add	r2, r3, r0
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-20]
	mov	r3, r1, lsr r0
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	ldr	r0, [fp, #-20]
	mov	r3, r3, lsr r0
	add	r2, r2, r3
	ldr	r1, [fp, #-20]
	mov	r3, r2, lsr r1
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	ldr	r0, [fp, #-20]
	mov	r3, r2, lsr r0
	ldr	r1, [fp, #-24]
	add	r3, r3, r1
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-20]
	add	r2, r2, #1
	str	r2, [fp, #-20]
.L2:
	ldr	r3, [fp, #-20]
	cmp	r3, #8
	ble	.L4
	ldr	r3, [fp, #-8]
	ldr	r0, [fp, #-16]
	cmp	r0, r3
	bhi	.L5
	ldr	r1, [fp, #-12]
	str	r1, [fp, #-32]
	b	.L6
.L5:
	ldr	r2, [fp, #-24]
	str	r2, [fp, #-32]
.L6:
	ldr	r3, [fp, #-32]
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
	str	r0, [fp, #-8]
	mov	r0, #32768
	str	r0, [fp, #-28]
	mov	r1, #32768
	str	r1, [fp, #-24]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #15
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-28]
	mov	r2, r2, asl #2
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	str	r3, [fp, #-12]
	mov	r0, #0
	str	r0, [fp, #-20]
	b	.L9
.L11:
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-16]
	cmp	r1, r3
	bhi	.L10
	ldr	r2, [fp, #-12]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
.L10:
	ldr	r0, [fp, #-28]
	ldr	r1, [fp, #-20]
	mov	r3, r0, lsr r1
	ldr	r0, [fp, #-28]
	add	r2, r3, r0
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-20]
	mov	r3, r1, lsr r0
	ldr	r1, [fp, #-28]
	add	r3, r3, r1
	ldr	r0, [fp, #-20]
	mov	r3, r3, lsr r0
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r1, [fp, #-24]
	ldr	r2, [fp, #-20]
	mov	r3, r1, lsr r2
	ldr	r0, [fp, #-24]
	add	r3, r3, r0
	str	r3, [fp, #-12]
	ldr	r1, [fp, #-20]
	add	r1, r1, #1
	str	r1, [fp, #-20]
.L9:
	ldr	r2, [fp, #-20]
	cmp	r2, #13
	ble	.L11
	ldr	r3, [fp, #-8]
	ldr	r0, [fp, #-16]
	cmp	r0, r3
	bhi	.L12
	ldr	r1, [fp, #-12]
	str	r1, [fp, #-32]
	b	.L13
.L12:
	ldr	r2, [fp, #-24]
	str	r2, [fp, #-32]
.L13:
	ldr	r3, [fp, #-32]
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
	ldr	r0, .L17
	bl	printf
	sub	r3, fp, #24
	ldr	r0, .L17+4
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
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
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
