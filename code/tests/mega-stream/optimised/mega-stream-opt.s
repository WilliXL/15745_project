	.text
	.file	"mega-stream.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function main
.LCPI0_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI0_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_2:
	.quad	4562254508917369340     # double 0.001
.LCPI0_3:
	.quad	4517329193108106637     # double 9.9999999999999995E-7
.LCPI0_4:
	.quad	4613937818241073152     # double 3
.LCPI0_5:
	.quad	4530839991990218125     # double 7.9999999999999996E-6
.LCPI0_6:
	.quad	9218868437227405311     # double 1.7976931348623157E+308
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rsi, %r14
	movl	%edi, %ebx
	movl	$.L.str, %edi
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	callq	printf
	movl	%ebx, %edi
	movq	%r14, %rsi
	callq	parse_args
	movslq	Ni(%rip), %rsi
	movq	%rsi, %rax
	shlq	$3, %rax
	movq	%rax, %xmm1
	punpckldq	.LCPI0_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI0_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	mulsd	.LCPI0_2(%rip), %xmm0
	movl	$.L.str.2, %edi
                                        # kill: def $esi killed $esi killed $rsi
	movb	$1, %al
	callq	printf
	movl	Ni(%rip), %esi
	movl	Nj(%rip), %ecx
	movl	Nm(%rip), %r8d
	movl	%ecx, %eax
	imull	%esi, %eax
	movl	%ecx, %edx
	imull	%r8d, %edx
	imull	%eax, %edx
	movslq	%edx, %rax
	shlq	$3, %rax
	movq	%rax, %xmm1
	punpckldq	.LCPI0_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI0_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	mulsd	.LCPI0_3(%rip), %xmm0
	movl	$.L.str.3, %edi
	movl	%ecx, %edx
	movb	$1, %al
	callq	printf
	movl	Ni(%rip), %esi
	movl	Nj(%rip), %ecx
	movl	Nm(%rip), %r9d
	movl	%ecx, %eax
	imull	%esi, %eax
	movl	%ecx, %edx
	imull	%ecx, %edx
	imull	%eax, %edx
	imull	%r9d, %edx
	movslq	%edx, %rax
	shlq	$3, %rax
	movq	%rax, %xmm1
	punpckldq	.LCPI0_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI0_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	mulsd	.LCPI0_3(%rip), %xmm0
	movl	$.L.str.4, %edi
	movl	%ecx, %edx
	movl	%ecx, %r8d
	movb	$1, %al
	callq	printf
	movl	Ni(%rip), %edx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
	movapd	%xmm1, %xmm0
	movl	Nj(%rip), %ebx
	cvtsi2sd	%ebx, %xmm2
	addsd	%xmm1, %xmm0
	movl	Nk(%rip), %ecx
	cvtsi2sd	%ecx, %xmm3
	mulsd	%xmm0, %xmm2
	movl	Nl(%rip), %r8d
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r8d, %xmm0
	mulsd	%xmm2, %xmm3
	movl	Nm(%rip), %edi
	xorps	%xmm2, %xmm2
	cvtsi2sd	%edi, %xmm2
	mulsd	%xmm3, %xmm0
	mulsd	%xmm0, %xmm2
	movl	%ebx, %eax
	imull	%edx, %eax
	movl	%edi, %esi
	imull	%ecx, %esi
	imull	%eax, %esi
	xorps	%xmm0, %xmm0
	cvtsi2sd	%esi, %xmm0
	addsd	%xmm2, %xmm0
	imull	%r8d, %edi
	imull	%edi, %eax
	xorps	%xmm2, %xmm2
	cvtsi2sd	%eax, %xmm2
	imull	%ecx, %edx
	imull	%edi, %edx
	xorps	%xmm3, %xmm3
	cvtsi2sd	%edx, %xmm3
	addsd	%xmm0, %xmm2
	addsd	%xmm2, %xmm3
	mulsd	.LCPI0_4(%rip), %xmm1
	imull	%ecx, %ebx
	imull	%edi, %ebx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	addsd	%xmm3, %xmm1
	addsd	%xmm1, %xmm0
	mulsd	.LCPI0_5(%rip), %xmm0
	movl	$.L.str.5, %edi
	movb	$1, %al
	callq	printf
	movl	Ni(%rip), %ebx
	movl	Nj(%rip), %eax
	movl	%eax, -104(%rbp)        # 4-byte Spill
	movl	Nk(%rip), %esi
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	Nl(%rip), %ecx
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	movl	Nm(%rip), %edx
	movl	%edx, -56(%rbp)         # 4-byte Spill
	imull	%esi, %eax
                                        # kill: def $ecx killed $ecx def $rcx
	imull	%edx, %ecx
	imull	%eax, %ecx
	leal	(%rcx,%rcx), %eax
	addl	$3, %eax
	movq	%rbx, -160(%rbp)        # 8-byte Spill
	imull	%ebx, %eax
	movl	%eax, -96(%rbp)         # 4-byte Spill
	leal	7(%rbx), %eax
	movl	%eax, %esi
	andl	$-8, %esi
	cmovsl	%eax, %esi
	sarl	$3, %esi
	movl	%esi, Ng(%rip)
	movl	$.L.str.6, %edi
	movl	$8, %edx
	xorl	%eax, %eax
	callq	printf
	movl	ntimes(%rip), %esi
	movl	$.L.str.7, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$10, %edi
	callq	putchar
	movl	ntimes(%rip), %eax
	movq	%rsp, %r12
	leaq	15(,%rax,8), %rax
	andq	$-16, %rax
	subq	%rax, %r12
	movq	%r12, %rsp
	movslq	Nj(%rip), %rax
	movslq	Nk(%rip), %rcx
	imulq	%rax, %rcx
	movslq	Nl(%rip), %rax
	movslq	Nm(%rip), %rdx
	imulq	%rax, %rdx
	imulq	%rcx, %rdx
	movslq	Ng(%rip), %rsi
	imulq	%rdx, %rsi
	shlq	$6, %rsi
	movl	$2097152, %edi          # imm = 0x200000
	callq	aligned_alloc
	movq	%rax, -80(%rbp)
	movslq	Nj(%rip), %rax
	movslq	Nk(%rip), %rcx
	imulq	%rax, %rcx
	movslq	Nl(%rip), %rax
	movslq	Nm(%rip), %rdx
	imulq	%rax, %rdx
	imulq	%rcx, %rdx
	movslq	Ng(%rip), %rsi
	imulq	%rdx, %rsi
	shlq	$6, %rsi
	movl	$2097152, %edi          # imm = 0x200000
	callq	aligned_alloc
	movq	%rax, -72(%rbp)
	movslq	Nj(%rip), %rax
	movslq	Nk(%rip), %rcx
	imulq	%rax, %rcx
	movslq	Nm(%rip), %rax
	movslq	Ng(%rip), %rsi
	imulq	%rax, %rsi
	imulq	%rcx, %rsi
	shlq	$6, %rsi
	movl	$2097152, %edi          # imm = 0x200000
	callq	aligned_alloc
	movq	%rax, -152(%rbp)
	movslq	Nj(%rip), %rax
	movslq	Nl(%rip), %rcx
	imulq	%rax, %rcx
	movslq	Nm(%rip), %rax
	movslq	Ng(%rip), %rsi
	imulq	%rax, %rsi
	imulq	%rcx, %rsi
	shlq	$6, %rsi
	movl	$2097152, %edi          # imm = 0x200000
	callq	aligned_alloc
	movq	%rax, -144(%rbp)
	movslq	Nk(%rip), %rax
	movslq	Nl(%rip), %rcx
	imulq	%rax, %rcx
	movslq	Nm(%rip), %rax
	movslq	Ng(%rip), %rsi
	imulq	%rax, %rsi
	imulq	%rcx, %rsi
	shlq	$6, %rsi
	movl	$2097152, %edi          # imm = 0x200000
	callq	aligned_alloc
	movq	%rax, -136(%rbp)
	movslq	Ng(%rip), %rsi
	shlq	$6, %rsi
	movl	$2097152, %edi          # imm = 0x200000
	callq	aligned_alloc
	movq	%rax, -128(%rbp)
	movslq	Ng(%rip), %rsi
	shlq	$6, %rsi
	movl	$2097152, %edi          # imm = 0x200000
	callq	aligned_alloc
	movq	%rax, -120(%rbp)
	movslq	Ng(%rip), %rsi
	shlq	$6, %rsi
	movl	$2097152, %edi          # imm = 0x200000
	callq	aligned_alloc
	movq	%rax, -112(%rbp)
	movslq	Nj(%rip), %rax
	movslq	Nk(%rip), %rcx
	imulq	%rax, %rcx
	movslq	Nl(%rip), %rax
	movslq	Nm(%rip), %rsi
	imulq	%rax, %rsi
	imulq	%rcx, %rsi
	shlq	$3, %rsi
	movl	$2097152, %edi          # imm = 0x200000
	callq	aligned_alloc
	movq	%rax, -88(%rbp)
	leaq	-88(%rbp), %rbx
	leaq	-112(%rbp), %r10
	leaq	-120(%rbp), %r11
	leaq	-128(%rbp), %r13
	leaq	-136(%rbp), %r14
	leaq	-144(%rbp), %r15
	leaq	-80(%rbp), %rcx
	leaq	-72(%rbp), %r8
	leaq	-152(%rbp), %r9
	movl	$.L__unnamed_1, %edi
	movl	$.omp_outlined., %edx
	movl	$9, %esi
	movl	$0, %eax
	pushq	%rbx
	pushq	%r10
	pushq	%r11
	pushq	%r13
	pushq	%r14
	pushq	%r15
	callq	__kmpc_fork_call
	addq	$48, %rsp
	callq	omp_get_wtime
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movl	ntimes(%rip), %ebx
	callq	omp_get_wtime
	cvtsi2sdl	-96(%rbp), %xmm1 # 4-byte Folded Reload
	cvtsi2sdl	-160(%rbp), %xmm7 # 4-byte Folded Reload
	addsd	%xmm7, %xmm7
	cvtsi2sdl	-104(%rbp), %xmm6 # 4-byte Folded Reload
	movapd	%xmm7, %xmm5
	cvtsi2sdl	-48(%rbp), %xmm2 # 4-byte Folded Reload
	mulsd	%xmm6, %xmm5
	movapd	%xmm5, %xmm3
	mulsd	%xmm2, %xmm3
	cvtsi2sdl	-56(%rbp), %xmm4 # 4-byte Folded Reload
	mulsd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtsi2sdl	-64(%rbp), %xmm1 # 4-byte Folded Reload
	mulsd	%xmm1, %xmm5
	mulsd	%xmm4, %xmm5
	addsd	%xmm3, %xmm5
	mulsd	%xmm2, %xmm7
	mulsd	%xmm1, %xmm7
	mulsd	%xmm4, %xmm7
	addsd	%xmm5, %xmm7
	movsd	%xmm7, -48(%rbp)        # 8-byte Spill
	addsd	%xmm6, %xmm6
	mulsd	%xmm2, %xmm6
	mulsd	%xmm1, %xmm6
	mulsd	%xmm4, %xmm6
	movsd	%xmm6, -56(%rbp)        # 8-byte Spill
	testl	%ebx, %ebx
	jle	.LBB0_3
