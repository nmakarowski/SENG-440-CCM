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
	.file	"square_root.c"
	.global	__aeabi_ui2f
	.global	__aeabi_i2f
	.global	__aeabi_fdiv
	.text
	.align	2
	.global	fixed_to_float
	.type	fixed_to_float, %function
fixed_to_float:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #12
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	__aeabi_ui2f
	mov	r4, r0
	mov	r2, #1
	ldr	r3, [fp, #-20]
	mov	r3, r2, asl r3
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	__aeabi_fdiv
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, pc}
	.size	fixed_to_float, .-fixed_to_float
	.global	__aeabi_fmul
	.global	__aeabi_f2uiz
	.align	2
	.global	float_to_fixed
	.type	float_to_fixed, %function
float_to_fixed:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]	@ float
	str	r1, [fp, #-12]
	mov	r2, #1
	ldr	r3, [fp, #-12]
	mov	r3, r2, asl r3
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	ldr	r2, [fp, #-8]	@ float
	mov	r0, r3
	mov	r1, r2
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2uiz
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.size	float_to_fixed, .-float_to_fixed
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
	.global	__aeabi_i2d
	.global	__aeabi_ddiv
	.global	__aeabi_dadd
	.global	__aeabi_dmul
	.global	__aeabi_d2uiz
	.align	2
	.global	square_root
	.type	square_root, %function
square_root:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #36
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	mov	r2, #1
	ldr	r3, [fp, #-52]
	mov	r3, r2, asl r3
	str	r3, [fp, #-44]
	mov	r2, #1
	ldr	r3, [fp, #-52]
	mov	r3, r2, asl r3
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L8
.L10:
	mov	r2, #1
	ldr	r3, [fp, #-24]
	mov	r3, r2, asl r3
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r5, r0
	mov	r6, r1
	mov	r3, #0
	mov	r4, #1069547520
	add	r4, r4, #3145728
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1069547520
	add	r6, r6, #3145728
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r5, r3
	mov	r6, r4
	mov	r2, #1
	ldr	r3, [fp, #-52]
	mov	r3, r2, asl r3
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2uiz
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-28]
	ldr	r1, [fp, #-28]
	ldr	r2, [fp, #-52]
	bl	fixed_multiplication
	mov	r3, r0
	ldr	r0, [fp, #-44]
	mov	r1, r3
	ldr	r2, [fp, #-52]
	bl	fixed_multiplication
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-40]
	ldr	r1, [fp, #-28]
	ldr	r2, [fp, #-52]
	bl	fixed_multiplication
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-52]
	mov	r2, r2, asl r3
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bcc	.L9
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-40]
.L9:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L8:
	ldr	r3, [fp, #-52]
	sub	r2, r3, #1
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bgt	.L10
	ldr	r3, [fp, #-40]
	mov	r0, r3
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, pc}
	.size	square_root, .-square_root
	.align	2
	.global	cubic_root
	.type	cubic_root, %function
cubic_root:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #36
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	mov	r2, #1
	ldr	r3, [fp, #-52]
	mov	r3, r2, asl r3
	str	r3, [fp, #-44]
	mov	r2, #1
	ldr	r3, [fp, #-52]
	mov	r3, r2, asl r3
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-36]
	b	.L13
.L15:
	mov	r2, #1
	ldr	r3, [fp, #-36]
	mov	r3, r2, asl r3
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r5, r0
	mov	r6, r1
	mov	r3, #0
	mov	r4, #1069547520
	add	r4, r4, #3145728
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	mov	r5, #0
	mov	r6, #1069547520
	add	r6, r6, #3145728
	mov	r0, r3
	mov	r1, r4
	mov	r2, r5
	mov	r3, r6
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	mov	r5, r3
	mov	r6, r4
	mov	r2, #1
	ldr	r3, [fp, #-52]
	mov	r3, r2, asl r3
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dmul
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2uiz
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-24]
	ldr	r2, [fp, #-52]
	bl	fixed_multiplication
	mov	r3, r0
	ldr	r0, [fp, #-24]
	mov	r1, r3
	ldr	r2, [fp, #-52]
	bl	fixed_multiplication
	mov	r3, r0
	ldr	r0, [fp, #-44]
	mov	r1, r3
	ldr	r2, [fp, #-52]
	bl	fixed_multiplication
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-40]
	ldr	r1, [fp, #-24]
	ldr	r2, [fp, #-52]
	bl	fixed_multiplication
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-52]
	mov	r2, r2, asl r3
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	bls	.L14
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-40]
.L14:
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L13:
	ldr	r3, [fp, #-52]
	sub	r2, r3, #1
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bgt	.L15
	ldr	r3, [fp, #-40]
	mov	r0, r3
	sub	sp, fp, #16
	ldmfd	sp!, {r4, r5, r6, fp, pc}
	.size	cubic_root, .-cubic_root
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	mov	r3, #4
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-20]
	mov	r1, #15
	bl	square_root
	mov	r3, r0
	str	r3, [fp, #-16]
	mov	r3, #16
	str	r3, [fp, #-12]
	ldr	r0, [fp, #-20]
	mov	r1, #10
	bl	cubic_root
	mov	r3, r0
	str	r3, [fp, #-8]
	sub	sp, fp, #4
	ldmfd	sp!, {fp, pc}
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
