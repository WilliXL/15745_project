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
	movl	Nj(%rip), %edx
	movl	Nk(%rip), %ecx
	movl	Nm(%rip), %r8d
	movl	%edx, %eax
	imull	%esi, %eax
	movl	%r8d, %edi
	imull	%ecx, %edi
	movl	Nl(%rip), %r10d
	movl	%esi, %ebx
	imull	%r10d, %ebx
	imull	%edi, %ebx
	imull	%eax, %edi
	movslq	%edi, %rdi
	shlq	$3, %rdi
	movq	%rdi, %xmm1
	movdqa	.LCPI0_0(%rip), %xmm4   # xmm4 = [1127219200,1160773632,0,0]
	punpckldq	%xmm4, %xmm1    # xmm1 = xmm1[0],xmm4[0],xmm1[1],xmm4[1]
	movapd	.LCPI0_1(%rip), %xmm5   # xmm5 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm5, %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	movsd	.LCPI0_3(%rip), %xmm6   # xmm6 = mem[0],zero
	mulsd	%xmm6, %xmm0
	movl	%r8d, %edi
	imull	%r10d, %edi
	imull	%eax, %edi
	movslq	%edi, %rax
	shlq	$3, %rax
	movq	%rax, %xmm2
	punpckldq	%xmm4, %xmm2    # xmm2 = xmm2[0],xmm4[0],xmm2[1],xmm4[1]
	subpd	%xmm5, %xmm2
	movapd	%xmm2, %xmm1
	unpckhpd	%xmm2, %xmm1    # xmm1 = xmm1[1],xmm2[1]
	addsd	%xmm2, %xmm1
	mulsd	%xmm6, %xmm1
	movslq	%ebx, %rax
	shlq	$3, %rax
	movq	%rax, %xmm3
	punpckldq	%xmm4, %xmm3    # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	subpd	%xmm5, %xmm3
	movapd	%xmm3, %xmm2
	unpckhpd	%xmm3, %xmm2    # xmm2 = xmm2[1],xmm3[1]
	addsd	%xmm3, %xmm2
	mulsd	%xmm6, %xmm2
	subq	$8, %rsp
	movl	$.L.str.3, %edi
	movl	%esi, %r9d
	movb	$3, %al
	pushq	%r8
	pushq	%r10
	pushq	%rcx
	pushq	%rsi
	pushq	%r8
	pushq	%r10
	pushq	%rdx
	callq	printf
	addq	$64, %rsp
	movl	Ni(%rip), %esi
	movl	Nj(%rip), %edx
	movl	Nk(%rip), %ecx
	movl	Nl(%rip), %r8d
	movl	Nm(%rip), %r9d
	movl	%edx, %eax
	imull	%esi, %eax
	movl	%ecx, %edi
	imull	%r8d, %edi
	imull	%eax, %edi
	imull	%r9d, %edi
	movslq	%edi, %rax
	shlq	$3, %rax
	movq	%rax, %xmm1
	punpckldq	.LCPI0_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI0_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	mulsd	.LCPI0_3(%rip), %xmm0
	movl	$.L.str.4, %edi
	movb	$1, %al
	callq	printf
	movl	Ni(%rip), %edx
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edx, %xmm1
	movapd	%xmm1, %xmm0
	movl	Nj(%rip), %ebx
	xorps	%xmm2, %xmm2
	cvtsi2sd	%ebx, %xmm2
	addsd	%xmm1, %xmm0
	movl	Nk(%rip), %ecx
	xorps	%xmm3, %xmm3
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
	movl	Ni(%rip), %edi
	movl	%edi, -96(%rbp)         # 4-byte Spill
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
	imull	%edi, %eax
	movl	%eax, -156(%rbp)        # 4-byte Spill
	movl	ntimes(%rip), %esi
	movl	$.L.str.6, %edi
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
	movslq	Ni(%rip), %rax
	movslq	Nj(%rip), %rcx
	imulq	%rax, %rcx
	movslq	Nk(%rip), %rax
	movslq	Nl(%rip), %rdx
	imulq	%rax, %rdx
	imulq	%rcx, %rdx
	movslq	Nm(%rip), %rsi
	imulq	%rdx, %rsi
	shlq	$3, %rsi
	movl	$2097152, %edi          # imm = 0x200000
	callq	aligned_alloc
	movq	%rax, -80(%rbp)
	movslq	Ni(%rip), %rax
	movslq	Nj(%rip), %rcx
	imulq	%rax, %rcx
	movslq	Nk(%rip), %rax
	movslq	Nl(%rip), %rdx
	imulq	%rax, %rdx
	imulq	%rcx, %rdx
	movslq	Nm(%rip), %rsi
	imulq	%rdx, %rsi
	shlq	$3, %rsi
	movl	$2097152, %edi          # imm = 0x200000
	callq	aligned_alloc
	movq	%rax, -72(%rbp)
	movslq	Ni(%rip), %rax
	movslq	Nj(%rip), %rcx
	imulq	%rax, %rcx
	movslq	Nk(%rip), %rax
	movslq	Nm(%rip), %rsi
	imulq	%rax, %rsi
	imulq	%rcx, %rsi
	shlq	$3, %rsi
	movl	$2097152, %edi          # imm = 0x200000
	callq	aligned_alloc
	movq	%rax, -152(%rbp)
	movslq	Ni(%rip), %rax
	movslq	Nj(%rip), %rcx
	imulq	%rax, %rcx
	movslq	Nl(%rip), %rax
	movslq	Nm(%rip), %rsi
	imulq	%rax, %rsi
	imulq	%rcx, %rsi
	shlq	$3, %rsi
	movl	$2097152, %edi          # imm = 0x200000
	callq	aligned_alloc
	movq	%rax, -144(%rbp)
	movslq	Ni(%rip), %rax
	movslq	Nk(%rip), %rcx
	imulq	%rax, %rcx
	movslq	Nl(%rip), %rax
	movslq	Nm(%rip), %rsi
	imulq	%rax, %rsi
	imulq	%rcx, %rsi
	shlq	$3, %rsi
	movl	$2097152, %edi          # imm = 0x200000
	callq	aligned_alloc
	movq	%rax, -136(%rbp)
	movslq	Ni(%rip), %rsi
	shlq	$3, %rsi
	movl	$2097152, %edi          # imm = 0x200000
	callq	aligned_alloc
	movq	%rax, -128(%rbp)
	movslq	Ni(%rip), %rsi
	shlq	$3, %rsi
	movl	$2097152, %edi          # imm = 0x200000
	callq	aligned_alloc
	movq	%rax, -120(%rbp)
	movslq	Ni(%rip), %rsi
	shlq	$3, %rsi
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
	leaq	-128(%rbp), %r14
	leaq	-136(%rbp), %r13
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
	pushq	%r14
	pushq	%r13
	pushq	%r15
	callq	__kmpc_fork_call
	addq	$48, %rsp
	callq	omp_get_wtime
	movsd	%xmm0, -168(%rbp)       # 8-byte Spill
	movl	ntimes(%rip), %ebx
	callq	omp_get_wtime
	cvtsi2sdl	-156(%rbp), %xmm1 # 4-byte Folded Reload
	movapd	%xmm0, %xmm5
	cvtsi2sdl	-96(%rbp), %xmm7 # 4-byte Folded Reload
	addsd	%xmm7, %xmm7
	cvtsi2sdl	-104(%rbp), %xmm6 # 4-byte Folded Reload
	movapd	%xmm7, %xmm0
	cvtsi2sdl	-48(%rbp), %xmm2 # 4-byte Folded Reload
	mulsd	%xmm6, %xmm0
	movapd	%xmm0, %xmm3
	mulsd	%xmm2, %xmm3
	cvtsi2sdl	-56(%rbp), %xmm4 # 4-byte Folded Reload
	mulsd	%xmm4, %xmm3
	addsd	%xmm1, %xmm3
	xorps	%xmm1, %xmm1
	cvtsi2sdl	-64(%rbp), %xmm1 # 4-byte Folded Reload
	mulsd	%xmm1, %xmm0
	mulsd	%xmm4, %xmm0
	addsd	%xmm3, %xmm0
	mulsd	%xmm2, %xmm7
	mulsd	%xmm1, %xmm7
	mulsd	%xmm4, %xmm7
	addsd	%xmm0, %xmm7
	addsd	%xmm6, %xmm6
	mulsd	%xmm2, %xmm6
	mulsd	%xmm1, %xmm6
	mulsd	%xmm4, %xmm6
	testl	%ebx, %ebx
	movsd	%xmm6, -56(%rbp)        # 8-byte Spill
	movsd	%xmm7, -48(%rbp)        # 8-byte Spill
	jle	.LBB0_3
# %bb.1:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movsd	%xmm5, -64(%rbp)        # 8-byte Spill
	movl	Ni(%rip), %edi
	movl	Nj(%rip), %esi
	movl	Nk(%rip), %edx
	movl	Nl(%rip), %ecx
	movl	Nm(%rip), %r8d
	movq	-72(%rbp), %r9
	pushq	-88(%rbp)
	pushq	-112(%rbp)
	pushq	-120(%rbp)
	pushq	-128(%rbp)
	pushq	-136(%rbp)
	pushq	-144(%rbp)
	pushq	-152(%rbp)
	pushq	-80(%rbp)
	callq	kernel
	addq	$64, %rsp
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
	movapd	%xmm0, %xmm5
	cmpq	%r14, %rbx
	jl	.LBB0_2
.LBB0_3:
	movl	Nk(%rip), %eax
	imull	Nj(%rip), %eax
	imull	Nl(%rip), %eax
	imull	Nm(%rip), %eax
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	addsd	-48(%rbp), %xmm1        # 8-byte Folded Reload
	xorpd	%xmm0, %xmm0
	testl	%eax, %eax
	jle	.LBB0_9
# %bb.4:
	movq	-88(%rbp), %rcx
	movl	%eax, %esi
	leaq	-1(%rsi), %rdx
	movl	%esi, %eax
	andl	$7, %eax
	cmpq	$7, %rdx
	jae	.LBB0_16
# %bb.5:
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	jmp	.LBB0_6
.LBB0_16:
	subq	%rax, %rsi
	xorpd	%xmm0, %xmm0
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	addsd	(%rcx,%rdx,8), %xmm0
	addsd	8(%rcx,%rdx,8), %xmm0
	addsd	16(%rcx,%rdx,8), %xmm0
	addsd	24(%rcx,%rdx,8), %xmm0
	addsd	32(%rcx,%rdx,8), %xmm0
	addsd	40(%rcx,%rdx,8), %xmm0
	addsd	48(%rcx,%rdx,8), %xmm0
	addsd	56(%rcx,%rdx,8), %xmm0
	addq	$8, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB0_17
.LBB0_6:
	testq	%rax, %rax
	je	.LBB0_9
# %bb.7:                                # %.preheader
	leaq	(%rcx,%rdx,8), %rcx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	addsd	(%rcx,%rdx,8), %xmm0
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.LBB0_8
.LBB0_9:
	xorpd	%xmm2, %xmm2
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	movsd	%xmm5, -64(%rbp)        # 8-byte Spill
	mulsd	.LCPI0_5(%rip), %xmm1
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	movl	$.L.str.9, %edi
	movb	$1, %al
	callq	printf
	movl	ntimes(%rip), %eax
	cmpl	$2, %eax
	jl	.LBB0_10
# %bb.11:
	leal	-1(%rax), %ecx
	andl	$1, %ecx
	cmpl	$2, %eax
	jne	.LBB0_18
# %bb.12:
	movsd	.LCPI0_6(%rip), %xmm3   # xmm3 = mem[0],zero
	xorpd	%xmm4, %xmm4
	movl	$1, %edx
	xorpd	%xmm2, %xmm2
	jmp	.LBB0_13