# %bb.1:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	Ng(%rip), %edi
	movl	Nj(%rip), %edx
	movl	Nk(%rip), %ecx
	movl	Nl(%rip), %r8d
	movl	Nm(%rip), %r9d
	subq	$8, %rsp
	pushq	-88(%rbp)
	pushq	-112(%rbp)
	pushq	-120(%rbp)
	pushq	-128(%rbp)
	pushq	-136(%rbp)
	pushq	-144(%rbp)
	pushq	-152(%rbp)
	pushq	-80(%rbp)
	pushq	-72(%rbp)
	callq	kernel
	addq	$80, %rsp
	movq	-80(%rbp), %rax
	movq	-72(%rbp), %rcx
	movq	%rcx, -80(%rbp)
	movq	%rax, -72(%rbp)
	callq	omp_get_wtime
	subsd	-64(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, (%r12,%rbx,8)
	addq	$1, %rbx
	movslq	ntimes(%rip), %r14
	callq	omp_get_wtime
	cmpq	%r14, %rbx
	jl	.LBB0_2
.LBB0_3:
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movl	Nk(%rip), %ecx
	imull	Nj(%rip), %ecx
	imull	Nl(%rip), %ecx
	imull	Nm(%rip), %ecx
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	-48(%rbp), %xmm1        # 8-byte Folded Reload
	xorpd	%xmm0, %xmm0
	testl	%ecx, %ecx
	jle	.LBB0_6
# %bb.4:
	movq	-88(%rbp), %rax
	movl	%ecx, %ecx
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_5:                                # =>This Inner Loop Header: Depth=1
	addsd	(%rax,%rdx,8), %xmm0
	addq	$1, %rdx
	cmpq	%rcx, %rdx
	jb	.LBB0_5
.LBB0_6:
	mulsd	.LCPI0_5(%rip), %xmm1
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	movl	$.L.str.10, %edi
	movb	$1, %al
	callq	printf
	movl	ntimes(%rip), %eax
	movsd	.LCPI0_6(%rip), %xmm2   # xmm2 = mem[0],zero
	xorpd	%xmm3, %xmm3
	cmpl	$2, %eax
	jl	.LBB0_7
# %bb.9:
	movl	$1, %ecx
	xorpd	%xmm1, %xmm1
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movsd	(%r12,%rcx,8), %xmm0    # xmm0 = mem[0],zero
	minsd	%xmm0, %xmm2
	maxsd	%xmm0, %xmm1
	addsd	%xmm0, %xmm3
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jb	.LBB0_10
	jmp	.LBB0_8
.LBB0_7:
	xorpd	%xmm1, %xmm1
.LBB0_8:
	movsd	%xmm2, -96(%rbp)        # 8-byte Spill
	movsd	%xmm1, -104(%rbp)       # 8-byte Spill
	addl	$-1, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	divsd	%xmm0, %xmm3
	movsd	%xmm3, -48(%rbp)        # 8-byte Spill
	movl	$10, %edi
	callq	putchar
	movl	$.Lstr, %edi
	callq	puts
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	$.L.str.12, %edi
	movsd	-104(%rbp), %xmm2       # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-48(%rbp), %xmm3        # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movb	$4, %al
	callq	printf
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	-168(%rbp), %xmm0       # 8-byte Folded Reload
	movl	$.L.str.13, %edi
	movb	$1, %al
	callq	printf
	movq	-80(%rbp), %rdi
	callq	free
	movq	-72(%rbp), %rdi
	callq	free
	movq	-152(%rbp), %rdi
	callq	free
	movq	-144(%rbp), %rdi
	callq	free
	movq	-136(%rbp), %rdi
	callq	free
	movq	-128(%rbp), %rdi
	callq	free
	movq	-120(%rbp), %rdi
	callq	free
	movq	-112(%rbp), %rdi
	callq	free
	movq	-88(%rbp), %rdi
	callq	free
	xorl	%eax, %eax
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	parse_args              # -- Begin function parse_args
	.p2align	4, 0x90
	.type	parse_args,@function
parse_args:                             # @parse_args
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r12
	.cfi_def_cfa_offset 40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset %rbx, -48
	.cfi_offset %r12, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	cmpl	$2, %edi
	jl	.LBB1_11
# %bb.1:                                # %.preheader
	movq	%rsi, %r15
	movl	%edi, %r14d
	movl	$1, %ebx
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_3:                                #   in Loop: Header=BB1_2 Depth=1
	addl	$1, %ebx
	movq	8(%r15,%r12,8), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, Nm(%rip)
.LBB1_10:                               #   in Loop: Header=BB1_2 Depth=1
	addl	$1, %ebx
	cmpl	%r14d, %ebx
	jge	.LBB1_11
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movslq	%ebx, %r12
	movq	(%r15,%r12,8), %rbp
	movl	$.L.str.14, %esi
	movq	%rbp, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_3
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.15, %esi
	movq	%rbp, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_5
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.16, %esi
	movq	%rbp, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_7
# %bb.8:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.17, %esi
	movq	%rbp, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_9
# %bb.12:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.18, %esi
	movq	%rbp, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB1_16
# %bb.13:                               #   in Loop: Header=BB1_2 Depth=1
	movq	8(%r15,%r12,8), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, ntimes(%rip)
	cmpl	$1, %eax
	jle	.LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_2 Depth=1
	addl	$1, %ebx
	jmp	.LBB1_10
	.p2align	4, 0x90
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
	addl	$1, %ebx
	movq	8(%r15,%r12,8), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, Ni(%rip)
	jmp	.LBB1_10
.LBB1_7:                                #   in Loop: Header=BB1_2 Depth=1
	addl	$1, %ebx
	movq	8(%r15,%r12,8), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, Nj(%rip)
	movl	%eax, Nk(%rip)
	movl	%eax, Nl(%rip)
	jmp	.LBB1_10
.LBB1_9:                                #   in Loop: Header=BB1_2 Depth=1
	addl	$1, %ebx
	movq	8(%r15,%r12,8), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movl	%eax, Nj(%rip)
	jmp	.LBB1_10
.LBB1_11:
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB1_16:
	.cfi_def_cfa_offset 48
	movl	$.L.str.20, %esi
	movq	%rbp, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB1_17
# %bb.18:
	movq	(%r15), %rsi
	movl	$.L.str.21, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lstr.31, %edi
	callq	puts
	movl	$.Lstr.32, %edi
	callq	puts
	movl	$.Lstr.33, %edi
	callq	puts
	movl	$.Lstr.34, %edi
	callq	puts
	movl	$.Lstr.35, %edi
	callq	puts
	movl	$10, %edi
	callq	putchar
	movl	$.L.str.27, %edi
	movl	$64, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.28, %edi
	movl	$16, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.29, %edi
	movl	$128, %esi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.LBB1_15:
	movq	stderr(%rip), %rcx
	movl	$.L.str.19, %edi
	movl	$28, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %edi
	callq	exit
.LBB1_17:
	movq	stderr(%rip), %rdi
	movl	$.L.str.30, %esi
	movq	%rbp, %rdx
	xorl	%eax, %eax
	callq	fprintf
	movl	$1, %edi
	callq	exit
.Lfunc_end1:
	.size	parse_args, .Lfunc_end1-parse_args
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function .omp_outlined.
.LCPI2_0:
	.quad	4576918229304087675     # double 0.01
	.quad	4576918229304087675     # double 0.01
.LCPI2_1:
	.quad	4581421828931458171     # double 0.02
	.quad	4581421828931458171     # double 0.02
.LCPI2_2:
	.quad	4584304132692975288     # double 0.029999999999999999
	.quad	4584304132692975288     # double 0.029999999999999999
.LCPI2_3:
	.quad	4585925428558828667     # double 0.040000000000000001
	.quad	4585925428558828667     # double 0.040000000000000001
	.text
	.p2align	4, 0x90
	.type	.omp_outlined.,@function
.omp_outlined.:                         # @.omp_outlined.
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$120, %rsp
	.cfi_def_cfa_offset 176
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 80(%rsp)           # 8-byte Spill
	movq	%r8, 112(%rsp)          # 8-byte Spill
	movq	%rcx, 24(%rsp)          # 8-byte Spill
	movq	%rdx, 64(%rsp)          # 8-byte Spill
	movl	Nm(%rip), %r14d
	testl	%r14d, %r14d
	jle	.LBB2_1
# %bb.2:
	leal	-1(%r14), %ebx
	movl	$0, 12(%rsp)
	movl	%ebx, 8(%rsp)
	movl	$1, 20(%rsp)
	movl	$0, 16(%rsp)
	movl	(%rdi), %esi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	28(%rsp), %rax
	leaq	24(%rsp), %rcx
	leaq	20(%rsp), %r8
	leaq	16(%rsp), %r9
	movl	$.L__unnamed_2, %edi
	movl	%esi, 44(%rsp)          # 4-byte Spill
	movl	$34, %edx
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_for_static_init_4
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	8(%rsp), %eax
	cmpl	%r14d, %eax
	cmovll	%eax, %ebx
	movl	%ebx, 8(%rsp)
	movl	12(%rsp), %eax
	movl	%ebx, 100(%rsp)         # 4-byte Spill
	cmpl	%ebx, %eax
	jle	.LBB2_3
.LBB2_19:
	movl	$.L__unnamed_2, %edi
	movl	36(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %esi
	callq	__kmpc_for_static_fini
	jmp	.LBB2_20
.LBB2_1:
	movl	(%rdi), %r12d
.LBB2_20:
	movl	$.L__unnamed_3, %edi
	movl	%r12d, %esi
	callq	__kmpc_barrier
	movl	Nm(%rip), %ebp
	testl	%ebp, %ebp
	movl	%r12d, 36(%rsp)         # 4-byte Spill
	jle	.LBB2_36
# %bb.21:
	leal	-1(%rbp), %ebx
	movl	$0, 12(%rsp)
	movl	%ebx, 8(%rsp)
	movl	$1, 20(%rsp)
	movl	$0, 16(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	28(%rsp), %rax
	leaq	24(%rsp), %rcx
	leaq	20(%rsp), %r8
	leaq	16(%rsp), %r9
	movl	$.L__unnamed_2, %edi
	movl	%r12d, %esi
	movl	$34, %edx
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_for_static_init_4
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	8(%rsp), %eax
	cmpl	%ebp, %eax
	cmovll	%eax, %ebx
	movl	%ebx, 8(%rsp)
	movslq	12(%rsp), %rcx
	cmpl	%ebx, %ecx
	jle	.LBB2_22
.LBB2_35:
	movl	$.L__unnamed_2, %edi
	movl	36(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %esi
	callq	__kmpc_for_static_fini
.LBB2_36:
	movl	$.L__unnamed_3, %edi
	movl	%r12d, %esi
	callq	__kmpc_barrier
	movl	Nm(%rip), %ebp
	testl	%ebp, %ebp
	jle	.LBB2_52
# %bb.37:
	leal	-1(%rbp), %ebx
	movl	$0, 12(%rsp)
	movl	%ebx, 8(%rsp)
	movl	$1, 20(%rsp)
	movl	$0, 16(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	28(%rsp), %rax
	leaq	24(%rsp), %rcx
	leaq	20(%rsp), %r8
	leaq	16(%rsp), %r9
	movl	$.L__unnamed_2, %edi
	movl	%r12d, %esi
	movl	$34, %edx
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_for_static_init_4
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	8(%rsp), %eax
	cmpl	%ebp, %eax
	cmovll	%eax, %ebx
	movl	%ebx, 8(%rsp)
	movslq	12(%rsp), %rcx
	cmpl	%ebx, %ecx
	jle	.LBB2_38
.LBB2_51:
	movl	$.L__unnamed_2, %edi
	movl	36(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %esi
	callq	__kmpc_for_static_fini
.LBB2_52:
	movl	$.L__unnamed_3, %edi
	movl	%r12d, %esi
	callq	__kmpc_barrier
	movl	Nm(%rip), %ebp
	testl	%ebp, %ebp
	jle	.LBB2_68
# %bb.53:
	leal	-1(%rbp), %ebx
	movl	$0, 12(%rsp)
	movl	%ebx, 8(%rsp)
	movl	$1, 20(%rsp)
	movl	$0, 16(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	28(%rsp), %rax
	leaq	24(%rsp), %rcx
	leaq	20(%rsp), %r8
	leaq	16(%rsp), %r9
	movl	$.L__unnamed_2, %edi
	movl	%r12d, %esi
	movl	$34, %edx
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_for_static_init_4
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	8(%rsp), %eax
	cmpl	%ebp, %eax
	cmovll	%eax, %ebx
	movl	%ebx, 8(%rsp)
	movslq	12(%rsp), %rdx
	cmpl	%ebx, %edx
	jle	.LBB2_54
.LBB2_67:
	movl	$.L__unnamed_2, %edi
	movl	36(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %esi
	callq	__kmpc_for_static_fini
.LBB2_68:
	movl	$.L__unnamed_3, %edi
	movl	%r12d, %esi
	callq	__kmpc_barrier
	movl	Ng(%rip), %ebp
	testl	%ebp, %ebp
	jle	.LBB2_75
# %bb.69:
	leal	-1(%rbp), %ebx
	movl	$0, 12(%rsp)
	movl	%ebx, 8(%rsp)
	movl	$1, 20(%rsp)
	movl	$0, 16(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	28(%rsp), %rax
	leaq	24(%rsp), %rcx
	leaq	20(%rsp), %r8
	leaq	16(%rsp), %r9
	movl	$.L__unnamed_2, %edi
	movl	%r12d, %esi
	movl	$34, %edx
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_for_static_init_4
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	8(%rsp), %eax
	cmpl	%ebp, %eax
	cmovll	%eax, %ebx
	movl	%ebx, 8(%rsp)
	movslq	12(%rsp), %r14
	cmpl	%ebx, %r14d
	jg	.LBB2_74
# %bb.70:
	movq	200(%rsp), %rax
	movq	192(%rsp), %rcx
	movq	184(%rsp), %rdx
	movq	(%rdx), %r8
	movq	(%rcx), %r9
	movq	(%rax), %r10
	movslq	%ebx, %r11
	leal	(,%r14,8), %r15d
	movabsq	$4588807732320345784, %rbx # imm = 0x3FAEB851EB851EB8
	movabsq	$4589708452245819884, %rcx # imm = 0x3FB1EB851EB851EC
	movabsq	$4590429028186199163, %rdx # imm = 0x3FB47AE147AE147B
	.p2align	4, 0x90
.LBB2_71:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_72 Depth 2
	movslq	%r15d, %rax
	leaq	(%r10,%rax,8), %rsi
	leaq	(%r9,%rax,8), %rdi
	leaq	(%r8,%rax,8), %rax
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB2_72:                               #   Parent Loop BB2_71 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movntiq	%rbx, 8(%rax,%rbp,8)
	movntiq	%rbx, (%rax,%rbp,8)
	movntiq	%rcx, 8(%rdi,%rbp,8)
	movntiq	%rcx, (%rdi,%rbp,8)
	movntiq	%rdx, 8(%rsi,%rbp,8)
	movntiq	%rdx, (%rsi,%rbp,8)
	addq	$2, %rbp
	cmpq	$8, %rbp
	jne	.LBB2_72
# %bb.73:                               #   in Loop: Header=BB2_71 Depth=1
	addl	$8, %r15d
	cmpq	%r11, %r14
	leaq	1(%r14), %r14
	jl	.LBB2_71
.LBB2_74:
	movl	$.L__unnamed_2, %edi
	movl	%r12d, %esi
	callq	__kmpc_for_static_fini
.LBB2_75:
	movl	$.L__unnamed_3, %edi
	movl	%r12d, %esi
	callq	__kmpc_barrier
	movl	Nm(%rip), %ebx
	testl	%ebx, %ebx
	jle	.LBB2_87
# %bb.76:
	leal	-1(%rbx), %ebp
	movl	$0, 12(%rsp)
	movl	%ebp, 8(%rsp)
	movl	$1, 20(%rsp)
	movl	$0, 16(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	28(%rsp), %rax
	leaq	24(%rsp), %rcx
	leaq	20(%rsp), %r8
	leaq	16(%rsp), %r9
	movl	$.L__unnamed_2, %edi
	movl	%r12d, %esi
	movl	$34, %edx
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	$1
	.cfi_adjust_cfa_offset 8
	pushq	%rax
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_for_static_init_4
	addq	$32, %rsp
	.cfi_adjust_cfa_offset -32
	movl	8(%rsp), %eax
	cmpl	%ebx, %eax
	cmovll	%eax, %ebp
	movl	%ebp, 8(%rsp)
	movl	12(%rsp), %eax
	movl	%ebp, 72(%rsp)          # 4-byte Spill
	cmpl	%ebp, %eax
	jle	.LBB2_77
.LBB2_86:
	movl	$.L__unnamed_2, %edi
	movl	36(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %esi
	callq	__kmpc_for_static_fini
.LBB2_87:
	movl	$.L__unnamed_3, %edi
	movl	%r12d, %esi
	callq	__kmpc_barrier
	addq	$120, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.LBB2_3:
	.cfi_def_cfa_offset 176
	movl	Ng(%rip), %edx
	movl	Nl(%rip), %ebp
	movl	Nk(%rip), %esi
	movl	Nj(%rip), %edi
	movl	%eax, %ebx
	imull	%ebp, %ebx
	movq	%rbp, 48(%rsp)          # 8-byte Spill
                                        # kill: def $ebp killed $ebp killed $rbp
	imull	%esi, %ebp
	movl	%esi, %ecx
	imull	%edi, %ecx
	imull	%ecx, %ebx
	imull	%edx, %ebx
	shll	$3, %ebx
	movl	%ebx, 76(%rsp)          # 4-byte Spill
	imull	%edi, %ebp
	movl	%ebp, %ebx
	movl	%edx, 60(%rsp)          # 4-byte Spill
	imull	%edx, %ebx
	shll	$3, %ebx
	movl	%ebx, 96(%rsp)          # 4-byte Spill
	shll	$3, %ebp
	movl	%ebp, 72(%rsp)          # 4-byte Spill
	shll	$3, %ecx
	leal	(,%rdi,8), %r14d
	movaps	.LCPI2_0(%rip), %xmm0   # xmm0 = [1.0E-2,1.0E-2]
	xorps	%xmm1, %xmm1
	jmp	.LBB2_4
	.p2align	4, 0x90
.LBB2_18:                               #   in Loop: Header=BB2_4 Depth=1
	movq	104(%rsp), %rdx         # 8-byte Reload
	leal	1(%rdx), %eax
	movl	96(%rsp), %ebp          # 4-byte Reload
	addl	%ebp, 76(%rsp)          # 4-byte Folded Spill
	cmpl	100(%rsp), %edx         # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	jge	.LBB2_19
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_6 Depth 2
                                        #       Child Loop BB2_9 Depth 3
                                        #         Child Loop BB2_11 Depth 4
                                        #           Child Loop BB2_12 Depth 5
                                        #             Child Loop BB2_13 Depth 6
	movq	%rax, 104(%rsp)         # 8-byte Spill
	cmpl	$0, 60(%rsp)            # 4-byte Folded Reload
	jle	.LBB2_18
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	xorl	%eax, %eax
	movl	76(%rsp), %edx          # 4-byte Reload
	movl	%edx, 40(%rsp)          # 4-byte Spill
	jmp	.LBB2_6
	.p2align	4, 0x90
.LBB2_17:                               #   in Loop: Header=BB2_6 Depth=2
	movl	88(%rsp), %eax          # 4-byte Reload
	addl	$1, %eax
	movl	40(%rsp), %edx          # 4-byte Reload
	addl	72(%rsp), %edx          # 4-byte Folded Reload
	movl	%edx, 40(%rsp)          # 4-byte Spill
	cmpl	60(%rsp), %eax          # 4-byte Folded Reload
	jge	.LBB2_18
.LBB2_6:                                #   Parent Loop BB2_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_9 Depth 3
                                        #         Child Loop BB2_11 Depth 4
                                        #           Child Loop BB2_12 Depth 5
                                        #             Child Loop BB2_13 Depth 6
	movl	%eax, 88(%rsp)          # 4-byte Spill
	cmpl	$0, 48(%rsp)            # 4-byte Folded Reload
	jle	.LBB2_17
# %bb.7:                                #   in Loop: Header=BB2_6 Depth=2
	testl	%esi, %esi
	jle	.LBB2_17
# %bb.8:                                #   in Loop: Header=BB2_6 Depth=2
	movl	40(%rsp), %r10d         # 4-byte Reload
	xorl	%r12d, %r12d
	jmp	.LBB2_9
	.p2align	4, 0x90
.LBB2_16:                               #   in Loop: Header=BB2_9 Depth=3
	addq	$1, %r12
	addl	%ecx, %r10d
	cmpq	48(%rsp), %r12          # 8-byte Folded Reload
	je	.LBB2_17
.LBB2_9:                                #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_11 Depth 4
                                        #           Child Loop BB2_12 Depth 5
                                        #             Child Loop BB2_13 Depth 6
	testl	%edi, %edi
	jle	.LBB2_16
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=3
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %r8
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %r15
	movl	%r10d, %r11d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB2_11:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        #       Parent Loop BB2_9 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_12 Depth 5
                                        #             Child Loop BB2_13 Depth 6
	movl	%r11d, %r9d
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB2_12:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        #       Parent Loop BB2_9 Depth=3
                                        #         Parent Loop BB2_11 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB2_13 Depth 6
	movslq	%r9d, %rdx
	leaq	(%r15,%rdx,8), %rbx
	leaq	(%r8,%rdx,8), %r13
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB2_13:                               #   Parent Loop BB2_4 Depth=1
                                        #     Parent Loop BB2_6 Depth=2
                                        #       Parent Loop BB2_9 Depth=3
                                        #         Parent Loop BB2_11 Depth=4
                                        #           Parent Loop BB2_12 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movups	%xmm0, (%r13,%rdx,8)
	movups	%xmm1, (%rbx,%rdx,8)
	addq	$2, %rdx
	cmpq	$8, %rdx
	jne	.LBB2_13
# %bb.14:                               #   in Loop: Header=BB2_12 Depth=5
	addq	$1, %rbp
	addl	$8, %r9d
	cmpq	%rdi, %rbp
	jne	.LBB2_12
# %bb.15:                               #   in Loop: Header=BB2_11 Depth=4
	addq	$1, %rax
	addl	%r14d, %r11d
	cmpq	%rsi, %rax
	jne	.LBB2_11
	jmp	.LBB2_16
.LBB2_22:
	movl	Ng(%rip), %r14d
	movl	Nk(%rip), %r11d
	movl	Nj(%rip), %esi
	movslq	%ebx, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	%ecx, %eax
	imull	%r11d, %eax
	movl	%esi, %edx
	imull	%r14d, %edx
	imull	%eax, %edx
	shll	$3, %edx
	movl	%edx, 24(%rsp)          # 4-byte Spill
	movl	%r11d, %r15d
	imull	%esi, %r15d
	movl	%r15d, %eax
	imull	%r14d, %eax
	shll	$3, %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	shll	$3, %r15d
	leal	(,%rsi,8), %edi
	movaps	.LCPI2_1(%rip), %xmm0   # xmm0 = [2.0E-2,2.0E-2]
	jmp	.LBB2_23
	.p2align	4, 0x90
.LBB2_34:                               #   in Loop: Header=BB2_23 Depth=1
	movl	40(%rsp), %eax          # 4-byte Reload
	addl	%eax, 24(%rsp)          # 4-byte Folded Spill
	movq	48(%rsp), %rcx          # 8-byte Reload
	cmpq	64(%rsp), %rcx          # 8-byte Folded Reload
	leaq	1(%rcx), %rcx
	jge	.LBB2_35
.LBB2_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_26 Depth 2
                                        #       Child Loop BB2_28 Depth 3
                                        #         Child Loop BB2_29 Depth 4
                                        #           Child Loop BB2_30 Depth 5
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	testl	%r14d, %r14d
	jle	.LBB2_34
# %bb.24:                               #   in Loop: Header=BB2_23 Depth=1
	testl	%r11d, %r11d
	jle	.LBB2_34
# %bb.25:                               #   in Loop: Header=BB2_23 Depth=1
	movl	24(%rsp), %r12d         # 4-byte Reload
	xorl	%r13d, %r13d
	jmp	.LBB2_26
	.p2align	4, 0x90
.LBB2_33:                               #   in Loop: Header=BB2_26 Depth=2
	addq	$1, %r13
	addl	%r15d, %r12d
	cmpq	%r14, %r13
	je	.LBB2_34
.LBB2_26:                               #   Parent Loop BB2_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_28 Depth 3
                                        #         Child Loop BB2_29 Depth 4
                                        #           Child Loop BB2_30 Depth 5
	testl	%esi, %esi
	jle	.LBB2_33
# %bb.27:                               #   in Loop: Header=BB2_26 Depth=2
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	movl	%r12d, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_28:                               #   Parent Loop BB2_23 Depth=1
                                        #     Parent Loop BB2_26 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_29 Depth 4
                                        #           Child Loop BB2_30 Depth 5
	movl	%eax, %ebp
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB2_29:                               #   Parent Loop BB2_23 Depth=1
                                        #     Parent Loop BB2_26 Depth=2
                                        #       Parent Loop BB2_28 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_30 Depth 5
	movslq	%ebp, %rdx
	leaq	(%rcx,%rdx,8), %r9
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB2_30:                               #   Parent Loop BB2_23 Depth=1
                                        #     Parent Loop BB2_26 Depth=2
                                        #       Parent Loop BB2_28 Depth=3
                                        #         Parent Loop BB2_29 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movups	%xmm0, (%r9,%r10,8)
	addq	$2, %r10
	cmpq	$8, %r10
	jne	.LBB2_30
# %bb.31:                               #   in Loop: Header=BB2_29 Depth=4
	addq	$1, %r8
	addl	$8, %ebp
	cmpq	%rsi, %r8
	jne	.LBB2_29
# %bb.32:                               #   in Loop: Header=BB2_28 Depth=3
	addq	$1, %rbx
	addl	%edi, %eax
	cmpq	%r11, %rbx
	jne	.LBB2_28
	jmp	.LBB2_33
.LBB2_38:
	movl	Ng(%rip), %r14d
	movl	Nl(%rip), %r11d
	movl	Nj(%rip), %esi
	movslq	%ebx, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	%ecx, %eax
	imull	%r11d, %eax
	movl	%esi, %edx
	imull	%r14d, %edx
	imull	%eax, %edx
	shll	$3, %edx
	movl	%edx, 24(%rsp)          # 4-byte Spill
	movl	%r11d, %r15d
	imull	%esi, %r15d
	movl	%r15d, %eax
	imull	%r14d, %eax
	shll	$3, %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	shll	$3, %r15d
	leal	(,%rsi,8), %edi
	movaps	.LCPI2_2(%rip), %xmm0   # xmm0 = [2.9999999999999999E-2,2.9999999999999999E-2]
	jmp	.LBB2_39
	.p2align	4, 0x90
.LBB2_50:                               #   in Loop: Header=BB2_39 Depth=1
	movl	40(%rsp), %eax          # 4-byte Reload
	addl	%eax, 24(%rsp)          # 4-byte Folded Spill
	movq	48(%rsp), %rcx          # 8-byte Reload
	cmpq	64(%rsp), %rcx          # 8-byte Folded Reload
	leaq	1(%rcx), %rcx
	jge	.LBB2_51
.LBB2_39:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_42 Depth 2
                                        #       Child Loop BB2_44 Depth 3
                                        #         Child Loop BB2_45 Depth 4
                                        #           Child Loop BB2_46 Depth 5
	movq	%rcx, 48(%rsp)          # 8-byte Spill
	testl	%r14d, %r14d
	jle	.LBB2_50
# %bb.40:                               #   in Loop: Header=BB2_39 Depth=1
	testl	%r11d, %r11d
	jle	.LBB2_50
# %bb.41:                               #   in Loop: Header=BB2_39 Depth=1
	movl	24(%rsp), %r12d         # 4-byte Reload
	xorl	%r13d, %r13d
	jmp	.LBB2_42
	.p2align	4, 0x90
.LBB2_49:                               #   in Loop: Header=BB2_42 Depth=2
	addq	$1, %r13
	addl	%r15d, %r12d
	cmpq	%r14, %r13
	je	.LBB2_50
.LBB2_42:                               #   Parent Loop BB2_39 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_44 Depth 3
                                        #         Child Loop BB2_45 Depth 4
                                        #           Child Loop BB2_46 Depth 5
	testl	%esi, %esi
	jle	.LBB2_49
# %bb.43:                               #   in Loop: Header=BB2_42 Depth=2
	movq	80(%rsp), %rax          # 8-byte Reload
	movq	(%rax), %rcx
	movl	%r12d, %eax
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_44:                               #   Parent Loop BB2_39 Depth=1
                                        #     Parent Loop BB2_42 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_45 Depth 4
                                        #           Child Loop BB2_46 Depth 5
	movl	%eax, %ebp
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB2_45:                               #   Parent Loop BB2_39 Depth=1
                                        #     Parent Loop BB2_42 Depth=2
                                        #       Parent Loop BB2_44 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_46 Depth 5
	movslq	%ebp, %rdx
	leaq	(%rcx,%rdx,8), %r9
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB2_46:                               #   Parent Loop BB2_39 Depth=1
                                        #     Parent Loop BB2_42 Depth=2
                                        #       Parent Loop BB2_44 Depth=3
                                        #         Parent Loop BB2_45 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movups	%xmm0, (%r9,%r10,8)
	addq	$2, %r10
	cmpq	$8, %r10
	jne	.LBB2_46
# %bb.47:                               #   in Loop: Header=BB2_45 Depth=4
	addq	$1, %r8
	addl	$8, %ebp
	cmpq	%rsi, %r8
	jne	.LBB2_45
# %bb.48:                               #   in Loop: Header=BB2_44 Depth=3
	addq	$1, %rbx
	addl	%edi, %eax
	cmpq	%r11, %rbx
	jne	.LBB2_44
	jmp	.LBB2_49
.LBB2_54:
	movl	Ng(%rip), %r15d
	movl	Nl(%rip), %esi
	movl	Nk(%rip), %edi
	movslq	%ebx, %rax
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movl	%edx, %eax
	imull	%esi, %eax
	movl	%edi, %ecx
	imull	%r15d, %ecx
	imull	%eax, %ecx
	shll	$3, %ecx
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	movl	%esi, %r12d
	imull	%edi, %r12d
	movl	%r12d, %eax
	imull	%r15d, %eax
	shll	$3, %eax
	movl	%eax, 40(%rsp)          # 4-byte Spill
	shll	$3, %r12d
	leal	(,%rdi,8), %ecx
	movaps	.LCPI2_3(%rip), %xmm0   # xmm0 = [4.0000000000000001E-2,4.0000000000000001E-2]
	jmp	.LBB2_55
	.p2align	4, 0x90
.LBB2_66:                               #   in Loop: Header=BB2_55 Depth=1
	movl	40(%rsp), %eax          # 4-byte Reload
	addl	%eax, 24(%rsp)          # 4-byte Folded Spill
	movq	48(%rsp), %rdx          # 8-byte Reload
	cmpq	64(%rsp), %rdx          # 8-byte Folded Reload
	leaq	1(%rdx), %rdx
	jge	.LBB2_67
.LBB2_55:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_58 Depth 2
                                        #       Child Loop BB2_60 Depth 3
                                        #         Child Loop BB2_61 Depth 4
                                        #           Child Loop BB2_62 Depth 5
	movq	%rdx, 48(%rsp)          # 8-byte Spill
	testl	%r15d, %r15d
	jle	.LBB2_66
# %bb.56:                               #   in Loop: Header=BB2_55 Depth=1
	testl	%esi, %esi
	jle	.LBB2_66
# %bb.57:                               #   in Loop: Header=BB2_55 Depth=1
	movl	24(%rsp), %r14d         # 4-byte Reload
	xorl	%r8d, %r8d
	jmp	.LBB2_58
	.p2align	4, 0x90
.LBB2_65:                               #   in Loop: Header=BB2_58 Depth=2
	addq	$1, %r8
	addl	%r12d, %r14d
	cmpq	%r15, %r8
	je	.LBB2_66
.LBB2_58:                               #   Parent Loop BB2_55 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_60 Depth 3
                                        #         Child Loop BB2_61 Depth 4
                                        #           Child Loop BB2_62 Depth 5
	testl	%edi, %edi
	jle	.LBB2_65
# %bb.59:                               #   in Loop: Header=BB2_58 Depth=2
	movq	176(%rsp), %rax
	movq	(%rax), %rdx
	movl	%r14d, %r13d
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB2_60:                               #   Parent Loop BB2_55 Depth=1
                                        #     Parent Loop BB2_58 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_61 Depth 4
                                        #           Child Loop BB2_62 Depth 5
	movl	%r13d, %ebx
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB2_61:                               #   Parent Loop BB2_55 Depth=1
                                        #     Parent Loop BB2_58 Depth=2
                                        #       Parent Loop BB2_60 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_62 Depth 5
	movslq	%ebx, %rax
	leaq	(%rdx,%rax,8), %r10
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB2_62:                               #   Parent Loop BB2_55 Depth=1
                                        #     Parent Loop BB2_58 Depth=2
                                        #       Parent Loop BB2_60 Depth=3
                                        #         Parent Loop BB2_61 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movups	%xmm0, (%r10,%r11,8)
	addq	$2, %r11
	cmpq	$8, %r11
	jne	.LBB2_62
# %bb.63:                               #   in Loop: Header=BB2_61 Depth=4
	addq	$1, %r9
	addl	$8, %ebx
	cmpq	%rdi, %r9
	jne	.LBB2_61
# %bb.64:                               #   in Loop: Header=BB2_60 Depth=3
	addq	$1, %rbp
	addl	%ecx, %r13d
	cmpq	%rsi, %rbp
	jne	.LBB2_60
	jmp	.LBB2_65
.LBB2_77:
	movl	Nl(%rip), %ecx
	movl	Nk(%rip), %edx
	movl	Nj(%rip), %r14d
	movl	%eax, %esi
	imull	%ecx, %esi
	movl	%ecx, 24(%rsp)          # 4-byte Spill
	imull	%edx, %ecx
	movq	%rdx, 40(%rsp)          # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx
	imull	%r14d, %edx
	movl	%edx, 64(%rsp)          # 4-byte Spill
	imull	%edx, %esi
	movl	%esi, 60(%rsp)          # 4-byte Spill
	imull	%r14d, %ecx
	movl	%ecx, 80(%rsp)          # 4-byte Spill
	movq	%r14, %rbx
	shlq	$3, %rbx
	jmp	.LBB2_78
	.p2align	4, 0x90
.LBB2_85:                               #   in Loop: Header=BB2_78 Depth=1
	movq	88(%rsp), %rcx          # 8-byte Reload
	leal	1(%rcx), %eax
	movl	80(%rsp), %edx          # 4-byte Reload
	addl	%edx, 60(%rsp)          # 4-byte Folded Spill
	cmpl	72(%rsp), %ecx          # 4-byte Folded Reload
                                        # kill: def $eax killed $eax def $rax
	jge	.LBB2_86
.LBB2_78:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_81 Depth 2
                                        #       Child Loop BB2_83 Depth 3
	movq	%rax, 88(%rsp)          # 8-byte Spill
	cmpl	$0, 24(%rsp)            # 4-byte Folded Reload
	jle	.LBB2_85
# %bb.79:                               #   in Loop: Header=BB2_78 Depth=1
	cmpl	$0, 40(%rsp)            # 4-byte Folded Reload
	jle	.LBB2_85
# %bb.80:                               # %.preheader1
                                        #   in Loop: Header=BB2_78 Depth=1
	xorl	%r15d, %r15d
	movl	60(%rsp), %eax          # 4-byte Reload
	movl	%eax, 48(%rsp)          # 4-byte Spill
	jmp	.LBB2_81
	.p2align	4, 0x90
.LBB2_84:                               #   in Loop: Header=BB2_81 Depth=2
	addl	$1, %r15d
	movl	48(%rsp), %eax          # 4-byte Reload
	addl	64(%rsp), %eax          # 4-byte Folded Reload
	movl	%eax, 48(%rsp)          # 4-byte Spill
	cmpl	24(%rsp), %r15d         # 4-byte Folded Reload
	je	.LBB2_85
.LBB2_81:                               #   Parent Loop BB2_78 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_83 Depth 3
	testl	%r14d, %r14d
	jle	.LBB2_84
# %bb.82:                               #   in Loop: Header=BB2_81 Depth=2
	movq	208(%rsp), %rax
	movq	(%rax), %rbp
	movl	48(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r12d
	movq	40(%rsp), %r13          # 8-byte Reload
	.p2align	4, 0x90
.LBB2_83:                               #   Parent Loop BB2_78 Depth=1
                                        #     Parent Loop BB2_81 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%r12d, %r12
	leaq	(,%r12,8), %rdi
	addq	%rbp, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	addl	%r14d, %r12d
	addq	$-1, %r13
	jne	.LBB2_83
	jmp	.LBB2_84
.Lfunc_end2:
	.size	.omp_outlined., .Lfunc_end2-.omp_outlined.
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function kernel
.LCPI3_0:
	.quad	4596373779694328218     # double 0.20000000000000001
	.text
	.globl	kernel
	.p2align	4, 0x90
	.type	kernel,@function
kernel:                                 # @kernel
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	subq	$224, %rsp
	.cfi_def_cfa_offset 280
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	%r8d, -124(%rsp)        # 4-byte Spill
	movl	%ecx, -116(%rsp)        # 4-byte Spill
	movl	%edx, -120(%rsp)        # 4-byte Spill
	movl	%edi, -128(%rsp)        # 4-byte Spill
	testl	%r9d, %r9d
	jle	.LBB3_17
# %bb.1:
	movl	-128(%rsp), %eax        # 4-byte Reload
	movl	-124(%rsp), %r8d        # 4-byte Reload
	movl	-116(%rsp), %ebx        # 4-byte Reload
	movl	-120(%rsp), %esi        # 4-byte Reload
	movq	%r8, %rdi
	imulq	%rax, %rdi
	imulq	%rbx, %rdi
	movq	%rdi, 48(%rsp)          # 8-byte Spill
	movq	%r8, %rcx
	imulq	%rbx, %rcx
	movq	%rcx, %rdi
	imulq	%rsi, %rdi
	movq	%rbx, %rdx
	imulq	%rsi, %rdx
	movl	%r9d, %ebp
	movq	%rbp, 88(%rsp)          # 8-byte Spill
	movq	%rdi, %rbp
	imulq	%rax, %rbp
	shlq	$6, %rbp
	movq	%rbp, 80(%rsp)          # 8-byte Spill
	movq	%rdi, -8(%rsp)          # 8-byte Spill
	shlq	$6, %rdi
	movq	%rdi, 112(%rsp)         # 8-byte Spill
	movq	%rdx, %rdi
	shlq	$6, %rdi
	movq	%rdi, 16(%rsp)          # 8-byte Spill
	movq	%rsi, %rdi
	shlq	$6, %rdi
	movq	%rdi, 40(%rsp)          # 8-byte Spill
	movq	%rcx, %rdi
	imulq	%rax, %rdi
	shlq	$6, %rdi
	movq	%rdi, 72(%rsp)          # 8-byte Spill
	shlq	$6, %rcx
	movq	%rcx, 120(%rsp)         # 8-byte Spill
	movq	%rbx, 176(%rsp)         # 8-byte Spill
	shlq	$6, %rbx
	movq	%rbx, 160(%rsp)         # 8-byte Spill
	movq	%r8, 168(%rsp)          # 8-byte Spill
	imulq	%rsi, %r8
	movq	%r8, %rcx
	imulq	%rax, %rcx
	shlq	$6, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	shlq	$6, %r8
	movq	%r8, 104(%rsp)          # 8-byte Spill
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	movq	%rax, 128(%rsp)         # 8-byte Spill
	imulq	%rax, %rdx
	shlq	$6, %rdx
	movq	%rdx, 56(%rsp)          # 8-byte Spill
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movq	312(%rsp), %rax
	movq	%rax, -88(%rsp)         # 8-byte Spill
	movq	304(%rsp), %rax
	movq	%rax, -96(%rsp)         # 8-byte Spill
	movq	296(%rsp), %rax
	movq	%rax, -104(%rsp)        # 8-byte Spill
	movq	288(%rsp), %rax
	movq	280(%rsp), %rcx
	movq	%rcx, -16(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, -112(%rsp)        # 8-byte Spill
	movq	%rax, -24(%rsp)         # 8-byte Spill
	jmp	.LBB3_2
	.p2align	4, 0x90
.LBB3_16:                               #   in Loop: Header=BB3_2 Depth=1
	movq	-112(%rsp), %rdx        # 8-byte Reload
	addq	$1, %rdx
	movq	80(%rsp), %rax          # 8-byte Reload
	addq	%rax, -16(%rsp)         # 8-byte Folded Spill
	movq	-88(%rsp), %rcx         # 8-byte Reload
	addq	72(%rsp), %rcx          # 8-byte Folded Reload
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	movq	-96(%rsp), %rcx         # 8-byte Reload
	addq	64(%rsp), %rcx          # 8-byte Folded Reload
	movq	%rcx, -96(%rsp)         # 8-byte Spill
	movq	-104(%rsp), %rcx        # 8-byte Reload
	addq	56(%rsp), %rcx          # 8-byte Folded Reload
	movq	%rcx, -104(%rsp)        # 8-byte Spill
	addq	%rax, -24(%rsp)         # 8-byte Folded Spill
	movq	%rdx, %rax
	movq	%rdx, -112(%rsp)        # 8-byte Spill
	cmpq	88(%rsp), %rdx          # 8-byte Folded Reload
	je	.LBB3_17
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
                                        #       Child Loop BB3_6 Depth 3
                                        #         Child Loop BB3_9 Depth 4
                                        #           Child Loop BB3_10 Depth 5
                                        #             Child Loop BB3_11 Depth 6
	cmpl	$0, -128(%rsp)          # 4-byte Folded Reload
	jle	.LBB3_16
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	movq	-112(%rsp), %rcx        # 8-byte Reload
	movq	%rcx, %rax
	imulq	%rsi, %rax
	imulq	48(%rsp), %rax          # 8-byte Folded Reload
	shlq	$6, %rax
	addq	288(%rsp), %rax
	movq	%rax, 96(%rsp)          # 8-byte Spill
	movq	-8(%rsp), %rax          # 8-byte Reload
	imulq	%rcx, %rax
	movq	344(%rsp), %rcx
	leaq	(%rcx,%rax,8), %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	movq	-24(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	320(%rsp), %r12
	movq	-104(%rsp), %rax        # 8-byte Reload
	movq	%rax, -56(%rsp)         # 8-byte Spill
	movq	328(%rsp), %r15
	movq	-96(%rsp), %rax         # 8-byte Reload
	movq	%rax, -64(%rsp)         # 8-byte Spill
	movq	336(%rsp), %r14
	movq	-88(%rsp), %rax         # 8-byte Reload
	movq	%rax, -72(%rsp)         # 8-byte Spill
	movq	-16(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -80(%rsp)         # 8-byte Spill
	jmp	.LBB3_4
	.p2align	4, 0x90
.LBB3_15:                               #   in Loop: Header=BB3_4 Depth=2
	movq	-80(%rsp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	112(%rsp), %rax         # 8-byte Reload
	addq	%rax, (%rsp)            # 8-byte Folded Spill
	movq	-72(%rsp), %rcx         # 8-byte Reload
	addq	120(%rsp), %rcx         # 8-byte Folded Reload
	movq	%rcx, -72(%rsp)         # 8-byte Spill
	addq	$64, %r14
	movq	-64(%rsp), %rcx         # 8-byte Reload
	addq	104(%rsp), %rcx         # 8-byte Folded Reload
	movq	%rcx, -64(%rsp)         # 8-byte Spill
	addq	$64, %r15
	movq	-56(%rsp), %rcx         # 8-byte Reload
	addq	16(%rsp), %rcx          # 8-byte Folded Reload
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	addq	$64, %r12
	addq	%rax, 8(%rsp)           # 8-byte Folded Spill
	movq	%rdx, %rax
	movq	%rdx, -80(%rsp)         # 8-byte Spill
	cmpq	128(%rsp), %rdx         # 8-byte Folded Reload
	je	.LBB3_16
.LBB3_4:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_6 Depth 3
                                        #         Child Loop BB3_9 Depth 4
                                        #           Child Loop BB3_10 Depth 5
                                        #             Child Loop BB3_11 Depth 6
	cmpl	$0, -124(%rsp)          # 4-byte Folded Reload
	jle	.LBB3_15
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=2
	movq	-8(%rsp), %rax          # 8-byte Reload
	imulq	-80(%rsp), %rax         # 8-byte Folded Reload
	shlq	$6, %rax
	addq	96(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 152(%rsp)         # 8-byte Spill
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	-64(%rsp), %rax         # 8-byte Reload
	movq	%rax, -32(%rsp)         # 8-byte Spill
	movq	-72(%rsp), %rax         # 8-byte Reload
	movq	%rax, -40(%rsp)         # 8-byte Spill
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rax, 24(%rsp)          # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -48(%rsp)         # 8-byte Spill
	jmp	.LBB3_6
	.p2align	4, 0x90
.LBB3_14:                               #   in Loop: Header=BB3_6 Depth=3
	movq	-48(%rsp), %rdx         # 8-byte Reload
	addq	$1, %rdx
	movq	16(%rsp), %rax          # 8-byte Reload
	addq	%rax, 24(%rsp)          # 8-byte Folded Spill
	movq	-40(%rsp), %rcx         # 8-byte Reload
	addq	160(%rsp), %rcx         # 8-byte Folded Reload
	movq	%rcx, -40(%rsp)         # 8-byte Spill
	movq	-32(%rsp), %rcx         # 8-byte Reload
	addq	40(%rsp), %rcx          # 8-byte Folded Reload
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	addq	%rax, 32(%rsp)          # 8-byte Folded Spill
	movq	%rdx, %rax
	movq	%rdx, -48(%rsp)         # 8-byte Spill
	cmpq	168(%rsp), %rdx         # 8-byte Folded Reload
	je	.LBB3_15
.LBB3_6:                                #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_9 Depth 4
                                        #           Child Loop BB3_10 Depth 5
                                        #             Child Loop BB3_11 Depth 6
	cmpl	$0, -116(%rsp)          # 4-byte Folded Reload
	jle	.LBB3_14
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=3
	cmpl	$0, -120(%rsp)          # 4-byte Folded Reload
	jle	.LBB3_14
# %bb.8:                                #   in Loop: Header=BB3_6 Depth=3
	movq	136(%rsp), %rcx         # 8-byte Reload
	imulq	-48(%rsp), %rcx         # 8-byte Folded Reload
	movq	144(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, 184(%rsp)         # 8-byte Spill
	shlq	$6, %rcx
	addq	152(%rsp), %rcx         # 8-byte Folded Reload
	movq	%rcx, 192(%rsp)         # 8-byte Spill
	movq	32(%rsp), %r10          # 8-byte Reload
	movq	-56(%rsp), %rbx         # 8-byte Reload
	movq	-40(%rsp), %r13         # 8-byte Reload
	movq	24(%rsp), %rdx          # 8-byte Reload
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB3_9:                                #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_10 Depth 5
                                        #             Child Loop BB3_11 Depth 6
	movq	%rax, %rdi
	imulq	%rsi, %rdi
	movq	184(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rdi,8), %rcx
	shlq	$6, %rdi
	addq	192(%rsp), %rdi         # 8-byte Folded Reload
	movq	%r10, 216(%rsp)         # 8-byte Spill
	movq	%rbx, 208(%rsp)         # 8-byte Spill
	movq	-32(%rsp), %r11         # 8-byte Reload
	movq	%rdx, 200(%rsp)         # 8-byte Spill
	xorl	%r9d, %r9d
	.p2align	4, 0x90
.LBB3_10:                               #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_9 Depth=4
                                        # =>        This Loop Header: Depth=5
                                        #             Child Loop BB3_11 Depth 6
	movq	%r9, %rbp
	shlq	$6, %rbp
	prefetcht1	2048(%rdi,%rbp)
	xorpd	%xmm1, %xmm1
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB3_11:                               #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_9 Depth=4
                                        #           Parent Loop BB3_10 Depth=5
                                        # =>          This Inner Loop Header: Depth=6
	movsd	(%rbx,%r8), %xmm2       # xmm2 = mem[0],zero
	movsd	(%r12,%r8), %xmm3       # xmm3 = mem[0],zero
	mulsd	%xmm2, %xmm3
	addsd	(%r10,%r8), %xmm3
	movsd	(%r11,%r8), %xmm4       # xmm4 = mem[0],zero
	movsd	(%r15,%r8), %xmm5       # xmm5 = mem[0],zero
	mulsd	%xmm4, %xmm5
	addsd	%xmm3, %xmm5
	movsd	(%r13,%r8), %xmm3       # xmm3 = mem[0],zero
	movsd	(%r14,%r8), %xmm6       # xmm6 = mem[0],zero
	mulsd	%xmm3, %xmm6
	addsd	%xmm5, %xmm6
	movntsd	%xmm6, (%rdx,%r8)
	addsd	%xmm6, %xmm1
	mulsd	%xmm0, %xmm6
	movapd	%xmm6, %xmm5
	subsd	%xmm2, %xmm5
	movsd	%xmm5, (%rbx,%r8)
	movapd	%xmm6, %xmm2
	subsd	%xmm4, %xmm2
	movsd	%xmm2, (%r11,%r8)
	subsd	%xmm3, %xmm6
	movsd	%xmm6, (%r13,%r8)
	addq	$8, %r8
	cmpq	$64, %r8
	jne	.LBB3_11
# %bb.12:                               #   in Loop: Header=BB3_10 Depth=5
	addsd	(%rcx,%r9,8), %xmm1
	movsd	%xmm1, (%rcx,%r9,8)
	addq	$1, %r9
	addq	$64, %rdx
	addq	$64, %r11
	addq	$64, %rbx
	addq	$64, %r10
	cmpq	%rsi, %r9
	jne	.LBB3_10
# %bb.13:                               #   in Loop: Header=BB3_9 Depth=4
	addq	$1, %rax
	movq	40(%rsp), %rcx          # 8-byte Reload
	movq	200(%rsp), %rdx         # 8-byte Reload
	addq	%rcx, %rdx
	addq	$64, %r13
	movq	208(%rsp), %rbx         # 8-byte Reload
	addq	%rcx, %rbx
	movq	216(%rsp), %r10         # 8-byte Reload
	addq	%rcx, %r10
	cmpq	176(%rsp), %rax         # 8-byte Folded Reload
	jne	.LBB3_9
	jmp	.LBB3_14
.LBB3_17:
	addq	$224, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	kernel, .Lfunc_end3-kernel
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MEGA-STREAM! - v%s\n\n"
	.size	.L.str, 21

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"2.0"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Small arrays:  %d elements\t\t(%.1lf KB)\n"
	.size	.L.str.2, 40

	.type	Ni,@object              # @Ni
	.data
	.globl	Ni
	.p2align	2
Ni:
	.long	128                     # 0x80
	.size	Ni, 4

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"Medium arrays: %d x %d x %d x %d elements\t(%.1lf MB)\n"
	.size	.L.str.3, 54

	.type	Nj,@object              # @Nj
	.data
	.globl	Nj
	.p2align	2
Nj:
	.long	16                      # 0x10
	.size	Nj, 4

	.type	Nm,@object              # @Nm
	.globl	Nm
	.p2align	2
Nm:
	.long	64                      # 0x40
	.size	Nm, 4

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Large arrays:  %d x %d x %d x %d x %d elements\t(%.1lf MB)\n"
	.size	.L.str.4, 59

	.type	Nk,@object              # @Nk
	.data
	.globl	Nk
	.p2align	2
Nk:
	.long	16                      # 0x10
	.size	Nk, 4

	.type	Nl,@object              # @Nl
	.globl	Nl
	.p2align	2
Nl:
	.long	16                      # 0x10
	.size	Nl, 4

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"Memory footprint: %.1lf MB\n"
	.size	.L.str.5, 28

	.type	Ng,@object              # @Ng
	.comm	Ng,4,4
	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Inner dimension split into %d chunks of size %d\n"
	.size	.L.str.6, 49

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"Running %d times\n"
	.size	.L.str.7, 18

	.type	ntimes,@object          # @ntimes
	.data
	.globl	ntimes
	.p2align	2
ntimes:
	.long	100                     # 0x64
	.size	ntimes, 4

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	";unknown;unknown;0;0;;"
	.size	.L.str.9, 23

	.type	.L__unnamed_2,@object   # @0
	.data
	.p2align	3
.L__unnamed_2:
	.long	0                       # 0x0
	.long	514                     # 0x202
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.9
	.size	.L__unnamed_2, 24

	.type	.L__unnamed_3,@object   # @1
	.p2align	3
.L__unnamed_3:
	.long	0                       # 0x0
	.long	66                      # 0x42
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.9
	.size	.L__unnamed_3, 24

	.type	.L__unnamed_1,@object   # @2
	.p2align	3
.L__unnamed_1:
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.9
	.size	.L__unnamed_1, 24

	.type	.L.str.10,@object       # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"Sum total: %lf\n"
	.size	.L.str.10, 16

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"%12.1f %11.6f %11.6f %11.6f\n"
	.size	.L.str.12, 29

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Total time: %11.6f\n"
	.size	.L.str.13, 20

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"--outer"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"--inner"
	.size	.L.str.15, 8

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"--middle"
	.size	.L.str.16, 9

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"--Nj"
	.size	.L.str.17, 5

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"--ntimes"
	.size	.L.str.18, 9

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"ntimes must be 2 or greater\n"
	.size	.L.str.19, 29

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"--help"
	.size	.L.str.20, 7

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"Usage: %s [OPTION]\n"
	.size	.L.str.21, 20

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\t Outer   is %12d elements\n"
	.size	.L.str.27, 28

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"\t Middle are %12d elements\n"
	.size	.L.str.28, 28

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"\t Inner   is %12d elements\n"
	.size	.L.str.29, 28

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Unrecognised argument \"%s\"\n"
	.size	.L.str.30, 28

	.type	.Lstr,@object           # @str
.Lstr:
	.asciz	"Bandwidth MB/s  Min time    Max time    Avg time"
	.size	.Lstr, 49

	.type	.Lstr.31,@object        # @str.31
.Lstr.31:
	.asciz	"\t --outer  n \tSet size of outer dimension"
	.size	.Lstr.31, 42

	.type	.Lstr.32,@object        # @str.32
.Lstr.32:
	.asciz	"\t --inner  n \tSet size of middle dimensions"
	.size	.Lstr.32, 44

	.type	.Lstr.33,@object        # @str.33
.Lstr.33:
	.asciz	"\t --middle n \tSet size of inner dimension"
	.size	.Lstr.33, 42

	.type	.Lstr.34,@object        # @str.34
.Lstr.34:
	.asciz	"\t --Nj     n \tSet size of the j dimension"
	.size	.Lstr.34, 42

	.type	.Lstr.35,@object        # @str.35
.Lstr.35:
	.asciz	"\t --ntimes n\tRun the benchmark n times"
	.size	.Lstr.35, 39

	.ident	"clang version 10.0.0-++20200412073436+50d7e5d5e7d-1~exp1~20200412054917.132 "
	.section	".note.GNU-stack","",@progbits
