	.file	"test_o2.c"
	.text
	.globl	cubic_root
	.type	cubic_root, @function
cubic_root:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movl	-56(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %r13d
	movl	-56(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %r12d
	movl	$0, -36(%rbp)
	jmp	.L2
.L4:
	movl	-36(%rbp), %eax
	movl	-56(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	$1, %edx
	movl	%edx, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	-56(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	addl	%esi, %eax
	movl	%eax, %ebx
	movl	%r13d, %edx
	movl	%ebx, %esi
	movl	%ebx, %ecx
	movl	%ebx, %eax
	movq	%rcx, %rdi
	imulq	%rax, %rdi
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdi
	movq	%rdi, %rax
	movl	%eax, %eax
	imulq	%rax, %rsi
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rsi
	movq	%rsi, %rax
	movl	%eax, %eax
	imulq	%rax, %rdx
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	movl	%eax, %r14d
	movl	%r12d, %edx
	movl	%ebx, %eax
	imulq	%rax, %rdx
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	movl	%eax, %ebx
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%r14d, %eax
	jb	.L3
	movl	%r14d, %r13d
	movl	%ebx, %r12d
.L3:
	addl	$1, -36(%rbp)
.L2:
	movl	-56(%rbp), %eax
	subl	$1, %eax
	cmpl	-36(%rbp), %eax
	jg	.L4
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	cubic_root, .-cubic_root
	.globl	square_root
	.type	square_root, @function
square_root:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movl	-56(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %r13d
	movl	-56(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	movl	%eax, %ebx
	movl	$0, -36(%rbp)
	jmp	.L7
.L9:
	movl	-36(%rbp), %eax
	movl	-56(%rbp), %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	$1, %edx
	movl	%edx, %esi
	movl	%eax, %ecx
	sall	%cl, %esi
	movl	-56(%rbp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	addl	%esi, %eax
	movl	%eax, %r12d
	movl	%r13d, %edx
	movl	%r12d, %ecx
	movl	%r12d, %eax
	movq	%rcx, %rsi
	imulq	%rax, %rsi
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rsi
	movq	%rsi, %rax
	movl	%eax, %eax
	imulq	%rax, %rdx
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	movl	%eax, %r14d
	movl	%ebx, %edx
	movl	%r12d, %eax
	imulq	%rax, %rdx
	movl	-56(%rbp), %eax
	movl	%eax, %ecx
	shrq	%cl, %rdx
	movq	%rdx, %rax
	movl	%eax, %r12d
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	cmpl	%r14d, %eax
	jb	.L8
	movl	%r14d, %r13d
	movl	%r12d, %ebx
.L8:
	addl	$1, -36(%rbp)
.L7:
	movl	-56(%rbp), %eax
	subl	$1, %eax
	cmpl	-36(%rbp), %eax
	jg	.L9
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	square_root, .-square_root
	.section	.rodata
	.align 8
.LC0:
	.string	"Enter Number to calculate square root: "
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"\nSquare Root of %d\nccm: %d.%d\n"
	.align 8
.LC3:
	.string	"Enter Number to calculate Cubic root: "
.LC4:
	.string	"\nCubic Root of %d\nccm: %d.%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	leaq	-12(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-12(%rbp), %eax
	movl	$15, %esi
	movl	%eax, %edi
	call	square_root
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	andl	$32767, %eax
	imull	$1000000, %eax, %eax
	shrl	$15, %eax
	movl	%eax, %ecx
	movl	-4(%rbp), %eax
	shrl	$15, %eax
	movl	%eax, %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC3, %edi
	movl	$0, %eax
	call	printf
	leaq	-16(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	__isoc99_scanf
	movl	-16(%rbp), %eax
	movl	$10, %esi
	movl	%eax, %edi
	call	cubic_root
	movl	%eax, -8(%rbp)
	movl	-8(%rbp), %eax
	andl	$1023, %eax
	imull	$1000000, %eax, %eax
	shrl	$10, %eax
	movl	%eax, %ecx
	movl	-8(%rbp), %eax
	shrl	$10, %eax
	movl	%eax, %edx
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	movl	$.LC4, %edi
	movl	$0, %eax
	call	printf
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