.LBB0_10:
	movsd	.LCPI0_6(%rip), %xmm3   # xmm3 = mem[0],zero
	xorpd	%xmm4, %xmm4
	jmp	.LBB0_15
.LBB0_18:
	movq	%rax, %rsi
	subq	%rcx, %rsi
	movsd	.LCPI0_6(%rip), %xmm3   # xmm3 = mem[0],zero
	xorpd	%xmm4, %xmm4
	movl	$1, %edx
	xorpd	%xmm2, %xmm2
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movsd	(%r12,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	movsd	8(%r12,%rdx,8), %xmm1   # xmm1 = mem[0],zero
	minsd	%xmm0, %xmm3
	maxsd	%xmm0, %xmm2
	addsd	%xmm0, %xmm4
	minsd	%xmm1, %xmm3
	maxsd	%xmm1, %xmm2
	addsd	%xmm1, %xmm4
	addq	$2, %rdx
	cmpq	%rdx, %rsi
	jne	.LBB0_19
.LBB0_13:
	movsd	%xmm2, -48(%rbp)        # 8-byte Spill
	testq	%rcx, %rcx
	je	.LBB0_15
# %bb.14:
	movsd	(%r12,%rdx,8), %xmm0    # xmm0 = mem[0],zero
	addsd	%xmm0, %xmm4
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	maxsd	%xmm0, %xmm1
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	minsd	%xmm0, %xmm3
.LBB0_15:
	movsd	%xmm3, -96(%rbp)        # 8-byte Spill
	addl	$-1, %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	divsd	%xmm0, %xmm4
	movsd	%xmm4, -104(%rbp)       # 8-byte Spill
	movl	$10, %edi
	callq	putchar
	movl	$.Lstr, %edi
	callq	puts
	movsd	-56(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	-96(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	movl	$.L.str.11, %edi
	movsd	-48(%rbp), %xmm2        # 8-byte Reload
                                        # xmm2 = mem[0],zero
	movsd	-104(%rbp), %xmm3       # 8-byte Reload
                                        # xmm3 = mem[0],zero
	movb	$4, %al
	callq	printf
	movsd	-64(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	subsd	-168(%rbp), %xmm0       # 8-byte Folded Reload
	movl	$.L.str.12, %edi
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
	movl	$.L.str.13, %esi
	movq	%rbp, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_3
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.14, %esi
	movq	%rbp, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_5
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.15, %esi
	movq	%rbp, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_7
# %bb.8:                                #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.16, %esi
	movq	%rbp, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_9
# %bb.12:                               #   in Loop: Header=BB1_2 Depth=1
	movl	$.L.str.17, %esi
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
	movl	$.L.str.19, %esi
	movq	%rbp, %rdi
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB1_17
# %bb.18:
	movq	(%r15), %rsi
	movl	$.L.str.20, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$.Lstr.30, %edi
	callq	puts
	movl	$.Lstr.31, %edi
	callq	puts
	movl	$.Lstr.32, %edi
	callq	puts
	movl	$.Lstr.33, %edi
	callq	puts
	movl	$.Lstr.34, %edi
	callq	puts
	movl	$10, %edi
	callq	putchar
	movl	$.L.str.26, %edi
	movl	$64, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.27, %edi
	movl	$16, %esi
	xorl	%eax, %eax
	callq	printf
	movl	$.L.str.28, %edi
	movl	$128, %esi
	xorl	%eax, %eax
	callq	printf
	xorl	%edi, %edi
	callq	exit
.LBB1_15:
	movq	stderr(%rip), %rcx
	movl	$.L.str.18, %edi
	movl	$28, %esi
	movl	$1, %edx
	callq	fwrite
	movl	$1, %edi
	callq	exit
.LBB1_17:
	movq	stderr(%rip), %rdi
	movl	$.L.str.29, %esi
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
.LCPI2_4:
	.quad	4588807732320345784     # double 0.059999999999999998
	.quad	4588807732320345784     # double 0.059999999999999998
.LCPI2_5:
	.quad	4589708452245819884     # double 0.070000000000000007
	.quad	4589708452245819884     # double 0.070000000000000007
.LCPI2_6:
	.quad	4590429028186199163     # double 0.080000000000000002
	.quad	4590429028186199163     # double 0.080000000000000002
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
	subq	$296, %rsp              # imm = 0x128
	.cfi_def_cfa_offset 352
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movq	%r9, 288(%rsp)          # 8-byte Spill
	movq	%r8, 280(%rsp)          # 8-byte Spill
	movq	%rcx, 200(%rsp)         # 8-byte Spill
	movq	%rdx, 240(%rsp)         # 8-byte Spill
	movl	Nm(%rip), %ebx
	testl	%ebx, %ebx
	jle	.LBB2_3
# %bb.1:
	leal	-1(%rbx), %ebp
	movl	$0, 16(%rsp)
	movl	%ebp, 12(%rsp)
	movl	$1, 24(%rsp)
	movl	$0, 20(%rsp)
	movl	(%rdi), %esi
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	32(%rsp), %rax
	leaq	28(%rsp), %rcx
	leaq	24(%rsp), %r8
	leaq	20(%rsp), %r9
	movl	$.L__unnamed_2, %edi
	movl	%esi, 36(%rsp)          # 4-byte Spill
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
	movl	12(%rsp), %eax
	cmpl	%ebx, %eax
	cmovll	%eax, %ebp
	movl	%ebp, 12(%rsp)
	movl	16(%rsp), %edx
	movl	%ebp, 264(%rsp)         # 4-byte Spill
	cmpl	%ebp, %edx
	jle	.LBB2_26
.LBB2_2:
	movl	$.L__unnamed_2, %edi
	movl	28(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %esi
	callq	__kmpc_for_static_fini
	jmp	.LBB2_4
.LBB2_3:
	movl	(%rdi), %r12d
.LBB2_4:
	movl	$.L__unnamed_3, %edi
	movl	%r12d, %esi
	callq	__kmpc_barrier
	movl	Nm(%rip), %ebp
	testl	%ebp, %ebp
	movl	%r12d, 28(%rsp)         # 4-byte Spill
	jle	.LBB2_7
# %bb.5:
	leal	-1(%rbp), %ebx
	movl	$0, 16(%rsp)
	movl	%ebx, 12(%rsp)
	movl	$1, 24(%rsp)
	movl	$0, 20(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	32(%rsp), %rax
	leaq	28(%rsp), %rcx
	leaq	24(%rsp), %r8
	leaq	20(%rsp), %r9
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
	movl	12(%rsp), %eax
	cmpl	%ebp, %eax
	cmovll	%eax, %ebx
	movl	%ebx, 12(%rsp)
	movslq	16(%rsp), %rax
	cmpl	%ebx, %eax
	jle	.LBB2_54
.LBB2_6:
	movl	$.L__unnamed_2, %edi
	movl	28(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %esi
	callq	__kmpc_for_static_fini
.LBB2_7:
	movl	$.L__unnamed_3, %edi
	movl	%r12d, %esi
	callq	__kmpc_barrier
	movl	Nm(%rip), %ebp
	testl	%ebp, %ebp
	jle	.LBB2_10
# %bb.8:
	leal	-1(%rbp), %ebx
	movl	$0, 16(%rsp)
	movl	%ebx, 12(%rsp)
	movl	$1, 24(%rsp)
	movl	$0, 20(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	32(%rsp), %rax
	leaq	28(%rsp), %rcx
	leaq	24(%rsp), %r8
	leaq	20(%rsp), %r9
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
	movl	12(%rsp), %eax
	cmpl	%ebp, %eax
	cmovll	%eax, %ebx
	movl	%ebx, 12(%rsp)
	movslq	16(%rsp), %rax
	cmpl	%ebx, %eax
	jle	.LBB2_73
.LBB2_9:
	movl	$.L__unnamed_2, %edi
	movl	28(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %esi
	callq	__kmpc_for_static_fini
.LBB2_10:
	movl	$.L__unnamed_3, %edi
	movl	%r12d, %esi
	callq	__kmpc_barrier
	movl	Nm(%rip), %ebp
	testl	%ebp, %ebp
	jle	.LBB2_13
# %bb.11:
	leal	-1(%rbp), %ebx
	movl	$0, 16(%rsp)
	movl	%ebx, 12(%rsp)
	movl	$1, 24(%rsp)
	movl	$0, 20(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	32(%rsp), %rax
	leaq	28(%rsp), %rcx
	leaq	24(%rsp), %r8
	leaq	20(%rsp), %r9
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
	movl	12(%rsp), %eax
	cmpl	%ebp, %eax
	cmovll	%eax, %ebx
	movl	%ebx, 12(%rsp)
	movslq	16(%rsp), %rax
	cmpl	%ebx, %eax
	jle	.LBB2_92
.LBB2_12:
	movl	$.L__unnamed_2, %edi
	movl	28(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %esi
	callq	__kmpc_for_static_fini
.LBB2_13:
	movl	$.L__unnamed_3, %edi
	movl	%r12d, %esi
	callq	__kmpc_barrier
	movl	Ni(%rip), %ebp
	testl	%ebp, %ebp
	jle	.LBB2_117
# %bb.14:
	leal	-1(%rbp), %ebx
	movl	$0, 16(%rsp)
	movl	%ebx, 12(%rsp)
	movl	$1, 24(%rsp)
	movl	$0, 20(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	32(%rsp), %rax
	leaq	28(%rsp), %rcx
	leaq	24(%rsp), %r8
	leaq	20(%rsp), %r9
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
	movl	12(%rsp), %eax
	cmpl	%ebp, %eax
	cmovll	%eax, %ebx
	movl	%ebx, 12(%rsp)
	movslq	16(%rsp), %rax
	cmpl	%ebx, %eax
	jg	.LBB2_116
# %bb.15:
	movq	376(%rsp), %rcx
	movq	368(%rsp), %rdx
	movq	360(%rsp), %rsi
	movq	(%rsi), %r11
	movq	(%rdx), %r14
	movslq	%ebx, %rsi
	cmpq	%rax, %rsi
	movq	%rax, %r10
	cmovgeq	%rsi, %r10
	movq	(%rcx), %r15
	subq	%rax, %r10
	addq	$1, %r10
	cmpq	$4, %r10
	jb	.LBB2_114
# %bb.16:
	leaq	(%r11,%rax,8), %r8
	cmpq	%rax, %rsi
	movq	%rax, %rdx
	cmovgeq	%rsi, %rdx
	leaq	8(%r11,%rdx,8), %rdi
	leaq	(%r14,%rax,8), %rbp
	leaq	(%r14,%rdx,8), %rbx
	addq	$8, %rbx
	leaq	(%r15,%rax,8), %rcx
	leaq	(%r15,%rdx,8), %rdx
	addq	$8, %rdx
	cmpq	%rbx, %r8
	setb	32(%rsp)                # 1-byte Folded Spill
	cmpq	%rdi, %rbp
	setb	%r13b
	cmpq	%rdx, %r8
	setb	%r12b
	cmpq	%rdi, %rcx
	setb	%r8b
	cmpq	%rdx, %rbp
	setb	%r9b
	cmpq	%rbx, %rcx
	setb	%dil
	testb	%r13b, 32(%rsp)         # 1-byte Folded Reload
	jne	.LBB2_113
# %bb.17:
	andb	%r8b, %r12b
	jne	.LBB2_113
# %bb.18:
	andb	%dil, %r9b
	movl	28(%rsp), %r12d         # 4-byte Reload
	jne	.LBB2_114
# %bb.19:
	movq	%r10, %r8
	andq	$-4, %r8
	leaq	-4(%r8), %rcx
	movq	%rcx, %rbx
	shrq	$2, %rbx
	addq	$1, %rbx
	movl	%ebx, %r9d
	andl	$1, %r9d
	testq	%rcx, %rcx
	je	.LBB2_111
# %bb.20:
	leaq	(%r15,%rax,8), %rbp
	addq	$48, %rbp
	leaq	(%r14,%rax,8), %rcx
	addq	$48, %rcx
	leaq	(%r11,%rax,8), %rdx
	addq	$48, %rdx
	movq	%r9, %rdi
	subq	%rbx, %rdi
	xorl	%ebx, %ebx
	movaps	.LCPI2_4(%rip), %xmm0   # xmm0 = [5.9999999999999998E-2,5.9999999999999998E-2]
	movaps	.LCPI2_5(%rip), %xmm1   # xmm1 = [7.0000000000000007E-2,7.0000000000000007E-2]
	movaps	.LCPI2_6(%rip), %xmm2   # xmm2 = [8.0000000000000002E-2,8.0000000000000002E-2]
	.p2align	4, 0x90
.LBB2_21:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -48(%rdx,%rbx,8)
	movups	%xmm0, -32(%rdx,%rbx,8)
	movups	%xmm1, -48(%rcx,%rbx,8)
	movups	%xmm1, -32(%rcx,%rbx,8)
	movups	%xmm2, -48(%rbp,%rbx,8)
	movups	%xmm2, -32(%rbp,%rbx,8)
	movups	%xmm0, -16(%rdx,%rbx,8)
	movups	%xmm0, (%rdx,%rbx,8)
	movups	%xmm1, -16(%rcx,%rbx,8)
	movups	%xmm1, (%rcx,%rbx,8)
	movups	%xmm2, -16(%rbp,%rbx,8)
	movups	%xmm2, (%rbp,%rbx,8)
	addq	$8, %rbx
	addq	$2, %rdi
	jne	.LBB2_21
# %bb.22:
	testq	%r9, %r9
	je	.LBB2_24
.LBB2_23:
	addq	%rax, %rbx
	movaps	.LCPI2_4(%rip), %xmm0   # xmm0 = [5.9999999999999998E-2,5.9999999999999998E-2]
	movups	%xmm0, (%r11,%rbx,8)
	movups	%xmm0, 16(%r11,%rbx,8)
	movaps	.LCPI2_5(%rip), %xmm0   # xmm0 = [7.0000000000000007E-2,7.0000000000000007E-2]
	movups	%xmm0, (%r14,%rbx,8)
	movups	%xmm0, 16(%r14,%rbx,8)
	movaps	.LCPI2_6(%rip), %xmm0   # xmm0 = [8.0000000000000002E-2,8.0000000000000002E-2]
	movups	%xmm0, (%r15,%rbx,8)
	movups	%xmm0, 16(%r15,%rbx,8)
.LBB2_24:
	cmpq	%r8, %r10
	je	.LBB2_116
# %bb.25:
	addq	%r8, %rax
	jmp	.LBB2_114
.LBB2_26:
	movl	Nl(%rip), %ecx
	movl	Nk(%rip), %esi
	testl	%esi, %esi
	setle	%al
	movslq	Nj(%rip), %rbp
	testq	%rbp, %rbp
	setle	%bl
	movl	Ni(%rip), %edi
	movslq	%edi, %r11
	movl	%ebp, %r8d
	imulq	%r11, %rbp
	movq	%rbp, 184(%rsp)         # 8-byte Spill
	movl	%edx, %ebp
	imull	%ecx, %ebp
	imull	%esi, %ebp
	movl	%ecx, 196(%rsp)         # 4-byte Spill
	movq	%rsi, 168(%rsp)         # 8-byte Spill
	imull	%esi, %ecx
	movl	%ecx, 192(%rsp)         # 4-byte Spill
	movl	%r11d, %ecx
	andl	$-4, %ecx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	addq	$-4, %rcx
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	shrq	$2, %rcx
	addq	$1, %rcx
	orb	%al, %bl
	movb	%bl, 47(%rsp)           # 1-byte Spill
	movl	%ecx, %r14d
	andl	$3, %r14d
	movl	%r11d, %eax
	andl	$3, %eax
	movq	%rax, 32(%rsp)          # 8-byte Spill
	movq	%r14, %rax
	subq	%rcx, %rax
	movq	%rax, 248(%rsp)         # 8-byte Spill
	movq	%r14, 56(%rsp)          # 8-byte Spill
	shlq	$5, %r14
	movaps	.LCPI2_0(%rip), %xmm0   # xmm0 = [1.0E-2,1.0E-2]
	xorps	%xmm1, %xmm1
	leaq	(,%r11,8), %r9
	xorl	%eax, %eax
	movq	%rax, 232(%rsp)         # 8-byte Spill
	movabsq	$4576918229304087675, %r10 # imm = 0x3F847AE147AE147B
	movl	%ebp, 260(%rsp)         # 4-byte Spill
	movl	%ebp, 164(%rsp)         # 4-byte Spill
	movq	%r8, 48(%rsp)           # 8-byte Spill
	movq	%r11, 96(%rsp)          # 8-byte Spill
	movq	%r9, 88(%rsp)           # 8-byte Spill
	jmp	.LBB2_28
	.p2align	4, 0x90
.LBB2_27:                               #   in Loop: Header=BB2_28 Depth=1
	movq	272(%rsp), %rcx         # 8-byte Reload
	leal	1(%rcx), %eax
	movq	232(%rsp), %rdx         # 8-byte Reload
	addl	$1, %edx
	movq	%rdx, 232(%rsp)         # 8-byte Spill
	movl	164(%rsp), %edx         # 4-byte Reload
	addl	192(%rsp), %edx         # 4-byte Folded Reload
	movl	%edx, 164(%rsp)         # 4-byte Spill
	cmpl	264(%rsp), %ecx         # 4-byte Folded Reload
	movl	%eax, %edx
	jge	.LBB2_2
.LBB2_28:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_31 Depth 2
                                        #       Child Loop BB2_34 Depth 3
                                        #         Child Loop BB2_37 Depth 4
                                        #           Child Loop BB2_45 Depth 5
                                        #           Child Loop BB2_48 Depth 5
                                        #           Child Loop BB2_51 Depth 5
                                        #           Child Loop BB2_53 Depth 5
	movq	%rdx, 272(%rsp)         # 8-byte Spill
	cmpl	$0, 196(%rsp)           # 4-byte Folded Reload
	jle	.LBB2_27
# %bb.29:                               #   in Loop: Header=BB2_28 Depth=1
	movl	192(%rsp), %eax         # 4-byte Reload
	imull	232(%rsp), %eax         # 4-byte Folded Reload
	addl	260(%rsp), %eax         # 4-byte Folded Reload
	movl	%eax, 268(%rsp)         # 4-byte Spill
	movl	$0, 108(%rsp)           # 4-byte Folded Spill
	movl	164(%rsp), %eax         # 4-byte Reload
	movl	%eax, 104(%rsp)         # 4-byte Spill
	jmp	.LBB2_31
	.p2align	4, 0x90
.LBB2_30:                               #   in Loop: Header=BB2_31 Depth=2
	movl	108(%rsp), %eax         # 4-byte Reload
	addl	$1, %eax
	movl	104(%rsp), %ecx         # 4-byte Reload
	addl	168(%rsp), %ecx         # 4-byte Folded Reload
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	movl	%eax, 108(%rsp)         # 4-byte Spill
	cmpl	196(%rsp), %eax         # 4-byte Folded Reload
	jge	.LBB2_27
.LBB2_31:                               #   Parent Loop BB2_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_34 Depth 3
                                        #         Child Loop BB2_37 Depth 4
                                        #           Child Loop BB2_45 Depth 5
                                        #           Child Loop BB2_48 Depth 5
                                        #           Child Loop BB2_51 Depth 5
                                        #           Child Loop BB2_53 Depth 5
	cmpb	$0, 47(%rsp)            # 1-byte Folded Reload
	jne	.LBB2_30
# %bb.32:                               #   in Loop: Header=BB2_31 Depth=2
	movslq	104(%rsp), %rax         # 4-byte Folded Reload
	movq	184(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, %rdx
	imulq	%rax, %rdx
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	imulq	%rcx, %rax
	addq	$14, %rax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	168(%rsp), %rax         # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	imull	108(%rsp), %eax         # 4-byte Folded Reload
	addl	268(%rsp), %eax         # 4-byte Folded Reload
	cltq
	imulq	%rcx, %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	%rax, 216(%rsp)         # 8-byte Spill
	addq	%rdi, %rax
	movq	%rax, 208(%rsp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, 80(%rsp)          # 8-byte Spill
	jmp	.LBB2_34
	.p2align	4, 0x90
.LBB2_33:                               #   in Loop: Header=BB2_34 Depth=3
	movq	80(%rsp), %rdx          # 8-byte Reload
	addq	$1, %rdx
	movq	184(%rsp), %rax         # 8-byte Reload
	addq	%rax, 176(%rsp)         # 8-byte Folded Spill
	addq	%rax, 224(%rsp)         # 8-byte Folded Spill
	movq	%rdx, %rax
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	cmpq	168(%rsp), %rdx         # 8-byte Folded Reload
	je	.LBB2_30
.LBB2_34:                               #   Parent Loop BB2_28 Depth=1
                                        #     Parent Loop BB2_31 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_37 Depth 4
                                        #           Child Loop BB2_45 Depth 5
                                        #           Child Loop BB2_48 Depth 5
                                        #           Child Loop BB2_51 Depth 5
                                        #           Child Loop BB2_53 Depth 5
	testl	%edi, %edi
	jle	.LBB2_33
# %bb.35:                               #   in Loop: Header=BB2_34 Depth=3
	movq	184(%rsp), %rdx         # 8-byte Reload
	imulq	80(%rsp), %rdx          # 8-byte Folded Reload
	movq	216(%rsp), %rax         # 8-byte Reload
	addq	%rdx, %rax
	movq	%rax, 144(%rsp)         # 8-byte Spill
	addq	208(%rsp), %rdx         # 8-byte Folded Reload
	movq	%rdx, 152(%rsp)         # 8-byte Spill
	movq	240(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rbx
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %rdx
	movq	176(%rsp), %rax         # 8-byte Reload
	leaq	(%rdx,%rax,8), %rbp
	leaq	(%rbx,%rax,8), %r15
	leaq	16(%rdx), %rax
	movq	%rax, 136(%rsp)         # 8-byte Spill
	leaq	16(%rbx), %rax
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	224(%rsp), %r12         # 8-byte Reload
	movq	%rdx, 72(%rsp)          # 8-byte Spill
	leaq	(%rdx,%r12,8), %rsi
	leaq	(%rbx,%r12,8), %rdx
	xorl	%r13d, %r13d
	movq	%rbx, 120(%rsp)         # 8-byte Spill
	jmp	.LBB2_37
	.p2align	4, 0x90
.LBB2_36:                               #   in Loop: Header=BB2_37 Depth=4
	addq	$1, %r13
	addq	%r9, %rbp
	addq	%r9, %r15
	addq	%r11, %r12
	addq	%r9, %rsi
	addq	%r9, %rdx
	cmpq	%r8, %r13
	movq	120(%rsp), %rbx         # 8-byte Reload
	je	.LBB2_33
.LBB2_37:                               #   Parent Loop BB2_28 Depth=1
                                        #     Parent Loop BB2_31 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB2_45 Depth 5
                                        #           Child Loop BB2_48 Depth 5
                                        #           Child Loop BB2_51 Depth 5
                                        #           Child Loop BB2_53 Depth 5
	cmpl	$3, %edi
	ja	.LBB2_39
# %bb.38:                               #   in Loop: Header=BB2_37 Depth=4
	xorl	%ebx, %ebx
	jmp	.LBB2_50
	.p2align	4, 0x90
.LBB2_39:                               #   in Loop: Header=BB2_37 Depth=4
	movq	%r13, %rax
	imulq	%r11, %rax
	movq	144(%rsp), %rcx         # 8-byte Reload
	addq	%rax, %rcx
	addq	152(%rsp), %rax         # 8-byte Folded Reload
	movq	72(%rsp), %r9           # 8-byte Reload
	leaq	(%r9,%rax,8), %r11
	movq	%rbx, %r8
	leaq	(%rbx,%rcx,8), %rbx
	cmpq	%r11, %rbx
	jae	.LBB2_42
# %bb.40:                               #   in Loop: Header=BB2_37 Depth=4
	leaq	(%r9,%rcx,8), %rcx
	leaq	(%r8,%rax,8), %rax
	cmpq	%rax, %rcx
	jae	.LBB2_42
# %bb.41:                               #   in Loop: Header=BB2_37 Depth=4
	xorl	%ebx, %ebx
	movq	96(%rsp), %r11          # 8-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	movq	88(%rsp), %r9           # 8-byte Reload
	jmp	.LBB2_50
	.p2align	4, 0x90
.LBB2_42:                               #   in Loop: Header=BB2_37 Depth=4
	cmpq	$12, 64(%rsp)           # 8-byte Folded Reload
	jae	.LBB2_44
# %bb.43:                               #   in Loop: Header=BB2_37 Depth=4
	xorl	%ebx, %ebx
	jmp	.LBB2_46
.LBB2_44:                               # %.preheader38
                                        #   in Loop: Header=BB2_37 Depth=4
	movq	248(%rsp), %r11         # 8-byte Reload
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_45:                               #   Parent Loop BB2_28 Depth=1
                                        #     Parent Loop BB2_31 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        #         Parent Loop BB2_37 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movups	%xmm0, -112(%r15,%rbx,8)
	movups	%xmm0, -96(%r15,%rbx,8)
	movups	%xmm1, -112(%rbp,%rbx,8)
	movups	%xmm1, -96(%rbp,%rbx,8)
	movups	%xmm0, -80(%r15,%rbx,8)
	movups	%xmm0, -64(%r15,%rbx,8)
	movups	%xmm1, -80(%rbp,%rbx,8)
	movups	%xmm1, -64(%rbp,%rbx,8)
	movups	%xmm0, -48(%r15,%rbx,8)
	movups	%xmm0, -32(%r15,%rbx,8)
	movups	%xmm1, -48(%rbp,%rbx,8)
	movups	%xmm1, -32(%rbp,%rbx,8)
	movups	%xmm0, -16(%r15,%rbx,8)
	movups	%xmm0, (%r15,%rbx,8)
	movups	%xmm1, -16(%rbp,%rbx,8)
	movups	%xmm1, (%rbp,%rbx,8)
	addq	$16, %rbx
	addq	$4, %r11
	jne	.LBB2_45
.LBB2_46:                               #   in Loop: Header=BB2_37 Depth=4
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	movq	88(%rsp), %r9           # 8-byte Reload
	je	.LBB2_49
# %bb.47:                               # %.preheader36
                                        #   in Loop: Header=BB2_37 Depth=4
	addq	%r12, %rbx
	movq	136(%rsp), %rax         # 8-byte Reload
	leaq	(%rax,%rbx,8), %rax
	movq	128(%rsp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rbx,8), %rbx
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_48:                               #   Parent Loop BB2_28 Depth=1
                                        #     Parent Loop BB2_31 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        #         Parent Loop BB2_37 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movups	%xmm0, -16(%rbx,%rcx)
	movups	%xmm0, (%rbx,%rcx)
	movups	%xmm1, -16(%rax,%rcx)
	movups	%xmm1, (%rax,%rcx)
	addq	$32, %rcx
	cmpq	%rcx, %r14
	jne	.LBB2_48
.LBB2_49:                               #   in Loop: Header=BB2_37 Depth=4
	movq	112(%rsp), %rax         # 8-byte Reload
	movq	%rax, %rbx
	cmpq	%rdi, %rax
	movq	96(%rsp), %r11          # 8-byte Reload
	movq	48(%rsp), %r8           # 8-byte Reload
	movq	32(%rsp), %rcx          # 8-byte Reload
	je	.LBB2_36
	.p2align	4, 0x90
.LBB2_50:                               #   in Loop: Header=BB2_37 Depth=4
	movq	%rbx, %rax
	notq	%rax
	addq	%rdi, %rax
	testq	%rcx, %rcx
	je	.LBB2_52
	.p2align	4, 0x90
.LBB2_51:                               #   Parent Loop BB2_28 Depth=1
                                        #     Parent Loop BB2_31 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        #         Parent Loop BB2_37 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%r10, (%rdx,%rbx,8)
	movq	$0, (%rsi,%rbx,8)
	addq	$1, %rbx
	addq	$-1, %rcx
	jne	.LBB2_51
.LBB2_52:                               #   in Loop: Header=BB2_37 Depth=4
	cmpq	$3, %rax
	movq	32(%rsp), %rcx          # 8-byte Reload
	jb	.LBB2_36
	.p2align	4, 0x90
.LBB2_53:                               #   Parent Loop BB2_28 Depth=1
                                        #     Parent Loop BB2_31 Depth=2
                                        #       Parent Loop BB2_34 Depth=3
                                        #         Parent Loop BB2_37 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movq	%r10, (%rdx,%rbx,8)
	movq	$0, (%rsi,%rbx,8)
	movq	%r10, 8(%rdx,%rbx,8)
	movq	$0, 8(%rsi,%rbx,8)
	movq	%r10, 16(%rdx,%rbx,8)
	movq	$0, 16(%rsi,%rbx,8)
	movq	%r10, 24(%rdx,%rbx,8)
	movq	$0, 24(%rsi,%rbx,8)
	addq	$4, %rbx
	cmpq	%rbx, %rdi
	jne	.LBB2_53
	jmp	.LBB2_36
.LBB2_54:
	movslq	Nk(%rip), %rdx
	testq	%rdx, %rdx
	setle	%r8b
	movslq	Nj(%rip), %r10
	testq	%r10, %r10
	setle	%r9b
	movl	Ni(%rip), %esi
	movslq	%esi, %r13
	movslq	%ebx, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	%edx, %ecx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movl	%r10d, %ebx
	movl	%r13d, %edi
	andl	$-4, %edi
	leaq	-4(%rdi), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rcx, %r11
	shrq	$2, %r11
	addq	$1, %r11
	orb	%r8b, %r9b
	movb	%r9b, 128(%rsp)         # 1-byte Spill
	movl	%r11d, %r8d
	andl	$3, %r8d
	movq	%rax, %rcx
	imulq	%rdx, %rcx
	imulq	%r10, %rdx
	imulq	%r13, %r10
	movq	%r10, 96(%rsp)          # 8-byte Spill
	imulq	%r10, %rcx
	imulq	%r13, %rdx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	leaq	(,%r13,8), %rdx
	movq	%r8, %rbp
	subq	%r11, %rbp
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	movq	%r8, 120(%rsp)          # 8-byte Spill
	movq	%r8, %rbp
	shlq	$5, %rbp
	movaps	.LCPI2_1(%rip), %xmm0   # xmm0 = [2.0E-2,2.0E-2]
	movabsq	$4581421828931458171, %r9 # imm = 0x3F947AE147AE147B
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	addq	$14, %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	jmp	.LBB2_56
	.p2align	4, 0x90
.LBB2_55:                               #   in Loop: Header=BB2_56 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	addq	%rax, 56(%rsp)          # 8-byte Folded Spill
	addq	%rax, 64(%rsp)          # 8-byte Folded Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpq	80(%rsp), %rax          # 8-byte Folded Reload
	leaq	1(%rax), %rax
	jge	.LBB2_6
.LBB2_56:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_59 Depth 2
                                        #       Child Loop BB2_62 Depth 3
                                        #         Child Loop BB2_67 Depth 4
                                        #         Child Loop BB2_70 Depth 4
                                        #         Child Loop BB2_72 Depth 4
	movq	%rax, 112(%rsp)         # 8-byte Spill
	cmpb	$0, 128(%rsp)           # 1-byte Folded Reload
	jne	.LBB2_55
# %bb.57:                               #   in Loop: Header=BB2_56 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB2_59
	.p2align	4, 0x90
.LBB2_58:                               #   in Loop: Header=BB2_59 Depth=2
	movq	144(%rsp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movq	96(%rsp), %rax          # 8-byte Reload
	addq	%rax, 48(%rsp)          # 8-byte Folded Spill
	addq	%rax, 72(%rsp)          # 8-byte Folded Spill
	cmpq	88(%rsp), %rcx          # 8-byte Folded Reload
	je	.LBB2_55
.LBB2_59:                               #   Parent Loop BB2_56 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_62 Depth 3
                                        #         Child Loop BB2_67 Depth 4
                                        #         Child Loop BB2_70 Depth 4
                                        #         Child Loop BB2_72 Depth 4
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	testl	%esi, %esi
	jle	.LBB2_58
# %bb.60:                               #   in Loop: Header=BB2_59 Depth=2
	movq	280(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r14
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	(%r14,%rax,8), %r12
	movq	72(%rsp), %r15          # 8-byte Reload
	leaq	(%r14,%r15,8), %r8
	addq	$16, %r14
	xorl	%r11d, %r11d
	jmp	.LBB2_62
	.p2align	4, 0x90
.LBB2_61:                               #   in Loop: Header=BB2_62 Depth=3
	addq	$1, %r11
	addq	%rdx, %r12
	addq	%r13, %r15
	addq	%rdx, %r8
	cmpq	%rbx, %r11
	je	.LBB2_58
.LBB2_62:                               #   Parent Loop BB2_56 Depth=1
                                        #     Parent Loop BB2_59 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_67 Depth 4
                                        #         Child Loop BB2_70 Depth 4
                                        #         Child Loop BB2_72 Depth 4
	cmpl	$3, %esi
	ja	.LBB2_64
# %bb.63:                               #   in Loop: Header=BB2_62 Depth=3
	xorl	%eax, %eax
	jmp	.LBB2_72
	.p2align	4, 0x90
.LBB2_64:                               #   in Loop: Header=BB2_62 Depth=3
	cmpq	$12, 32(%rsp)           # 8-byte Folded Reload
	jae	.LBB2_66
# %bb.65:                               #   in Loop: Header=BB2_62 Depth=3
	xorl	%r10d, %r10d
	jmp	.LBB2_68
	.p2align	4, 0x90
.LBB2_66:                               # %.preheader27
                                        #   in Loop: Header=BB2_62 Depth=3
	movq	152(%rsp), %rax         # 8-byte Reload
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB2_67:                               #   Parent Loop BB2_56 Depth=1
                                        #     Parent Loop BB2_59 Depth=2
                                        #       Parent Loop BB2_62 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	%xmm0, -112(%r12,%r10,8)
	movups	%xmm0, -96(%r12,%r10,8)
	movups	%xmm0, -80(%r12,%r10,8)
	movups	%xmm0, -64(%r12,%r10,8)
	movups	%xmm0, -48(%r12,%r10,8)
	movups	%xmm0, -32(%r12,%r10,8)
	movups	%xmm0, -16(%r12,%r10,8)
	movups	%xmm0, (%r12,%r10,8)
	addq	$16, %r10
	addq	$4, %rax
	jne	.LBB2_67
.LBB2_68:                               #   in Loop: Header=BB2_62 Depth=3
	cmpq	$0, 120(%rsp)           # 8-byte Folded Reload
	je	.LBB2_71
# %bb.69:                               # %.preheader25
                                        #   in Loop: Header=BB2_62 Depth=3
	addq	%r15, %r10
	leaq	(%r14,%r10,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_70:                               #   Parent Loop BB2_56 Depth=1
                                        #     Parent Loop BB2_59 Depth=2
                                        #       Parent Loop BB2_62 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	%xmm0, -16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	addq	$32, %rcx
	cmpq	%rcx, %rbp
	jne	.LBB2_70
.LBB2_71:                               #   in Loop: Header=BB2_62 Depth=3
	movq	%rdi, %rax
	cmpq	%rsi, %rdi
	je	.LBB2_61
	.p2align	4, 0x90
.LBB2_72:                               #   Parent Loop BB2_56 Depth=1
                                        #     Parent Loop BB2_59 Depth=2
                                        #       Parent Loop BB2_62 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movntiq	%r9, (%r8,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.LBB2_72
	jmp	.LBB2_61
.LBB2_73:
	movslq	Nl(%rip), %rdx
	testq	%rdx, %rdx
	setle	%r8b
	movslq	Nj(%rip), %r10
	testq	%r10, %r10
	setle	%r9b
	movl	Ni(%rip), %esi
	movslq	%esi, %r13
	movslq	%ebx, %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	movl	%edx, %ecx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movl	%r10d, %ebx
	movl	%r13d, %edi
	andl	$-4, %edi
	leaq	-4(%rdi), %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	movq	%rcx, %r11
	shrq	$2, %r11
	addq	$1, %r11
	orb	%r8b, %r9b
	movb	%r9b, 128(%rsp)         # 1-byte Spill
	movl	%r11d, %r8d
	andl	$3, %r8d
	movq	%rax, %rcx
	imulq	%rdx, %rcx
	imulq	%r10, %rdx
	imulq	%r13, %r10
	movq	%r10, 96(%rsp)          # 8-byte Spill
	imulq	%r10, %rcx
	imulq	%r13, %rdx
	movq	%rdx, 136(%rsp)         # 8-byte Spill
	leaq	(,%r13,8), %rdx
	movq	%r8, %rbp
	subq	%r11, %rbp
	movq	%rbp, 152(%rsp)         # 8-byte Spill
	movq	%r8, 120(%rsp)          # 8-byte Spill
	movq	%r8, %rbp
	shlq	$5, %rbp
	movaps	.LCPI2_2(%rip), %xmm0   # xmm0 = [2.9999999999999999E-2,2.9999999999999999E-2]
	movabsq	$4584304132692975288, %r9 # imm = 0x3F9EB851EB851EB8
	movq	%rcx, 64(%rsp)          # 8-byte Spill
	addq	$14, %rcx
	movq	%rcx, 56(%rsp)          # 8-byte Spill
	jmp	.LBB2_75
	.p2align	4, 0x90
.LBB2_74:                               #   in Loop: Header=BB2_75 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	addq	%rax, 56(%rsp)          # 8-byte Folded Spill
	addq	%rax, 64(%rsp)          # 8-byte Folded Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpq	80(%rsp), %rax          # 8-byte Folded Reload
	leaq	1(%rax), %rax
	jge	.LBB2_9
.LBB2_75:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_78 Depth 2
                                        #       Child Loop BB2_81 Depth 3
                                        #         Child Loop BB2_86 Depth 4
                                        #         Child Loop BB2_89 Depth 4
                                        #         Child Loop BB2_91 Depth 4
	movq	%rax, 112(%rsp)         # 8-byte Spill
	cmpb	$0, 128(%rsp)           # 1-byte Folded Reload
	jne	.LBB2_74
# %bb.76:                               #   in Loop: Header=BB2_75 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%ecx, %ecx
	jmp	.LBB2_78
	.p2align	4, 0x90
.LBB2_77:                               #   in Loop: Header=BB2_78 Depth=2
	movq	144(%rsp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movq	96(%rsp), %rax          # 8-byte Reload
	addq	%rax, 48(%rsp)          # 8-byte Folded Spill
	addq	%rax, 72(%rsp)          # 8-byte Folded Spill
	cmpq	88(%rsp), %rcx          # 8-byte Folded Reload
	je	.LBB2_74
.LBB2_78:                               #   Parent Loop BB2_75 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_81 Depth 3
                                        #         Child Loop BB2_86 Depth 4
                                        #         Child Loop BB2_89 Depth 4
                                        #         Child Loop BB2_91 Depth 4
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	testl	%esi, %esi
	jle	.LBB2_77
# %bb.79:                               #   in Loop: Header=BB2_78 Depth=2
	movq	288(%rsp), %rax         # 8-byte Reload
	movq	(%rax), %r14
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	(%r14,%rax,8), %r12
	movq	72(%rsp), %r15          # 8-byte Reload
	leaq	(%r14,%r15,8), %r8
	addq	$16, %r14
	xorl	%r11d, %r11d
	jmp	.LBB2_81
	.p2align	4, 0x90
.LBB2_80:                               #   in Loop: Header=BB2_81 Depth=3
	addq	$1, %r11
	addq	%rdx, %r12
	addq	%r13, %r15
	addq	%rdx, %r8
	cmpq	%rbx, %r11
	je	.LBB2_77
.LBB2_81:                               #   Parent Loop BB2_75 Depth=1
                                        #     Parent Loop BB2_78 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_86 Depth 4
                                        #         Child Loop BB2_89 Depth 4
                                        #         Child Loop BB2_91 Depth 4
	cmpl	$3, %esi
	ja	.LBB2_83
# %bb.82:                               #   in Loop: Header=BB2_81 Depth=3
	xorl	%eax, %eax
	jmp	.LBB2_91
	.p2align	4, 0x90
.LBB2_83:                               #   in Loop: Header=BB2_81 Depth=3
	cmpq	$12, 32(%rsp)           # 8-byte Folded Reload
	jae	.LBB2_85
# %bb.84:                               #   in Loop: Header=BB2_81 Depth=3
	xorl	%r10d, %r10d
	jmp	.LBB2_87
	.p2align	4, 0x90
.LBB2_85:                               # %.preheader19
                                        #   in Loop: Header=BB2_81 Depth=3
	movq	152(%rsp), %rax         # 8-byte Reload
	xorl	%r10d, %r10d
	.p2align	4, 0x90
.LBB2_86:                               #   Parent Loop BB2_75 Depth=1
                                        #     Parent Loop BB2_78 Depth=2
                                        #       Parent Loop BB2_81 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	%xmm0, -112(%r12,%r10,8)
	movups	%xmm0, -96(%r12,%r10,8)
	movups	%xmm0, -80(%r12,%r10,8)
	movups	%xmm0, -64(%r12,%r10,8)
	movups	%xmm0, -48(%r12,%r10,8)
	movups	%xmm0, -32(%r12,%r10,8)
	movups	%xmm0, -16(%r12,%r10,8)
	movups	%xmm0, (%r12,%r10,8)
	addq	$16, %r10
	addq	$4, %rax
	jne	.LBB2_86
.LBB2_87:                               #   in Loop: Header=BB2_81 Depth=3
	cmpq	$0, 120(%rsp)           # 8-byte Folded Reload
	je	.LBB2_90
# %bb.88:                               # %.preheader17
                                        #   in Loop: Header=BB2_81 Depth=3
	addq	%r15, %r10
	leaq	(%r14,%r10,8), %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB2_89:                               #   Parent Loop BB2_75 Depth=1
                                        #     Parent Loop BB2_78 Depth=2
                                        #       Parent Loop BB2_81 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	%xmm0, -16(%rax,%rcx)
	movups	%xmm0, (%rax,%rcx)
	addq	$32, %rcx
	cmpq	%rcx, %rbp
	jne	.LBB2_89
.LBB2_90:                               #   in Loop: Header=BB2_81 Depth=3
	movq	%rdi, %rax
	cmpq	%rsi, %rdi
	je	.LBB2_80
	.p2align	4, 0x90
.LBB2_91:                               #   Parent Loop BB2_75 Depth=1
                                        #     Parent Loop BB2_78 Depth=2
                                        #       Parent Loop BB2_81 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movntiq	%r9, (%r8,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rsi
	jne	.LBB2_91
	jmp	.LBB2_80
.LBB2_92:
	movslq	Nl(%rip), %r9
	testq	%r9, %r9
	setle	%r8b
	movslq	Nk(%rip), %r10
	testq	%r10, %r10
	setle	%r11b
	movl	Ni(%rip), %edi
	movslq	%edi, %rcx
	movslq	%ebx, %rdx
	movq	%rdx, 80(%rsp)          # 8-byte Spill
	movl	%r9d, %edx
	movq	%rdx, 88(%rsp)          # 8-byte Spill
	movl	%r10d, %edx
	movl	%ecx, %ebp
	andl	$-4, %ebp
	leaq	-4(%rbp), %rsi
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	movq	%rsi, %r14
	shrq	$2, %r14
	addq	$1, %r14
	orb	%r8b, %r11b
	movb	%r11b, 128(%rsp)        # 1-byte Spill
	movl	%r14d, %r8d
	andl	$3, %r8d
	movq	%rax, %rsi
	imulq	%r9, %rsi
	imulq	%r10, %r9
	imulq	%rcx, %r10
	movq	%r10, 96(%rsp)          # 8-byte Spill
	imulq	%r10, %rsi
	imulq	%rcx, %r9
	movq	%r9, 136(%rsp)          # 8-byte Spill
	movq	%r8, %rbx
	subq	%r14, %rbx
	movq	%rbx, 152(%rsp)         # 8-byte Spill
	movq	%r8, 120(%rsp)          # 8-byte Spill
	movq	%r8, %rbx
	shlq	$5, %rbx
	movaps	.LCPI2_3(%rip), %xmm0   # xmm0 = [4.0000000000000001E-2,4.0000000000000001E-2]
	leaq	(,%rcx,8), %r9
	movabsq	$4585925428558828667, %r10 # imm = 0x3FA47AE147AE147B
	movq	%rsi, 64(%rsp)          # 8-byte Spill
	addq	$14, %rsi
	movq	%rsi, 56(%rsp)          # 8-byte Spill
	jmp	.LBB2_94
	.p2align	4, 0x90
.LBB2_93:                               #   in Loop: Header=BB2_94 Depth=1
	movq	136(%rsp), %rax         # 8-byte Reload
	addq	%rax, 56(%rsp)          # 8-byte Folded Spill
	addq	%rax, 64(%rsp)          # 8-byte Folded Spill
	movq	112(%rsp), %rax         # 8-byte Reload
	cmpq	80(%rsp), %rax          # 8-byte Folded Reload
	leaq	1(%rax), %rax
	jge	.LBB2_12
.LBB2_94:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_97 Depth 2
                                        #       Child Loop BB2_100 Depth 3
                                        #         Child Loop BB2_105 Depth 4
                                        #         Child Loop BB2_108 Depth 4
                                        #         Child Loop BB2_110 Depth 4
	movq	%rax, 112(%rsp)         # 8-byte Spill
	cmpb	$0, 128(%rsp)           # 1-byte Folded Reload
	jne	.LBB2_93
# %bb.95:                               #   in Loop: Header=BB2_94 Depth=1
	movq	64(%rsp), %rax          # 8-byte Reload
	movq	%rax, 72(%rsp)          # 8-byte Spill
	movq	56(%rsp), %rax          # 8-byte Reload
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%esi, %esi
	jmp	.LBB2_97
	.p2align	4, 0x90
.LBB2_96:                               #   in Loop: Header=BB2_97 Depth=2
	movq	144(%rsp), %rsi         # 8-byte Reload
	addq	$1, %rsi
	movq	96(%rsp), %rax          # 8-byte Reload
	addq	%rax, 48(%rsp)          # 8-byte Folded Spill
	addq	%rax, 72(%rsp)          # 8-byte Folded Spill
	cmpq	88(%rsp), %rsi          # 8-byte Folded Reload
	je	.LBB2_93
.LBB2_97:                               #   Parent Loop BB2_94 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_100 Depth 3
                                        #         Child Loop BB2_105 Depth 4
                                        #         Child Loop BB2_108 Depth 4
                                        #         Child Loop BB2_110 Depth 4
	movq	%rsi, 144(%rsp)         # 8-byte Spill
	testl	%edi, %edi
	jle	.LBB2_96
# %bb.98:                               #   in Loop: Header=BB2_97 Depth=2
	movq	352(%rsp), %rax
	movq	(%rax), %r15
	movq	48(%rsp), %rax          # 8-byte Reload
	leaq	(%r15,%rax,8), %r13
	movq	72(%rsp), %r12          # 8-byte Reload
	leaq	(%r15,%r12,8), %r8
	addq	$16, %r15
	xorl	%r14d, %r14d
	jmp	.LBB2_100
	.p2align	4, 0x90
.LBB2_99:                               #   in Loop: Header=BB2_100 Depth=3
	addq	$1, %r14
	addq	%r9, %r13
	addq	%rcx, %r12
	addq	%r9, %r8
	cmpq	%rdx, %r14
	je	.LBB2_96
.LBB2_100:                              #   Parent Loop BB2_94 Depth=1
                                        #     Parent Loop BB2_97 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB2_105 Depth 4
                                        #         Child Loop BB2_108 Depth 4
                                        #         Child Loop BB2_110 Depth 4
	cmpl	$3, %edi
	ja	.LBB2_102
# %bb.101:                              #   in Loop: Header=BB2_100 Depth=3
	xorl	%eax, %eax
	jmp	.LBB2_110
	.p2align	4, 0x90
.LBB2_102:                              #   in Loop: Header=BB2_100 Depth=3
	cmpq	$12, 32(%rsp)           # 8-byte Folded Reload
	jae	.LBB2_104
# %bb.103:                              #   in Loop: Header=BB2_100 Depth=3
	xorl	%r11d, %r11d
	jmp	.LBB2_106
	.p2align	4, 0x90
.LBB2_104:                              # %.preheader11
                                        #   in Loop: Header=BB2_100 Depth=3
	movq	152(%rsp), %rax         # 8-byte Reload
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB2_105:                              #   Parent Loop BB2_94 Depth=1
                                        #     Parent Loop BB2_97 Depth=2
                                        #       Parent Loop BB2_100 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	%xmm0, -112(%r13,%r11,8)
	movups	%xmm0, -96(%r13,%r11,8)
	movups	%xmm0, -80(%r13,%r11,8)
	movups	%xmm0, -64(%r13,%r11,8)
	movups	%xmm0, -48(%r13,%r11,8)
	movups	%xmm0, -32(%r13,%r11,8)
	movups	%xmm0, -16(%r13,%r11,8)
	movups	%xmm0, (%r13,%r11,8)
	addq	$16, %r11
	addq	$4, %rax
	jne	.LBB2_105
.LBB2_106:                              #   in Loop: Header=BB2_100 Depth=3
	cmpq	$0, 120(%rsp)           # 8-byte Folded Reload
	je	.LBB2_109
# %bb.107:                              # %.preheader9
                                        #   in Loop: Header=BB2_100 Depth=3
	addq	%r12, %r11
	leaq	(%r15,%r11,8), %rax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB2_108:                              #   Parent Loop BB2_94 Depth=1
                                        #     Parent Loop BB2_97 Depth=2
                                        #       Parent Loop BB2_100 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movups	%xmm0, -16(%rax,%rsi)
	movups	%xmm0, (%rax,%rsi)
	addq	$32, %rsi
	cmpq	%rsi, %rbx
	jne	.LBB2_108
.LBB2_109:                              #   in Loop: Header=BB2_100 Depth=3
	movq	%rbp, %rax
	cmpq	%rdi, %rbp
	je	.LBB2_99
	.p2align	4, 0x90
.LBB2_110:                              #   Parent Loop BB2_94 Depth=1
                                        #     Parent Loop BB2_97 Depth=2
                                        #       Parent Loop BB2_100 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movntiq	%r10, (%r8,%rax,8)
	addq	$1, %rax
	cmpq	%rax, %rdi
	jne	.LBB2_110
	jmp	.LBB2_99
.LBB2_113:
	movl	28(%rsp), %r12d         # 4-byte Reload
.LBB2_114:
	addq	$-1, %rax
	movabsq	$4588807732320345784, %rcx # imm = 0x3FAEB851EB851EB8
	movabsq	$4589708452245819884, %rdx # imm = 0x3FB1EB851EB851EC
	movabsq	$4590429028186199163, %rdi # imm = 0x3FB47AE147AE147B
	.p2align	4, 0x90
.LBB2_115:                              # =>This Inner Loop Header: Depth=1
	movq	%rcx, 8(%r11,%rax,8)
	movq	%rdx, 8(%r14,%rax,8)
	movq	%rdi, 8(%r15,%rax,8)
	addq	$1, %rax
	cmpq	%rsi, %rax
	jl	.LBB2_115
.LBB2_116:
	movl	$.L__unnamed_2, %edi
	movl	%r12d, %esi
	callq	__kmpc_for_static_fini
.LBB2_117:
	movl	$.L__unnamed_3, %edi
	movl	%r12d, %esi
	callq	__kmpc_barrier
	movl	Nm(%rip), %ebx
	testl	%ebx, %ebx
	jle	.LBB2_120
# %bb.118:
	leal	-1(%rbx), %ebp
	movl	$0, 16(%rsp)
	movl	%ebp, 12(%rsp)
	movl	$1, 24(%rsp)
	movl	$0, 20(%rsp)
	subq	$8, %rsp
	.cfi_adjust_cfa_offset 8
	leaq	32(%rsp), %rax
	leaq	28(%rsp), %rcx
	leaq	24(%rsp), %r8
	leaq	20(%rsp), %r9
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
	movl	12(%rsp), %eax
	cmpl	%ebx, %eax
	cmovll	%eax, %ebp
	movl	%ebp, 12(%rsp)
	movl	16(%rsp), %edx
	movl	%ebp, 240(%rsp)         # 4-byte Spill
	cmpl	%ebp, %edx
	jle	.LBB2_121
.LBB2_119:
	movl	$.L__unnamed_2, %edi
	movl	28(%rsp), %r12d         # 4-byte Reload
	movl	%r12d, %esi
	callq	__kmpc_for_static_fini
.LBB2_120:
	movl	$.L__unnamed_3, %edi
	movl	%r12d, %esi
	callq	__kmpc_barrier
	addq	$296, %rsp              # imm = 0x128
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
.LBB2_121:
	.cfi_def_cfa_offset 352
	movl	Nl(%rip), %ecx
	testl	%ecx, %ecx
	setle	%al
	movl	Nk(%rip), %r14d
	testl	%r14d, %r14d
	setle	%bl
	movl	Nj(%rip), %r15d
	movl	%edx, %esi
	imull	%ecx, %esi
	imull	%r14d, %esi
	movl	%esi, %edi
	imull	%r15d, %edi
	movl	%edi, 168(%rsp)         # 4-byte Spill
	movq	%r15, %r13
	shlq	$3, %r13
	movq	%r14, %rdi
	addq	$-1, %rdi
	movq	%rdi, 248(%rsp)         # 8-byte Spill
	orb	%al, %bl
	movb	%bl, 108(%rsp)          # 1-byte Spill
	movl	%r14d, %eax
	andl	$3, %eax
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leal	3(%rsi), %eax
	imull	%r15d, %eax
	movl	%eax, 216(%rsp)         # 4-byte Spill
	movl	%ecx, 136(%rsp)         # 4-byte Spill
	imull	%r14d, %ecx
	imull	%r15d, %ecx
	movl	%ecx, 104(%rsp)         # 4-byte Spill
	movl	%r14d, %eax
	imull	%r15d, %eax
	movl	%eax, 128(%rsp)         # 4-byte Spill
	leal	2(%rsi), %eax
	imull	%r15d, %eax
	movl	%eax, 208(%rsp)         # 4-byte Spill
	movq	%rsi, 184(%rsp)         # 8-byte Spill
	leal	1(%rsi), %eax
	imull	%r15d, %eax
	movl	%eax, 200(%rsp)         # 4-byte Spill
	andl	$-4, %r14d
	leal	(,%r15,4), %r12d
	xorl	%eax, %eax
	movq	%rax, 176(%rsp)         # 8-byte Spill
	movq	%r15, 80(%rsp)          # 8-byte Spill
	movq	%r13, 120(%rsp)         # 8-byte Spill
	movq	%r14, 152(%rsp)         # 8-byte Spill
	movl	%r12d, 144(%rsp)        # 4-byte Spill
	movq	120(%rsp), %r12         # 8-byte Reload
	jmp	.LBB2_123
	.p2align	4, 0x90
.LBB2_122:                              #   in Loop: Header=BB2_123 Depth=1
	movq	224(%rsp), %rcx         # 8-byte Reload
	leal	1(%rcx), %eax
	movl	104(%rsp), %edx         # 4-byte Reload
	addl	%edx, 216(%rsp)         # 4-byte Folded Spill
	addl	%edx, 208(%rsp)         # 4-byte Folded Spill
	addl	%edx, 200(%rsp)         # 4-byte Folded Spill
	addl	%edx, 168(%rsp)         # 4-byte Folded Spill
	movq	176(%rsp), %rsi         # 8-byte Reload
	addl	%edx, %esi
	movq	%rsi, 176(%rsp)         # 8-byte Spill
	cmpl	240(%rsp), %ecx         # 4-byte Folded Reload
	movl	%eax, %edx
	jge	.LBB2_119
.LBB2_123:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_126 Depth 2
                                        #       Child Loop BB2_130 Depth 3
                                        #       Child Loop BB2_133 Depth 3
	movq	%rdx, 224(%rsp)         # 8-byte Spill
	cmpb	$0, 108(%rsp)           # 1-byte Folded Reload
	jne	.LBB2_122
# %bb.124:                              # %.preheader3
                                        #   in Loop: Header=BB2_123 Depth=1
	xorl	%ecx, %ecx
	movq	176(%rsp), %rax         # 8-byte Reload
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, 48(%rsp)          # 4-byte Spill
	movl	168(%rsp), %eax         # 4-byte Reload
	movl	%eax, 96(%rsp)          # 4-byte Spill
	movl	200(%rsp), %eax         # 4-byte Reload
	movl	%eax, 88(%rsp)          # 4-byte Spill
	movl	208(%rsp), %eax         # 4-byte Reload
	movl	%eax, 112(%rsp)         # 4-byte Spill
	movl	216(%rsp), %eax         # 4-byte Reload
	movl	%eax, 64(%rsp)          # 4-byte Spill
	jmp	.LBB2_126
	.p2align	4, 0x90
.LBB2_125:                              #   in Loop: Header=BB2_126 Depth=2
	movl	72(%rsp), %ecx          # 4-byte Reload
	addl	$1, %ecx
	movl	128(%rsp), %eax         # 4-byte Reload
	addl	%eax, 64(%rsp)          # 4-byte Folded Spill
	addl	%eax, 112(%rsp)         # 4-byte Folded Spill
	addl	%eax, 88(%rsp)          # 4-byte Folded Spill
	addl	%eax, 96(%rsp)          # 4-byte Folded Spill
	addl	%eax, 48(%rsp)          # 4-byte Folded Spill
	cmpl	136(%rsp), %ecx         # 4-byte Folded Reload
	je	.LBB2_122
.LBB2_126:                              #   Parent Loop BB2_123 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_130 Depth 3
                                        #       Child Loop BB2_133 Depth 3
	movl	%ecx, 72(%rsp)          # 4-byte Spill
	testl	%r15d, %r15d
	jle	.LBB2_125
# %bb.127:                              #   in Loop: Header=BB2_126 Depth=2
	movq	384(%rsp), %rax
	movq	(%rax), %rsi
	cmpq	$3, 248(%rsp)           # 8-byte Folded Reload
	movq	%rsi, 32(%rsp)          # 8-byte Spill
	jae	.LBB2_129
# %bb.128:                              #   in Loop: Header=BB2_126 Depth=2
	xorl	%ebp, %ebp
	jmp	.LBB2_131
	.p2align	4, 0x90
.LBB2_129:                              # %.preheader1
                                        #   in Loop: Header=BB2_126 Depth=2
	movl	96(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r15d
	movl	88(%rsp), %eax          # 4-byte Reload
	movl	%eax, %r14d
	movl	112(%rsp), %eax         # 4-byte Reload
	movl	%eax, %r13d
	movl	64(%rsp), %eax          # 4-byte Reload
	movl	%eax, %ebx
	xorl	%ebp, %ebp
	.p2align	4, 0x90
.LBB2_130:                              #   Parent Loop BB2_123 Depth=1
                                        #     Parent Loop BB2_126 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%r15d, %r15
	leaq	(%rsi,%r15,8), %rdi
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	memset
	movslq	%r14d, %r14
	movq	32(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r14,8), %rdi
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	memset
	movslq	%r13d, %r13
	movq	32(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%r13,8), %rdi
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	memset
	movslq	%ebx, %rbx
	movq	32(%rsp), %rax          # 8-byte Reload
	leaq	(%rax,%rbx,8), %rdi
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	memset
	movq	32(%rsp), %rsi          # 8-byte Reload
	addq	$4, %rbp
	movl	144(%rsp), %eax         # 4-byte Reload
	addl	%eax, %ebx
	addl	%eax, %r13d
	addl	%eax, %r14d
	addl	%eax, %r15d
	cmpq	%rbp, 152(%rsp)         # 8-byte Folded Reload
	jne	.LBB2_130
.LBB2_131:                              #   in Loop: Header=BB2_126 Depth=2
	cmpq	$0, 56(%rsp)            # 8-byte Folded Reload
	movq	80(%rsp), %r15          # 8-byte Reload
	movq	120(%rsp), %r13         # 8-byte Reload
	je	.LBB2_125
# %bb.132:                              # %.preheader
                                        #   in Loop: Header=BB2_126 Depth=2
	addl	184(%rsp), %ebp         # 4-byte Folded Reload
	imull	%r15d, %ebp
	addl	48(%rsp), %ebp          # 4-byte Folded Reload
	movq	56(%rsp), %rbx          # 8-byte Reload
	.p2align	4, 0x90
.LBB2_133:                              #   Parent Loop BB2_123 Depth=1
                                        #     Parent Loop BB2_126 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movslq	%ebp, %rbp
	leaq	(%rsi,%rbp,8), %rdi
	xorl	%esi, %esi
	movq	%r13, %rdx
	callq	memset
	movq	32(%rsp), %rsi          # 8-byte Reload
	addl	%r15d, %ebp
	addq	$-1, %rbx
	jne	.LBB2_133
	jmp	.LBB2_125
.LBB2_111:
	xorl	%ebx, %ebx
	testq	%r9, %r9
	jne	.LBB2_23
	jmp	.LBB2_24
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
	movq	%r9, -16(%rsp)          # 8-byte Spill
	movl	%ecx, -124(%rsp)        # 4-byte Spill
	movl	%edx, -120(%rsp)        # 4-byte Spill
	movl	%esi, -128(%rsp)        # 4-byte Spill
	movl	%edi, -116(%rsp)        # 4-byte Spill
	testl	%r8d, %r8d
	jle	.LBB3_13
# %bb.1:
	movslq	-116(%rsp), %rax        # 4-byte Folded Reload
	movslq	-128(%rsp), %r14        # 4-byte Folded Reload
	movslq	-120(%rsp), %rdi        # 4-byte Folded Reload
	movslq	-124(%rsp), %r11        # 4-byte Folded Reload
	movl	%r8d, %ecx
	movq	%rcx, 112(%rsp)         # 8-byte Spill
	movl	%r14d, %ecx
	movq	%rcx, -48(%rsp)         # 8-byte Spill
                                        # kill: def $ecx killed $ecx killed $rcx def $rcx
	andl	$-4, %ecx
	movq	%rcx, 184(%rsp)         # 8-byte Spill
	addq	$-4, %rcx
	movq	%rcx, 176(%rsp)         # 8-byte Spill
	shrq	$2, %rcx
	addq	$1, %rcx
	movl	%ecx, %edx
	andl	$1, %edx
	movq	%r11, %rbp
	imulq	%rdi, %rbp
	movq	%rbp, %rbx
	imulq	%r14, %rbx
	movq	%rdi, %rsi
	imulq	%r14, %rsi
	movq	%rdx, 168(%rsp)         # 8-byte Spill
	subq	%rcx, %rdx
	movq	%rdx, 160(%rsp)         # 8-byte Spill
	imulq	%rax, %rbp
	shlq	$3, %rbp
	movq	%rbp, 104(%rsp)         # 8-byte Spill
	movq	%rdi, %rcx
	imulq	%rax, %rcx
	shlq	$3, %rcx
	movq	%rcx, 152(%rsp)         # 8-byte Spill
	movq	%r11, %rcx
	imulq	%r14, %rcx
	imulq	%rax, %rcx
	shlq	$3, %rcx
	movq	%rcx, 88(%rsp)          # 8-byte Spill
	movq	%r14, %rcx
	imulq	%rax, %rcx
	shlq	$3, %rcx
	movq	%rcx, 32(%rsp)          # 8-byte Spill
	leaq	(,%rsi,8), %rcx
	movq	%rcx, 144(%rsp)         # 8-byte Spill
	imulq	%rax, %rsi
	shlq	$3, %rsi
	movq	%rsi, -8(%rsp)          # 8-byte Spill
	leaq	(,%rbx,8), %rcx
	movq	%rcx, 80(%rsp)          # 8-byte Spill
	imulq	%rax, %rbx
	movl	%eax, %r13d
	leaq	(,%rax,8), %r9
	shlq	$3, %rbx
	movq	%rbx, 96(%rsp)          # 8-byte Spill
	movsd	.LCPI3_0(%rip), %xmm0   # xmm0 = mem[0],zero
	xorpd	%xmm8, %xmm8
	xorpd	%xmm2, %xmm2
	movq	336(%rsp), %rax
	movq	328(%rsp), %rdx
	movq	320(%rsp), %r8
	movq	312(%rsp), %r10
	movq	304(%rsp), %rcx
	movq	%rcx, -96(%rsp)         # 8-byte Spill
	movq	296(%rsp), %rcx
	movq	%rcx, -104(%rsp)        # 8-byte Spill
	movq	288(%rsp), %rcx
	movq	%rcx, -88(%rsp)         # 8-byte Spill
	movq	280(%rsp), %rcx
	movq	%rcx, -24(%rsp)         # 8-byte Spill
	movq	%r11, 72(%rsp)          # 8-byte Spill
	movl	%r11d, %ecx
	movq	%rcx, 136(%rsp)         # 8-byte Spill
	movq	%rdi, 120(%rsp)         # 8-byte Spill
	movl	%edi, %ecx
	movq	%rcx, 216(%rsp)         # 8-byte Spill
	leaq	48(%rax), %rcx
	movq	%rcx, -32(%rsp)         # 8-byte Spill
	movq	%r14, 192(%rsp)         # 8-byte Spill
	leaq	(,%r14,8), %rcx
	movq	%rcx, 208(%rsp)         # 8-byte Spill
	xorl	%ecx, %ecx
	movq	%rcx, -112(%rsp)        # 8-byte Spill
	movq	%rax, -40(%rsp)         # 8-byte Spill
	jmp	.LBB3_2
	.p2align	4, 0x90
.LBB3_12:                               #   in Loop: Header=BB3_2 Depth=1
	movq	-112(%rsp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movq	80(%rsp), %rax          # 8-byte Reload
	addq	%rax, -32(%rsp)         # 8-byte Folded Spill
	addq	%rax, -40(%rsp)         # 8-byte Folded Spill
	movq	-96(%rsp), %rax         # 8-byte Reload
	addq	104(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, -96(%rsp)         # 8-byte Spill
	movq	-104(%rsp), %rax        # 8-byte Reload
	addq	88(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, -104(%rsp)        # 8-byte Spill
	movq	-88(%rsp), %rax         # 8-byte Reload
	addq	-8(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, -88(%rsp)         # 8-byte Spill
	movq	96(%rsp), %rax          # 8-byte Reload
	addq	%rax, -16(%rsp)         # 8-byte Folded Spill
	addq	%rax, -24(%rsp)         # 8-byte Folded Spill
	movq	%rcx, %rax
	movq	%rcx, -112(%rsp)        # 8-byte Spill
	cmpq	112(%rsp), %rcx         # 8-byte Folded Reload
	je	.LBB3_13
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
                                        #       Child Loop BB3_6 Depth 3
                                        #         Child Loop BB3_19 Depth 4
                                        #         Child Loop BB3_23 Depth 4
                                        #         Child Loop BB3_9 Depth 4
                                        #           Child Loop BB3_10 Depth 5
	cmpl	$0, -124(%rsp)          # 4-byte Folded Reload
	jle	.LBB3_12
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	movq	-112(%rsp), %rax        # 8-byte Reload
	imulq	72(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, 128(%rsp)         # 8-byte Spill
	movq	-24(%rsp), %rax         # 8-byte Reload
	movq	%rax, 24(%rsp)          # 8-byte Spill
	movq	-16(%rsp), %rax         # 8-byte Reload
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movq	-104(%rsp), %rax        # 8-byte Reload
	movq	%rax, -64(%rsp)         # 8-byte Spill
	movq	-96(%rsp), %rax         # 8-byte Reload
	movq	%rax, -72(%rsp)         # 8-byte Spill
	movq	-40(%rsp), %rax         # 8-byte Reload
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movq	-32(%rsp), %rax         # 8-byte Reload
	movq	%rax, (%rsp)            # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -80(%rsp)         # 8-byte Spill
	jmp	.LBB3_4
	.p2align	4, 0x90
.LBB3_25:                               #   in Loop: Header=BB3_4 Depth=2
	movq	-80(%rsp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movq	144(%rsp), %rax         # 8-byte Reload
	addq	%rax, (%rsp)            # 8-byte Folded Spill
	addq	%rax, 8(%rsp)           # 8-byte Folded Spill
	movq	-72(%rsp), %rax         # 8-byte Reload
	addq	152(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, -72(%rsp)         # 8-byte Spill
	movq	-64(%rsp), %rax         # 8-byte Reload
	addq	32(%rsp), %rax          # 8-byte Folded Reload
	movq	%rax, -64(%rsp)         # 8-byte Spill
	movq	-8(%rsp), %rax          # 8-byte Reload
	addq	%rax, 16(%rsp)          # 8-byte Folded Spill
	addq	%rax, 24(%rsp)          # 8-byte Folded Spill
	movq	%rcx, %rax
	movq	%rcx, -80(%rsp)         # 8-byte Spill
	cmpq	136(%rsp), %rcx         # 8-byte Folded Reload
	je	.LBB3_12
.LBB3_4:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_6 Depth 3
                                        #         Child Loop BB3_19 Depth 4
                                        #         Child Loop BB3_23 Depth 4
                                        #         Child Loop BB3_9 Depth 4
                                        #           Child Loop BB3_10 Depth 5
	cmpl	$0, -120(%rsp)          # 4-byte Folded Reload
	jle	.LBB3_25
# %bb.5:                                #   in Loop: Header=BB3_4 Depth=2
	movq	128(%rsp), %rax         # 8-byte Reload
	movq	-80(%rsp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	imulq	120(%rsp), %rax         # 8-byte Folded Reload
	movq	%rax, 200(%rsp)         # 8-byte Spill
	movq	24(%rsp), %rax          # 8-byte Reload
	movq	%rax, 56(%rsp)          # 8-byte Spill
	movq	16(%rsp), %rax          # 8-byte Reload
	movq	%rax, 48(%rsp)          # 8-byte Spill
	movq	-88(%rsp), %rax         # 8-byte Reload
	movq	%rax, 40(%rsp)          # 8-byte Spill
	movq	-72(%rsp), %r14         # 8-byte Reload
	movq	8(%rsp), %rax           # 8-byte Reload
	movq	%rax, 64(%rsp)          # 8-byte Spill
	movq	(%rsp), %rbp            # 8-byte Reload
	xorl	%eax, %eax
	movq	%rax, -56(%rsp)         # 8-byte Spill
	jmp	.LBB3_6
	.p2align	4, 0x90
.LBB3_24:                               #   in Loop: Header=BB3_6 Depth=3
	movq	-56(%rsp), %rcx         # 8-byte Reload
	addq	$1, %rcx
	movq	208(%rsp), %rax         # 8-byte Reload
	addq	%rax, %rbp
	addq	%rax, 64(%rsp)          # 8-byte Folded Spill
	addq	%r9, %r14
	movq	32(%rsp), %rax          # 8-byte Reload
	addq	%rax, 40(%rsp)          # 8-byte Folded Spill
	addq	%rax, 48(%rsp)          # 8-byte Folded Spill
	addq	%rax, 56(%rsp)          # 8-byte Folded Spill
	movq	%rcx, %rax
	movq	%rcx, -56(%rsp)         # 8-byte Spill
	cmpq	216(%rsp), %rcx         # 8-byte Folded Reload
	je	.LBB3_25
.LBB3_6:                                #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_19 Depth 4
                                        #         Child Loop BB3_23 Depth 4
                                        #         Child Loop BB3_9 Depth 4
                                        #           Child Loop BB3_10 Depth 5
	cmpl	$0, -128(%rsp)          # 4-byte Folded Reload
	jle	.LBB3_24
# %bb.7:                                #   in Loop: Header=BB3_6 Depth=3
	movq	200(%rsp), %rax         # 8-byte Reload
	movq	-56(%rsp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	imulq	192(%rsp), %rax         # 8-byte Folded Reload
	cmpl	$0, -116(%rsp)          # 4-byte Folded Reload
	jle	.LBB3_14
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB3_6 Depth=3
	movq	56(%rsp), %rcx          # 8-byte Reload
	movq	48(%rsp), %rdi          # 8-byte Reload
	movq	40(%rsp), %r12          # 8-byte Reload
	movq	-64(%rsp), %r15         # 8-byte Reload
	xorl	%r11d, %r11d
	.p2align	4, 0x90
.LBB3_9:                                #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB3_10 Depth 5
	leaq	(%r11,%rax), %rbx
	xorpd	%xmm3, %xmm3
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB3_10:                               #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        #         Parent Loop BB3_9 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	movsd	(%r12,%rsi,8), %xmm4    # xmm4 = mem[0],zero
	movsd	(%r10,%rsi,8), %xmm5    # xmm5 = mem[0],zero
	mulsd	%xmm4, %xmm5
	addsd	(%rcx,%rsi,8), %xmm5
	movsd	(%r15,%rsi,8), %xmm6    # xmm6 = mem[0],zero
	movsd	(%r8,%rsi,8), %xmm7     # xmm7 = mem[0],zero
	mulsd	%xmm6, %xmm7
	addsd	%xmm5, %xmm7
	movsd	(%r14,%rsi,8), %xmm5    # xmm5 = mem[0],zero
	movsd	(%rdx,%rsi,8), %xmm1    # xmm1 = mem[0],zero
	mulsd	%xmm5, %xmm1
	addsd	%xmm7, %xmm1
	addsd	%xmm1, %xmm3
	movntsd	%xmm1, (%rdi,%rsi,8)
	mulsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm7
	subsd	%xmm4, %xmm7
	movsd	%xmm7, (%r12,%rsi,8)
	movapd	%xmm1, %xmm4
	subsd	%xmm6, %xmm4
	movsd	%xmm4, (%r15,%rsi,8)
	subsd	%xmm5, %xmm1
	movsd	%xmm1, (%r14,%rsi,8)
	addq	$1, %rsi
	cmpq	%rsi, %r13
	jne	.LBB3_10
# %bb.11:                               #   in Loop: Header=BB3_9 Depth=4
	movq	336(%rsp), %rsi
	addsd	(%rsi,%rbx,8), %xmm3
	movsd	%xmm3, (%rsi,%rbx,8)
	addq	$1, %r11
	addq	%r9, %r15
	addq	%r9, %r12
	addq	%r9, %rdi
	addq	%r9, %rcx
	cmpq	-48(%rsp), %r11         # 8-byte Folded Reload
	jne	.LBB3_9
	jmp	.LBB3_24
	.p2align	4, 0x90
.LBB3_14:                               #   in Loop: Header=BB3_6 Depth=3
	cmpl	$3, -128(%rsp)          # 4-byte Folded Reload
	ja	.LBB3_16
# %bb.15:                               #   in Loop: Header=BB3_6 Depth=3
	xorl	%eax, %eax
	jmp	.LBB3_23
.LBB3_16:                               #   in Loop: Header=BB3_6 Depth=3
	cmpq	$0, 176(%rsp)           # 8-byte Folded Reload
	je	.LBB3_17
# %bb.18:                               # %.preheader2
                                        #   in Loop: Header=BB3_6 Depth=3
	movq	160(%rsp), %rsi         # 8-byte Reload
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB3_19:                               #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movupd	-48(%rbp,%rcx,8), %xmm3
	movupd	-32(%rbp,%rcx,8), %xmm4
	movupd	-16(%rbp,%rcx,8), %xmm5
	movupd	(%rbp,%rcx,8), %xmm6
	addpd	%xmm2, %xmm3
	addpd	%xmm2, %xmm4
	movupd	%xmm3, -48(%rbp,%rcx,8)
	movupd	%xmm4, -32(%rbp,%rcx,8)
	addpd	%xmm2, %xmm5
	addpd	%xmm2, %xmm6
	movupd	%xmm5, -16(%rbp,%rcx,8)
	movupd	%xmm6, (%rbp,%rcx,8)
	addq	$8, %rcx
	addq	$2, %rsi
	jne	.LBB3_19
# %bb.20:                               #   in Loop: Header=BB3_6 Depth=3
	cmpq	$0, 168(%rsp)           # 8-byte Folded Reload
	je	.LBB3_22
.LBB3_21:                               #   in Loop: Header=BB3_6 Depth=3
	addq	%rax, %rcx
	movq	336(%rsp), %rax
	movupd	(%rax,%rcx,8), %xmm3
	movupd	16(%rax,%rcx,8), %xmm4
	addpd	%xmm2, %xmm3
	addpd	%xmm2, %xmm4
	movupd	%xmm3, (%rax,%rcx,8)
	movupd	%xmm4, 16(%rax,%rcx,8)
.LBB3_22:                               #   in Loop: Header=BB3_6 Depth=3
	movq	184(%rsp), %rcx         # 8-byte Reload
	movq	%rcx, %rax
	cmpq	-48(%rsp), %rcx         # 8-byte Folded Reload
	je	.LBB3_24
	.p2align	4, 0x90
.LBB3_23:                               #   Parent Loop BB3_2 Depth=1
                                        #     Parent Loop BB3_4 Depth=2
                                        #       Parent Loop BB3_6 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	64(%rsp), %rcx          # 8-byte Reload
	movsd	(%rcx,%rax,8), %xmm1    # xmm1 = mem[0],zero
	addsd	%xmm8, %xmm1
	movsd	%xmm1, (%rcx,%rax,8)
	addq	$1, %rax
	cmpq	%rax, -48(%rsp)         # 8-byte Folded Reload
	jne	.LBB3_23
	jmp	.LBB3_24
.LBB3_17:                               #   in Loop: Header=BB3_6 Depth=3
	xorl	%ecx, %ecx
	cmpq	$0, 168(%rsp)           # 8-byte Folded Reload
	jne	.LBB3_21
	jmp	.LBB3_22
.LBB3_13:
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
	.asciz	"Medium arrays: %d x %d x %d x %d elements\t(%.1lf MB)\n               %d x %d x %d x %d elements\t(%.1lf MB)\n               %d x %d x %d x %d elements\t(%.1lf MB)\n"
	.size	.L.str.3, 160

	.type	Nj,@object              # @Nj
	.data
	.globl	Nj
	.p2align	2
Nj:
	.long	16                      # 0x10
	.size	Nj, 4

	.type	Nk,@object              # @Nk
	.globl	Nk
	.p2align	2
Nk:
	.long	16                      # 0x10
	.size	Nk, 4

	.type	Nm,@object              # @Nm
	.globl	Nm
	.p2align	2
Nm:
	.long	64                      # 0x40
	.size	Nm, 4

	.type	Nl,@object              # @Nl
	.globl	Nl
	.p2align	2
Nl:
	.long	16                      # 0x10
	.size	Nl, 4

	.type	.L.str.4,@object        # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"Large arrays:  %d x %d x %d x %d x %d elements\t(%.1lf MB)\n"
	.size	.L.str.4, 59

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Memory footprint: %.1lf MB\n"
	.size	.L.str.5, 28

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"Running %d times\n"
	.size	.L.str.6, 18

	.type	ntimes,@object          # @ntimes
	.data
	.globl	ntimes
	.p2align	2
ntimes:
	.long	100                     # 0x64
	.size	ntimes, 4

	.type	.L.str.8,@object        # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	";unknown;unknown;0;0;;"
	.size	.L.str.8, 23

	.type	.L__unnamed_2,@object   # @0
	.data
	.p2align	3
.L__unnamed_2:
	.long	0                       # 0x0
	.long	514                     # 0x202
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.8
	.size	.L__unnamed_2, 24

	.type	.L__unnamed_3,@object   # @1
	.p2align	3
.L__unnamed_3:
	.long	0                       # 0x0
	.long	66                      # 0x42
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.8
	.size	.L__unnamed_3, 24

	.type	.L__unnamed_1,@object   # @2
	.p2align	3
.L__unnamed_1:
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str.8
	.size	.L__unnamed_1, 24

	.type	.L.str.9,@object        # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"Sum total: %lf\n"
	.size	.L.str.9, 16

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"%12.1f %11.6f %11.6f %11.6f\n"
	.size	.L.str.11, 29

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"Total time: %11.6f\n"
	.size	.L.str.12, 20

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"--outer"
	.size	.L.str.13, 8

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"--inner"
	.size	.L.str.14, 8

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"--middle"
	.size	.L.str.15, 9

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"--Nj"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"--ntimes"
	.size	.L.str.17, 9

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"ntimes must be 2 or greater\n"
	.size	.L.str.18, 29

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"--help"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Usage: %s [OPTION]\n"
	.size	.L.str.20, 20

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"\t Outer   is %12d elements\n"
	.size	.L.str.26, 28

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"\t Middle are %12d elements\n"
	.size	.L.str.27, 28

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"\t Inner   is %12d elements\n"
	.size	.L.str.28, 28

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Unrecognised argument \"%s\"\n"
	.size	.L.str.29, 28

	.type	.Lstr,@object           # @str
.Lstr:
	.asciz	"Bandwidth MB/s  Min time    Max time    Avg time"
	.size	.Lstr, 49

	.type	.Lstr.30,@object        # @str.30
.Lstr.30:
	.asciz	"\t --outer  n \tSet size of outer dimension"
	.size	.Lstr.30, 42

	.type	.Lstr.31,@object        # @str.31
.Lstr.31:
	.asciz	"\t --inner  n \tSet size of middle dimensions"
	.size	.Lstr.31, 44

	.type	.Lstr.32,@object        # @str.32
.Lstr.32:
	.asciz	"\t --middle n \tSet size of inner dimension"
	.size	.Lstr.32, 42

	.type	.Lstr.33,@object        # @str.33
.Lstr.33:
	.asciz	"\t --Nj     n \tSet size of the j dimension"
	.size	.Lstr.33, 42

	.type	.Lstr.34,@object        # @str.34
.Lstr.34:
	.asciz	"\t --ntimes n\tRun the benchmark n times"
	.size	.Lstr.34, 39

	.ident	"clang version 10.0.0-++20200412072704+50d7e5d5e7d-1~exp1~20200412053303.133 "
	.section	".note.GNU-stack","",@progbits
