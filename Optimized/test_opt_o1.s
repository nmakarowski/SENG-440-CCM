	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
	.eabi_attribute 18, 4
	.file	"test_opt.c"
	.text
	.align	2
	.global	cubic_root
	.type	cubic_root, %function
cubic_root:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	mov	r4, r0, asl #10
	mov	r0, #2048
	mov	ip, #1024
	mov	r1, ip
	mov	r2, #0
	mov	r3, #8192
.L3:
	cmp	r4, r3
	movcs	ip, r3
	cmp	r4, r3
	movcs	r1, r0
	add	r3, ip, ip, lsr r2
	add	r3, r3, r3, lsr r2
	add	r3, r3, r3, lsr r2
	add	r0, r1, r1, lsr r2
	add	r2, r2, #1
	cmp	r2, #9
	bne	.L3
	cmp	r3, r4
	movhi	r0, r1
	ldmfd	sp!, {r4}
	bx	lr
	.size	cubic_root, .-cubic_root
	.align	2
	.global	square_root
	.type	square_root, %function
square_root:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	mov	r4, r0, asl #15
	mov	ip, #32768
	mov	r1, ip
	mov	r2, #0
	mov	r3, #131072
	mov	r0, #65536
.L9:
	cmp	r4, r3
	movcs	ip, r3
	cmp	r4, r3
	movcs	r1, r0
	add	r3, ip, ip, lsr r2
	add	r3, r3, r3, lsr r2
	add	r0, r1, r1, lsr r2
	add	r2, r2, #1
	cmp	r2, #14
	bne	.L9
	cmp	r3, r4
	movhi	r0, r1
	ldmfd	sp!, {r4}
	bx	lr
	.size	square_root, .-square_root
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	sub	sp, sp, #8
	ldr	r0, .L15
	bl	printf
	ldr	r4, .L15+4
	mov	r0, r4
	add	r1, sp, #4
	bl	scanf
	ldr	r0, [sp, #4]
	bl	square_root
	mov	r2, r0
	mov	r1, #32512
	add	r1, r1, #255
	and	r1, r0, r1
	mov	r0, r1, asl #8
	sub	r0, r0, r1, asl #3
	mov	r3, r0, asl #6
	rsb	r3, r0, r3
	add	r3, r3, r1
	mov	r3, r3, asl #6
	ldr	r0, .L15+8
	ldr	r1, [sp, #4]
	mov	r2, r2, lsr #15
	mov	r3, r3, lsr #15
	bl	printf
	ldr	r0, .L15+12
	bl	printf
	mov	r0, r4
	mov	r1, sp
	bl	scanf
	ldr	r0, [sp, #0]
	bl	cubic_root
	mov	r2, r0
	mov	r1, #1020
	add	r1, r1, #3
	and	r1, r0, r1
	mov	r0, r1, asl #8
	sub	r0, r0, r1, asl #3
	mov	r3, r0, asl #6
	rsb	r3, r0, r3
	add	r3, r3, r1
	mov	r3, r3, asl #6
	ldr	r0, .L15+16
	ldr	r1, [sp, #0]
	mov	r2, r2, lsr #10
	mov	r3, r3, lsr #10
	bl	printf
	add	sp, sp, #8
	ldmfd	sp!, {r4, lr}
	bx	lr
.L16:
	.align	2
.L15:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Enter Number to calculate square root: \000"
.LC1:
	.ascii	"%d\000"
	.space	1
.LC2:
	.ascii	"\012Square Root of %d\012ccm: %d.%d\012\000"
	.space	1
.LC3:
	.ascii	"Enter Number to calculate Cubic root: \000"
	.space	1
.LC4:
	.ascii	"\012Cubic Root of %d\012ccm: %d.%d\012\000"
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
