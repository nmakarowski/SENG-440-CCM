	.arch armv5
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 1
	.eabi_attribute 18, 4
	.file	"square_root.c"
	.text
	.align	2
	.global	fixed_multiplication
	.type	fixed_multiplication, %function
fixed_multiplication:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	umull	r3, r4, r1, r0
	rsb	r1, r2, #32
	subs	r0, r2, #32
	mov	r2, r3, lsr r2
	orr	r2, r2, r4, asl r1
	movmi	r0, r2
	movpl	r0, r4, lsr r0
	ldmfd	sp!, {r4}
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	sub	sp, sp, #12
	mov	r7, r1
	mov	r3, #1
	mov	r3, r3, asl r1
	str	r3, [sp, #4]
	mov	r8, r3
	sub	r9, r1, #1
	cmp	r9, #0
	movle	sl, r3
	ble	.L5
	mov	fp, r0, asl r1
	mov	sl, r3
	mov	r6, #0
.L7:
	mov	r3, #1
	mov	r0, r3, asl r6
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L10
	bl	__aeabi_ddiv
	mov	r2, #0
	ldr	r3, .L10
	bl	__aeabi_dadd
	mov	r4, r0
	mov	r5, r1
	ldr	r0, [sp, #4]
	bl	__aeabi_i2d
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
	bl	__aeabi_d2uiz
	mov	r4, r0
	mov	r1, r4
	mov	r2, r7
	bl	fixed_multiplication
	mov	r1, r0
	mov	r0, r8
	mov	r2, r7
	bl	fixed_multiplication
	mov	r5, r0
	cmp	r0, fp
	bhi	.L6
	mov	r0, sl
	mov	r1, r4
	mov	r2, r7
	bl	fixed_multiplication
	mov	r8, r5
	mov	sl, r0
.L6:
	add	r6, r6, #1
	cmp	r6, r9
	blt	.L7
.L5:
	mov	r0, sl
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L11:
	.align	2
.L10:
	.word	1072693248
	.size	square_root, .-square_root
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
