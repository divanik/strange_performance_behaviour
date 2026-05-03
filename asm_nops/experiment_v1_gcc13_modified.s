	.file	"experiment_binary_search.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB2860:
	.cfi_startproc
	endbr64
	movl	%esi, %eax
	ret
	.cfi_endproc
.LFE2860:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.text
	.p2align 4
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB6769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
	movq	(%rdi), %rax
	movq	-24(%rax), %rax
	movq	240(%rdi,%rax), %rbp
	testq	%rbp, %rbp
	je	.L9
	cmpb	$0, 56(%rbp)
	movq	%rdi, %rbx
	je	.L5
	movsbl	67(%rbp), %esi
.L6:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
	movq	%rax, %rdi
	popq	%rbp
	.cfi_def_cfa_offset 8
	jmp	_ZNSo5flushEv@PLT
	.p2align 4,,10
	.p2align 3
.L5:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L6
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L6
.L9:
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE6769:
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.section	.text._ZN15BinarySearcher16searchEl,"axG",@progbits,_ZN15BinarySearcher16searchEl,comdat
	.align 2
	.p2align 4
	.weak	_ZN15BinarySearcher16searchEl
	.type	_ZN15BinarySearcher16searchEl, @function
_ZN15BinarySearcher16searchEl:
.LFB5552:
	.cfi_startproc
	endbr64
	movq	(%rdi), %r8
	movq	8(%rdi), %rcx
	xorl	%edx, %edx
	subq	%r8, %rcx
	sarq	$3, %rcx
	jmp	.L12
	.p2align 4,,9
	.p2align 3
.L13:
	shrq	%rax
	addq	%rdx, %rax
	cmpq	%rsi, (%r8,%rax,8)
	cmovg	%rax, %rcx
	cmovle	%rax, %rdx
.L12:
	movq	%rcx, %rax
	subq	%rdx, %rax
	cmpq	$1, %rax
	ja	.L13
	cmpq	%rsi, (%r8,%rdx,8)
	sete	%al
	ret
	.cfi_endproc
.LFE5552:
	.size	_ZN15BinarySearcher16searchEl, .-_ZN15BinarySearcher16searchEl
	.section	.text._ZN15BinarySearcher26searchEl,"axG",@progbits,_ZN15BinarySearcher26searchEl,comdat
	.align 2
	.p2align 4
	.weak	_ZN15BinarySearcher26searchEl
	.type	_ZN15BinarySearcher26searchEl, @function
_ZN15BinarySearcher26searchEl:
.LFB5556:
	.cfi_startproc
	endbr64
	movq	8(%rdi), %r8
	movq	(%rdi), %rcx
	movq	%r8, %rdx
	subq	%rcx, %rdx
	sarq	$3, %rdx
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L18:
	movq	%rdx, %rax
	shrq	%rax
	leaq	0(,%rax,8), %rdi
	cmpq	%rsi, (%rcx,%rax,8)
	jl	.L22
	movq	%rax, %rdx
.L17:
	testq	%rdx, %rdx
	jne	.L18
	xorl	%eax, %eax
	cmpq	%r8, %rcx
	je	.L15
	cmpq	%rsi, (%rcx)
	sete	%al
.L15:
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	subq	$1, %rdx
	leaq	8(%rcx,%rdi), %rcx
	subq	%rax, %rdx
	jmp	.L17
	.cfi_endproc
.LFE5556:
	.size	_ZN15BinarySearcher26searchEl, .-_ZN15BinarySearcher26searchEl
	.section	.text._ZN11STLSearcher6searchEl,"axG",@progbits,_ZN11STLSearcher6searchEl,comdat
	.align 2
	.p2align 4
	.weak	_ZN11STLSearcher6searchEl
	.type	_ZN11STLSearcher6searchEl, @function
_ZN11STLSearcher6searchEl:
.LFB5560:
	.cfi_startproc
	endbr64
	movq	8(%rdi), %r8
	movq	(%rdi), %rdi
	movq	%r8, %rdx
	subq	%rdi, %rdx
	movq	%rdx, %rax
	sarq	$3, %rax
	testq	%rdx, %rdx
	jle	.L24
	.p2align 4,,10
	.p2align 3
.L27:
	movq	%rax, %rdx
	sarq	%rdx
	leaq	(%rdi,%rdx,8), %rcx
	cmpq	%rsi, (%rcx)
	jge	.L25
	subq	%rdx, %rax
	leaq	8(%rcx), %rdi
	subq	$1, %rax
	testq	%rax, %rax
	jg	.L27
.L24:
	xorl	%eax, %eax
	cmpq	%rdi, %r8
	je	.L23
	cmpq	%rsi, (%rdi)
	setle	%al
.L23:
	ret
	.p2align 4,,10
	.p2align 3
.L25:
	testq	%rdx, %rdx
	je	.L24
	movq	%rdx, %rax
	jmp	.L27
	.cfi_endproc
.LFE5560:
	.size	_ZN11STLSearcher6searchEl, .-_ZN11STLSearcher6searchEl
	.text
	.p2align 4
	.globl	_Z19get_compose_segmentmmmm
	.type	_Z19get_compose_segmentmmmm, @function
_Z19get_compose_segmentmmmm:
.LFB5565:
	.cfi_startproc
	endbr64
	movq	%rdx, %r8
	testq	%rsi, %rsi
	je	.L34
	leaq	-1(%rsi), %rax
	subq	%rcx, %rdi
	xorl	%edx, %edx
	imulq	%rdi, %rax
	divq	%rcx
	xorl	%edx, %edx
	movq	%rax, %rdi
	divq	%rcx
	leaq	(%rsi,%r8), %rax
	subq	%rdx, %rdi
	leaq	(%rdi,%rax), %rsi
.L34:
	movq	%rsi, %rax
	ret
	.cfi_endproc
.LFE5565:
	.size	_Z19get_compose_segmentmmmm, .-_Z19get_compose_segmentmmmm
	.section	.text._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,"axG",@progbits,_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,comdat
	.p2align 4
	.weak	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.type	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, @function
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_:
.LFB5621:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	8(%rdi), %r12
	movq	%rsi, %rdi
	movq	%rsi, %rbx
	call	strlen@PLT
	movq	%rax, %rdx
	xorl	%eax, %eax
	cmpq	%rdx, %r12
	je	.L44
.L38:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L44:
	.cfi_restore_state
	movl	$1, %eax
	testq	%r12, %r12
	je	.L38
	movq	0(%rbp), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	memcmp@PLT
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	testl	%eax, %eax
	popq	%r12
	.cfi_def_cfa_offset 8
	sete	%al
	ret
	.cfi_endproc
.LFE5621:
	.size	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, .-_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.section	.text._ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,"axG",@progbits,_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_,comdat
	.p2align 4
	.weak	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.type	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, @function
_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_:
.LFB5715:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movl	%r8d, %r14d
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rcx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%rsi, 8(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	call	__errno_location@PLT
	movl	%r14d, %edx
	leaq	16(%rsp), %rsi
	movq	%rbp, %rdi
	movl	(%rax), %r13d
	movq	%rax, %rbx
	movl	$0, (%rax)
	call	*%r15
	movq	16(%rsp), %rdx
	cmpq	%rbp, %rdx
	je	.L55
	movl	(%rbx), %ecx
	cmpl	$34, %ecx
	je	.L56
	testq	%r12, %r12
	je	.L48
	subq	%rbp, %rdx
	movq	%rdx, (%r12)
.L48:
	testl	%ecx, %ecx
	je	.L57
.L45:
	movq	24(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L58
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L57:
	.cfi_restore_state
	movl	%r13d, (%rbx)
	jmp	.L45
.L56:
	movq	8(%rsp), %rdi
	call	_ZSt20__throw_out_of_rangePKc@PLT
.L55:
	movq	8(%rsp), %rdi
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.L58:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE5715:
	.size	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_, .-_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	.section	.rodata._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"basic_string: construction from null is not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB6004:
	.cfi_startproc
	endbr64
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16(%rdi), %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	movq	%r13, (%rdi)
	testq	%rsi, %rsi
	je	.L70
	movq	%rdi, %rbp
	movq	%rsi, %rdi
	movq	%rsi, %r12
	call	strlen@PLT
	movq	%rax, %rbx
	cmpq	$15, %rax
	ja	.L71
	cmpq	$1, %rax
	je	.L72
	testq	%rax, %rax
	jne	.L62
.L64:
	movq	%rbx, 8(%rbp)
	movb	$0, 0(%r13,%rbx)
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L72:
	.cfi_restore_state
	movzbl	(%r12), %eax
	movb	%al, 16(%rbp)
	jmp	.L64
	.p2align 4,,10
	.p2align 3
.L71:
	leaq	1(%rax), %rdi
	call	_Znwm@PLT
	movq	%rbx, 16(%rbp)
	movq	%rax, 0(%rbp)
	movq	%rax, %r13
.L62:
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%r12, %rsi
	call	memcpy@PLT
	movq	0(%rbp), %r13
	jmp	.L64
.L70:
	leaq	.LC0(%rip), %rdi
	call	_ZSt19__throw_logic_errorPKc@PLT
	.cfi_endproc
.LFE6004:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZNSt6vectorIlSaIlEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorIlSaIlEEC5ERKS1_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorIlSaIlEEC2ERKS1_
	.type	_ZNSt6vectorIlSaIlEEC2ERKS1_, @function
_ZNSt6vectorIlSaIlEEC2ERKS1_:
.LFB6020:
	.cfi_startproc
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	pxor	%xmm0, %xmm0
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	8(%rsi), %rbx
	subq	(%rsi), %rbx
	movq	$0, 16(%rdi)
	movups	%xmm0, (%rdi)
	je	.L79
	movabsq	$9223372036854775800, %rax
	cmpq	%rbx, %rax
	jb	.L81
	movq	%rbx, %rdi
	call	_Znwm@PLT
	movq	%rax, %rcx
.L74:
	movq	%rcx, %xmm0
	addq	%rcx, %rbx
	punpcklqdq	%xmm0, %xmm0
	movq	%rbx, 16(%rbp)
	movups	%xmm0, 0(%rbp)
	movq	(%r12), %rsi
	movq	8(%r12), %rax
	subq	%rsi, %rax
	cmpq	$8, %rax
	jle	.L76
	movq	%rcx, %rdi
	movq	%rax, %rdx
	movq	%rax, %rbx
	call	memmove@PLT
	movq	%rax, %rcx
.L77:
	addq	%rbx, %rcx
	movq	%rcx, 8(%rbp)
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L79:
	.cfi_restore_state
	xorl	%ecx, %ecx
	jmp	.L74
	.p2align 4,,10
	.p2align 3
.L76:
	movq	%rax, %rbx
	jne	.L77
	movq	(%rsi), %rax
	movl	$8, %ebx
	movq	%rax, (%rcx)
	jmp	.L77
	.p2align 4,,10
	.p2align 3
.L81:
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
	.cfi_endproc
.LFE6020:
	.size	_ZNSt6vectorIlSaIlEEC2ERKS1_, .-_ZNSt6vectorIlSaIlEEC2ERKS1_
	.weak	_ZNSt6vectorIlSaIlEEC1ERKS1_
	.set	_ZNSt6vectorIlSaIlEEC1ERKS1_,_ZNSt6vectorIlSaIlEEC2ERKS1_
	.section	.rodata._Z13run_benchmarkI15BinarySearcher1EvRT_RKSt6vectorIlSaIlEE.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Answer: "
	.section	.text._Z13run_benchmarkI15BinarySearcher1EvRT_RKSt6vectorIlSaIlEE,"axG",@progbits,_Z13run_benchmarkI15BinarySearcher1EvRT_RKSt6vectorIlSaIlEE,comdat
	.p2align 4
	.weak	_Z13run_benchmarkI15BinarySearcher1EvRT_RKSt6vectorIlSaIlEE
	.type	_Z13run_benchmarkI15BinarySearcher1EvRT_RKSt6vectorIlSaIlEE, @function
_Z13run_benchmarkI15BinarySearcher1EvRT_RKSt6vectorIlSaIlEE:
.LFB6061:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	(%rsi), %rbx
	movq	8(%rsi), %r14
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	cmpq	%r14, %rbx
	je	.L83
	.p2align 4,,10
	.p2align 3
.L84:
	movq	(%rbx), %rsi
	movq	%rbp, %rdi
	addq	$8, %rbx
	call	_ZN15BinarySearcher16searchEl
	movzbl	%al, %eax
	addq	%rax, %r13
	cmpq	%rbx, %r14
	jne	.L84
.L83:
	movq	%rsp, %rsi
	movl	$2, %edi
	movl	$2, 32(%rsp)
	call	clock_gettime@PLT
	movq	(%r12), %rbx
	movq	8(%r12), %r14
	cmpq	%rbx, %r14
	je	.L85
	.p2align 4,,10
	.p2align 3
.L86:
	movq	(%rbx), %rsi
	movq	%rbp, %rdi
	addq	$8, %rbx
	call	_ZN15BinarySearcher16searchEl
	movzbl	%al, %eax
	addq	%rax, %r13
	cmpq	%rbx, %r14
	jne	.L86
.L85:
	movl	32(%rsp), %edi
	leaq	_ZSt4cerr(%rip), %rbp
	leaq	16(%rsp), %rsi
	call	clock_gettime@PLT
	movq	%rbp, %rdi
	movq	16(%rsp), %rbx
	subq	(%rsp), %rbx
	movl	$8, %edx
	leaq	.LC1(%rip), %rsi
	imulq	$1000000000, %rbx, %rbx
	addq	24(%rsp), %rbx
	subq	8(%rsp), %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %r13
	testq	%r13, %r13
	je	.L94
	cmpb	$0, 56(%r13)
	je	.L88
	movsbl	67(%r13), %esi
.L89:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdi
	movq	-24(%rax), %rax
	movq	$8, 8(%rdi,%rax)
	testq	%rbx, %rbx
	js	.L90
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rbx, %xmm0
.L91:
	movq	8(%r12), %rax
	subq	(%r12), %rax
	sarq	$3, %rax
	js	.L92
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L93:
	divsd	%xmm1, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L94
	cmpb	$0, 56(%rbp)
	je	.L95
	movsbl	67(%rbp), %esi
.L96:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L107
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L88:
	.cfi_restore_state
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%r13), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L89
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L89
	.p2align 4,,10
	.p2align 3
.L95:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L96
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L96
	.p2align 4,,10
	.p2align 3
.L92:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L93
	.p2align 4,,10
	.p2align 3
.L90:
	movq	%rbx, %rax
	andl	$1, %ebx
	pxor	%xmm0, %xmm0
	shrq	%rax
	orq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L91
.L94:
	call	_ZSt16__throw_bad_castv@PLT
.L107:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE6061:
	.size	_Z13run_benchmarkI15BinarySearcher1EvRT_RKSt6vectorIlSaIlEE, .-_Z13run_benchmarkI15BinarySearcher1EvRT_RKSt6vectorIlSaIlEE
	.section	.text._Z13run_benchmarkI15BinarySearcher2EvRT_RKSt6vectorIlSaIlEE,"axG",@progbits,_Z13run_benchmarkI15BinarySearcher2EvRT_RKSt6vectorIlSaIlEE,comdat
	.p2align 4
	.weak	_Z13run_benchmarkI15BinarySearcher2EvRT_RKSt6vectorIlSaIlEE
	.type	_Z13run_benchmarkI15BinarySearcher2EvRT_RKSt6vectorIlSaIlEE, @function
_Z13run_benchmarkI15BinarySearcher2EvRT_RKSt6vectorIlSaIlEE:
.LFB6066:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	(%rsi), %rbx
	movq	8(%rsi), %r14
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	cmpq	%r14, %rbx
	je	.L109
	.p2align 4,,10
	.p2align 3
.L110:
	movq	(%rbx), %rsi
	movq	%rbp, %rdi
	addq	$8, %rbx
	call	_ZN15BinarySearcher26searchEl
	movzbl	%al, %eax
	addq	%rax, %r13
	cmpq	%rbx, %r14
	jne	.L110
.L109:
	movq	%rsp, %rsi
	movl	$2, %edi
	movl	$2, 32(%rsp)
	call	clock_gettime@PLT
	movq	(%r12), %rbx
	movq	8(%r12), %r14
	cmpq	%rbx, %r14
	je	.L111
	.p2align 4,,10
	.p2align 3
.L112:
	movq	(%rbx), %rsi
	movq	%rbp, %rdi
	addq	$8, %rbx
	call	_ZN15BinarySearcher26searchEl
	movzbl	%al, %eax
	addq	%rax, %r13
	cmpq	%r14, %rbx
	jne	.L112
.L111:
	movl	32(%rsp), %edi
	leaq	_ZSt4cerr(%rip), %rbp
	leaq	16(%rsp), %rsi
	call	clock_gettime@PLT
	movq	%rbp, %rdi
	movq	16(%rsp), %rbx
	subq	(%rsp), %rbx
	movl	$8, %edx
	leaq	.LC1(%rip), %rsi
	imulq	$1000000000, %rbx, %rbx
	addq	24(%rsp), %rbx
	subq	8(%rsp), %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %r13
	testq	%r13, %r13
	je	.L120
	cmpb	$0, 56(%r13)
	je	.L114
	movsbl	67(%r13), %esi
.L115:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdi
	movq	-24(%rax), %rax
	movq	$8, 8(%rdi,%rax)
	testq	%rbx, %rbx
	js	.L116
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rbx, %xmm0
.L117:
	movq	8(%r12), %rax
	subq	(%r12), %rax
	sarq	$3, %rax
	js	.L118
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L119:
	divsd	%xmm1, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L120
	cmpb	$0, 56(%rbp)
	je	.L121
	movsbl	67(%rbp), %esi
.L122:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L133
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L114:
	.cfi_restore_state
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%r13), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L115
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L115
	.p2align 4,,10
	.p2align 3
.L121:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L122
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L122
	.p2align 4,,10
	.p2align 3
.L118:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L119
	.p2align 4,,10
	.p2align 3
.L116:
	movq	%rbx, %rax
	andl	$1, %ebx
	pxor	%xmm0, %xmm0
	shrq	%rax
	orq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L117
.L120:
	call	_ZSt16__throw_bad_castv@PLT
.L133:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE6066:
	.size	_Z13run_benchmarkI15BinarySearcher2EvRT_RKSt6vectorIlSaIlEE, .-_Z13run_benchmarkI15BinarySearcher2EvRT_RKSt6vectorIlSaIlEE
	.section	.text._Z13run_benchmarkI11STLSearcherEvRT_RKSt6vectorIlSaIlEE,"axG",@progbits,_Z13run_benchmarkI11STLSearcherEvRT_RKSt6vectorIlSaIlEE,comdat
	.p2align 4
	.weak	_Z13run_benchmarkI11STLSearcherEvRT_RKSt6vectorIlSaIlEE
	.type	_Z13run_benchmarkI11STLSearcherEvRT_RKSt6vectorIlSaIlEE, @function
_Z13run_benchmarkI11STLSearcherEvRT_RKSt6vectorIlSaIlEE:
.LFB6067:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	(%rsi), %rbx
	movq	8(%rsi), %r14
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	cmpq	%r14, %rbx
	je	.L135
	.p2align 4,,10
	.p2align 3
.L136:
	movq	(%rbx), %rsi
	movq	%rbp, %rdi
	addq	$8, %rbx
	call	_ZN11STLSearcher6searchEl
	movzbl	%al, %eax
	addq	%rax, %r13
	cmpq	%rbx, %r14
	jne	.L136
.L135:
	movq	%rsp, %rsi
	movl	$2, %edi
	movl	$2, 32(%rsp)
	call	clock_gettime@PLT
	movq	(%r12), %rbx
	movq	8(%r12), %r14
	cmpq	%rbx, %r14
	je	.L137
	.p2align 4,,10
	.p2align 3
.L138:
	movq	(%rbx), %rsi
	movq	%rbp, %rdi
	addq	$8, %rbx
	call	_ZN11STLSearcher6searchEl
	movzbl	%al, %eax
	addq	%rax, %r13
	cmpq	%r14, %rbx
	jne	.L138
.L137:
	movl	32(%rsp), %edi
	leaq	_ZSt4cerr(%rip), %rbp
	leaq	16(%rsp), %rsi
	call	clock_gettime@PLT
	movq	%rbp, %rdi
	movq	16(%rsp), %rbx
	subq	(%rsp), %rbx
	movl	$8, %edx
	leaq	.LC1(%rip), %rsi
	imulq	$1000000000, %rbx, %rbx
	addq	24(%rsp), %rbx
	subq	8(%rsp), %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %r13
	testq	%r13, %r13
	je	.L146
	cmpb	$0, 56(%r13)
	je	.L140
	movsbl	67(%r13), %esi
.L141:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdi
	movq	-24(%rax), %rax
	movq	$8, 8(%rdi,%rax)
	testq	%rbx, %rbx
	js	.L142
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rbx, %xmm0
.L143:
	movq	8(%r12), %rax
	subq	(%r12), %rax
	sarq	$3, %rax
	js	.L144
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L145:
	divsd	%xmm1, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L146
	cmpb	$0, 56(%rbp)
	je	.L147
	movsbl	67(%rbp), %esi
.L148:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L159
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L140:
	.cfi_restore_state
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%r13), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L141
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L141
	.p2align 4,,10
	.p2align 3
.L147:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L148
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L148
	.p2align 4,,10
	.p2align 3
.L144:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L145
	.p2align 4,,10
	.p2align 3
.L142:
	movq	%rbx, %rax
	andl	$1, %ebx
	pxor	%xmm0, %xmm0
	shrq	%rax
	orq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L143
.L146:
	call	_ZSt16__throw_bad_castv@PLT
.L159:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE6067:
	.size	_Z13run_benchmarkI11STLSearcherEvRT_RKSt6vectorIlSaIlEE, .-_Z13run_benchmarkI11STLSearcherEvRT_RKSt6vectorIlSaIlEE
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv:
.LFB6127:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	leaq	16(%rdi), %rdx
	cmpq	%rdx, %rax
	je	.L160
	movq	16(%rdi), %rsi
	movq	%rax, %rdi
	addq	$1, %rsi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L160:
	ret
	.cfi_endproc
.LFE6127:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	.section	.text._Z11build_btreeIlLm8EEvSt4spanIKT_Lm18446744073709551615EES0_IS1_Lm18446744073709551615EE,"axG",@progbits,_Z11build_btreeIlLm8EEvSt4spanIKT_Lm18446744073709551615EES0_IS1_Lm18446744073709551615EE,comdat
	.p2align 4
	.weak	_Z11build_btreeIlLm8EEvSt4spanIKT_Lm18446744073709551615EES0_IS1_Lm18446744073709551615EE
	.type	_Z11build_btreeIlLm8EEvSt4spanIKT_Lm18446744073709551615EES0_IS1_Lm18446744073709551615EE, @function
_Z11build_btreeIlLm8EEvSt4spanIKT_Lm18446744073709551615EES0_IS1_Lm18446744073709551615EE:
.LFB6324:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdx, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	cmpq	$8, %rsi
	jbe	.L193
	movq	(%rdi), %rdx
	leaq	-8(%rsi), %rbx
	movq	%rcx, %rax
	xorl	%r14d, %r14d
	subq	$8, %rax
	xorl	%r13d, %r13d
	movl	$1, %r12d
	movq	%rdx, 0(%rbp)
	movq	%rbx, %rdx
	andq	$-64, %rdx
	movq	%rax, 8(%rsp)
	movq	8(%rdi,%rdx), %rdx
	movq	%rdx, 8(%rbp)
	leaq	(%rbx,%rbx), %rdx
	movq	%rdx, %rcx
	addq	%rbx, %rdx
	andq	$-64, %rcx
	movq	16(%rdi,%rcx), %rcx
	movq	%rcx, 16(%rbp)
	movq	%rdx, %rcx
	addq	%rdx, %rdx
	andq	$-64, %rcx
	andq	$-64, %rdx
	movq	24(%rdi,%rcx), %rcx
	movq	%rcx, 24(%rbp)
	leaq	0(,%rbx,4), %rcx
	movq	%rcx, %rsi
	addq	%rbx, %rcx
	andq	$-64, %rsi
	andq	$-64, %rcx
	movq	32(%rdi,%rsi), %rsi
	movq	%rsi, 32(%rbp)
	movq	40(%rdi,%rcx), %rcx
	movq	%rcx, 40(%rbp)
	movq	48(%rdi,%rdx), %rdx
	movq	%rdx, 48(%rbp)
	leaq	0(,%rbx,8), %rdx
	subq	%rbx, %rdx
	andq	$-64, %rdx
	movq	56(%rdi,%rdx), %rdx
	movq	%rdx, 56(%rbp)
	.p2align 4,,10
	.p2align 3
.L172:
	movq	8(%rsp), %rax
	movq	%r13, %rdx
	shrq	$6, %rdx
	addq	%rax, %r13
	salq	$3, %rdx
	movq	%r13, %rcx
	leaq	64(%rbp,%rdx,8), %r8
	shrq	$6, %rcx
	salq	$3, %rcx
	subq	%rdx, %rcx
	movq	%r14, %rdx
	addq	%rbx, %r14
	shrq	$6, %rdx
	salq	$3, %rdx
	leaq	(%rdx,%r12), %rsi
	addq	$1, %r12
	leaq	(%r15,%rsi,8), %rdi
	movq	%r14, %rsi
	shrq	$6, %rsi
	salq	$3, %rsi
	subq	%rdx, %rsi
	movq	%r8, %rdx
	call	_Z11build_btreeIlLm8EEvSt4spanIKT_Lm18446744073709551615EES0_IS1_Lm18446744073709551615EE
	cmpq	$9, %r12
	jne	.L172
.L162:
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L193:
	.cfi_restore_state
	salq	$3, %rsi
	movq	%rsi, %rcx
	sarq	$3, %rcx
	testq	%rsi, %rsi
	je	.L162
	leaq	-1(%rcx), %rdx
	cmpq	$2, %rdx
	jbe	.L165
	leaq	8(%rdi), %rdx
	cmpq	%rdx, %rbp
	jne	.L166
	movq	(%rdi), %rdx
	movq	%rdx, 0(%rbp)
	movq	8(%rdi), %rdx
	movq	%rdx, 8(%rbp)
	movq	16(%rdi), %rdx
	movq	%rdx, 16(%rbp)
	movq	24(%rdi), %rdx
	movq	%rdx, 24(%rbp)
	cmpq	$32, %rsi
	je	.L162
	movq	32(%rdi), %rdx
	movq	%rdx, 32(%rbp)
	cmpq	$40, %rsi
	je	.L162
	movq	40(%rdi), %rdx
	movq	%rdx, 40(%rbp)
	cmpq	$48, %rsi
	je	.L162
	movq	48(%rdi), %rdx
	movq	%rdx, 48(%rbp)
	cmpq	$56, %rsi
	je	.L162
	movq	56(%rdi), %rdx
	movq	%rdx, 56(%rbp)
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L165:
	movq	(%rdi), %rcx
	movq	%rcx, 0(%rbp)
	testq	%rdx, %rdx
	je	.L162
	movq	8(%rdi), %rdx
	movq	%rdx, 8(%rbp)
	cmpq	$16, %rsi
	je	.L162
	movq	16(%rdi), %rdx
	movq	%rdx, 16(%rbp)
	jmp	.L162
	.p2align 4,,10
	.p2align 3
.L166:
	movdqu	(%rdi), %xmm0
	movq	%rcx, %rdx
	shrq	%rdx
	movups	%xmm0, 0(%rbp)
	movdqu	16(%rdi), %xmm1
	movups	%xmm1, 16(%rbp)
	cmpq	$2, %rdx
	je	.L169
	movdqu	32(%rdi), %xmm2
	movups	%xmm2, 32(%rbp)
	cmpq	$4, %rdx
	jne	.L169
	movdqu	48(%rdi), %xmm3
	movups	%xmm3, 48(%rbp)
	jmp	.L162
.L169:
	movq	%rcx, %rsi
	andq	$-2, %rsi
	leaq	0(,%rsi,8), %rdx
	addq	%rdx, %r15
	addq	%rbp, %rdx
	cmpq	%rcx, %rsi
	je	.L162
	movq	(%r15), %rax
	movq	%rax, (%rdx)
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE6324:
	.size	_Z11build_btreeIlLm8EEvSt4spanIKT_Lm18446744073709551615EES0_IS1_Lm18446744073709551615EE, .-_Z11build_btreeIlLm8EEvSt4spanIKT_Lm18446744073709551615EES0_IS1_Lm18446744073709551615EE
	.section	.text._ZN13BTreeSearcherIlLm8EE6searchEl,"axG",@progbits,_ZN13BTreeSearcherIlLm8EE6searchEl,comdat
	.align 2
	.p2align 4
	.weak	_ZN13BTreeSearcherIlLm8EE6searchEl
	.type	_ZN13BTreeSearcherIlLm8EE6searchEl, @function
_ZN13BTreeSearcherIlLm8EE6searchEl:
.LFB6335:
	.cfi_startproc
	endbr64
	cmpq	$0, 16(%rdi)
	movq	%rsi, %rcx
	je	.L195
	movq	8(%rdi), %rdx
	movq	(%rdi), %rax
	cmpq	%rsi, (%rax,%rdx,8)
	jle	.L249
.L195:
	movq	32(%rdi), %rax
	movq	24(%rdi), %rdx
	cmpq	$8, %rax
	ja	.L199
	jmp	.L200
	.p2align 4,,10
	.p2align 3
.L255:
	jl	.L216
	cmpq	8(%rdx), %rcx
	je	.L223
	jl	.L204
	cmpq	16(%rdx), %rcx
	je	.L223
	jl	.L250
	cmpq	24(%rdx), %rcx
	je	.L223
	jl	.L251
	cmpq	32(%rdx), %rcx
	je	.L223
	jl	.L252
	cmpq	40(%rdx), %rcx
	je	.L223
	jl	.L253
	cmpq	48(%rdx), %rcx
	je	.L223
	jl	.L254
	movq	56(%rdx), %r8
	cmpq	%r8, %rcx
	je	.L223
	leaq	-8(%rax), %r9
	leaq	0(,%r9,8), %r10
	movq	%r10, %rax
	subq	%r9, %rax
	movq	%rax, %rsi
	shrq	$6, %rsi
	leaq	0(,%rsi,8), %rdi
	cmpq	%r8, %rcx
	jl	.L211
	addq	$1, %rsi
	movq	%r10, %rax
	salq	$6, %rsi
.L206:
	shrq	$6, %rax
	addq	%rsi, %rdx
	salq	$3, %rax
	subq	%rdi, %rax
	cmpq	$8, %rax
	jbe	.L200
.L199:
	cmpq	(%rdx), %rcx
	jne	.L255
.L223:
	xorl	%eax, %eax
	ret
.L249:
	movq	48(%rdi), %rsi
	movq	40(%rdi), %rdx
	testq	%rsi, %rsi
	je	.L223
	xorl	%eax, %eax
	jmp	.L197
	.p2align 4,,10
	.p2align 3
.L256:
	jl	.L223
	addq	$1, %rax
	cmpq	%rsi, %rax
	je	.L223
.L197:
	cmpq	(%rdx,%rax,8), %rcx
	jne	.L256
.L216:
	movl	$1, %eax
	ret
.L200:
	testq	%rax, %rax
	je	.L216
	cmpq	(%rdx), %rcx
	je	.L223
	jl	.L216
	cmpq	$1, %rax
	je	.L216
	cmpq	8(%rdx), %rcx
	je	.L223
	jl	.L216
	cmpq	$2, %rax
	je	.L216
	cmpq	16(%rdx), %rcx
	je	.L223
	jl	.L216
	cmpq	$3, %rax
	je	.L216
	cmpq	24(%rdx), %rcx
	je	.L223
	jl	.L216
	cmpq	$4, %rax
	je	.L216
	cmpq	32(%rdx), %rcx
	je	.L223
	jl	.L216
	cmpq	$5, %rax
	je	.L216
	cmpq	40(%rdx), %rcx
	je	.L223
	jl	.L216
	cmpq	$6, %rax
	je	.L216
	cmpq	48(%rdx), %rcx
	je	.L223
	jl	.L216
	cmpq	$8, %rax
	jne	.L216
	cmpq	%rcx, 56(%rdx)
	setne	%al
	ret
.L204:
	subq	$8, %rax
	movl	$64, %esi
	xorl	%edi, %edi
	jmp	.L206
.L250:
	subq	$8, %rax
	movq	%rax, %rdi
	addq	%rax, %rax
	shrq	$6, %rdi
	salq	$3, %rdi
	leaq	64(,%rdi,8), %rsi
	jmp	.L206
.L251:
	subq	$8, %rax
	leaq	(%rax,%rax), %r8
.L248:
	movq	%r8, %rdi
	addq	%r8, %rax
	shrq	$6, %rdi
	salq	$3, %rdi
	leaq	64(,%rdi,8), %rsi
	jmp	.L206
.L252:
	subq	$8, %rax
	leaq	(%rax,%rax,2), %rdi
	salq	$2, %rax
	shrq	$6, %rdi
	salq	$3, %rdi
	leaq	64(,%rdi,8), %rsi
	jmp	.L206
.L253:
	subq	$8, %rax
	leaq	0(,%rax,4), %r8
	jmp	.L248
.L254:
	subq	$8, %rax
	leaq	(%rax,%rax,4), %rdi
	leaq	(%rax,%rax,2), %rax
	shrq	$6, %rdi
	addq	%rax, %rax
	salq	$3, %rdi
	leaq	64(,%rdi,8), %rsi
	jmp	.L206
.L211:
	leaq	(%r9,%r9,2), %rdi
	addq	%rdi, %rdi
	shrq	$6, %rdi
	salq	$3, %rdi
	leaq	64(,%rdi,8), %rsi
	jmp	.L206
	.cfi_endproc
.LFE6335:
	.size	_ZN13BTreeSearcherIlLm8EE6searchEl, .-_ZN13BTreeSearcherIlLm8EE6searchEl
	.section	.text._Z13run_benchmarkI13BTreeSearcherIlLm8EEEvRT_RKSt6vectorIlSaIlEE,"axG",@progbits,_Z13run_benchmarkI13BTreeSearcherIlLm8EEEvRT_RKSt6vectorIlSaIlEE,comdat
	.p2align 4
	.weak	_Z13run_benchmarkI13BTreeSearcherIlLm8EEEvRT_RKSt6vectorIlSaIlEE
	.type	_Z13run_benchmarkI13BTreeSearcherIlLm8EEEvRT_RKSt6vectorIlSaIlEE, @function
_Z13run_benchmarkI13BTreeSearcherIlLm8EEEvRT_RKSt6vectorIlSaIlEE:
.LFB6098:
	.cfi_startproc
	endbr64
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	xorl	%r13d, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	movq	%rsi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$48, %rsp
	.cfi_def_cfa_offset 96
	movq	(%rsi), %rbx
	movq	8(%rsi), %r14
	movq	%fs:40, %rax
	movq	%rax, 40(%rsp)
	xorl	%eax, %eax
	cmpq	%r14, %rbx
	je	.L258
	.p2align 4,,10
	.p2align 3
.L259:
	movq	(%rbx), %rsi
	movq	%rbp, %rdi
	addq	$8, %rbx
	call	_ZN13BTreeSearcherIlLm8EE6searchEl
	movzbl	%al, %eax
	addq	%rax, %r13
	cmpq	%rbx, %r14
	jne	.L259
.L258:
	movq	%rsp, %rsi
	movl	$2, %edi
	movl	$2, 32(%rsp)
	call	clock_gettime@PLT
	movq	(%r12), %rbx
	movq	8(%r12), %r14
	cmpq	%rbx, %r14
	je	.L260
	.p2align 4,,10
	.p2align 3
.L261:
	movq	(%rbx), %rsi
	movq	%rbp, %rdi
	addq	$8, %rbx
	call	_ZN13BTreeSearcherIlLm8EE6searchEl
	movzbl	%al, %eax
	addq	%rax, %r13
	cmpq	%r14, %rbx
	jne	.L261
.L260:
	movl	32(%rsp), %edi
	leaq	_ZSt4cerr(%rip), %rbp
	leaq	16(%rsp), %rsi
	call	clock_gettime@PLT
	movq	%rbp, %rdi
	movq	16(%rsp), %rbx
	subq	(%rsp), %rbx
	movl	$8, %edx
	leaq	.LC1(%rip), %rsi
	imulq	$1000000000, %rbx, %rbx
	addq	24(%rsp), %rbx
	subq	8(%rsp), %rbx
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rsi
	movq	%rbp, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %rbp
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbp,%rax), %r13
	testq	%r13, %r13
	je	.L269
	cmpb	$0, 56(%r13)
	je	.L263
	movsbl	67(%r13), %esi
.L264:
	movq	%rbp, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	movq	_ZSt4cout(%rip), %rax
	leaq	_ZSt4cout(%rip), %rdi
	movq	-24(%rax), %rax
	movq	$8, 8(%rdi,%rax)
	testq	%rbx, %rbx
	js	.L265
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rbx, %xmm0
.L266:
	movq	8(%r12), %rax
	subq	(%r12), %rax
	sarq	$3, %rax
	js	.L267
	pxor	%xmm1, %xmm1
	cvtsi2sdq	%rax, %xmm1
.L268:
	divsd	%xmm1, %xmm0
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	movq	%rax, %rbx
	movq	(%rax), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.L269
	cmpb	$0, 56(%rbp)
	je	.L270
	movsbl	67(%rbp), %esi
.L271:
	movq	%rbx, %rdi
	call	_ZNSo3putEc@PLT
	movq	%rax, %rdi
	call	_ZNSo5flushEv@PLT
	movq	40(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L282
	addq	$48, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L263:
	.cfi_restore_state
	movq	%r13, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%r13), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L264
	movq	%r13, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L264
	.p2align 4,,10
	.p2align 3
.L270:
	movq	%rbp, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	0(%rbp), %rax
	movl	$10, %esi
	leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
	movq	48(%rax), %rax
	cmpq	%rdx, %rax
	je	.L271
	movq	%rbp, %rdi
	call	*%rax
	movsbl	%al, %esi
	jmp	.L271
	.p2align 4,,10
	.p2align 3
.L267:
	movq	%rax, %rdx
	andl	$1, %eax
	pxor	%xmm1, %xmm1
	shrq	%rdx
	orq	%rax, %rdx
	cvtsi2sdq	%rdx, %xmm1
	addsd	%xmm1, %xmm1
	jmp	.L268
	.p2align 4,,10
	.p2align 3
.L265:
	movq	%rbx, %rax
	andl	$1, %ebx
	pxor	%xmm0, %xmm0
	shrq	%rax
	orq	%rbx, %rax
	cvtsi2sdq	%rax, %xmm0
	addsd	%xmm0, %xmm0
	jmp	.L266
.L269:
	call	_ZSt16__throw_bad_castv@PLT
.L282:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE6098:
	.size	_Z13run_benchmarkI13BTreeSearcherIlLm8EEEvRT_RKSt6vectorIlSaIlEE, .-_Z13run_benchmarkI13BTreeSearcherIlLm8EEEvRT_RKSt6vectorIlSaIlEE
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB6604:
	.cfi_startproc
	endbr64
	movdqa	.LC2(%rip), %xmm3
	movq	%rdi, %rcx
	movq	%rdi, %rax
	movdqa	.LC3(%rip), %xmm4
	movdqa	.LC4(%rip), %xmm5
	movdqa	.LC5(%rip), %xmm6
	leaq	1808(%rdi), %rdx
	pxor	%xmm7, %xmm7
	.p2align 4,,10
	.p2align 3
.L284:
	movdqu	(%rax), %xmm0
	movdqu	8(%rax), %xmm1
	addq	$16, %rax
	movdqu	3160(%rax), %xmm2
	pand	%xmm4, %xmm1
	pand	%xmm3, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pand	%xmm5, %xmm0
	psrlq	$1, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	psubq	%xmm0, %xmm2
	pand	%xmm6, %xmm2
	movdqa	%xmm2, %xmm0
	pxor	%xmm1, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rdx, %rax
	jne	.L284
	movq	1808(%rcx), %rdx
	movq	1816(%rcx), %rax
	pxor	%xmm7, %xmm7
	andl	$2147483647, %eax
	andq	$-2147483648, %rdx
	orq	%rax, %rdx
	andl	$1, %eax
	negq	%rax
	shrq	%rdx
	xorq	4984(%rcx), %rdx
	andl	$2567483615, %eax
	xorq	%rdx, %rax
	leaq	4984(%rcx), %rdx
	movq	%rax, 1808(%rcx)
	leaq	1816(%rcx), %rax
.L285:
	movdqu	(%rax), %xmm0
	movdqu	8(%rax), %xmm1
	addq	$16, %rax
	movdqu	-1832(%rax), %xmm2
	pand	%xmm4, %xmm1
	pand	%xmm3, %xmm0
	por	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	pand	%xmm5, %xmm0
	psrlq	$1, %xmm1
	pxor	%xmm2, %xmm1
	movdqa	%xmm7, %xmm2
	psubq	%xmm0, %xmm2
	pand	%xmm6, %xmm2
	movdqa	%xmm2, %xmm0
	pxor	%xmm1, %xmm0
	movups	%xmm0, -16(%rax)
	cmpq	%rax, %rdx
	jne	.L285
	movq	4984(%rcx), %rax
	movq	(%rcx), %rdx
	movq	$0, 4992(%rcx)
	andl	$2147483647, %edx
	andq	$-2147483648, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	andl	$1, %eax
	negq	%rax
	shrq	%rdx
	xorq	3168(%rcx), %rdx
	andl	$2567483615, %eax
	xorq	%rdx, %rax
	movq	%rax, 4984(%rcx)
	ret
	.cfi_endproc
.LFE6604:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.text
	.align 2
	.p2align 4
	.type	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE.isra.0, @function
_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE.isra.0:
.LFB6779:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	subq	%rsi, %rdx
	movl	$4294967294, %eax
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	cmpq	%rdx, %rax
	jnb	.L305
	movl	$4294967295, %eax
	cmpq	%rax, %rdx
	je	.L295
	movq	%rdx, %r14
	shrq	$32, %r14
.L303:
	movq	%r14, %rdx
	xorl	%esi, %esi
	movq	%r12, %rdi
	call	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE.isra.0
	salq	$32, %rax
	movq	%rax, %rbx
	movq	4992(%r12), %rax
	cmpq	$623, %rax
	jbe	.L296
	movq	%r12, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
.L296:
	leaq	1(%rax), %rdx
	movq	(%r12,%rax,8), %rax
	movq	%rdx, 4992(%r12)
	movq	%rax, %rdx
	shrq	$11, %rdx
	movl	%edx, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$7, %rdx
	andl	$2636928640, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	salq	$15, %rdx
	andl	$4022730752, %edx
	xorq	%rdx, %rax
	movq	%rax, %rdx
	shrq	$18, %rdx
	xorq	%rdx, %rax
	addq	%rax, %rbx
	setc	%al
	movzbl	%al, %eax
	cmpq	%rbx, %r13
	jb	.L303
	testq	%rax, %rax
	jne	.L303
.L294:
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leaq	0(%rbp,%rbx), %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L305:
	.cfi_restore_state
	movq	4992(%rdi), %rax
	addq	$1, %r13
	movl	%r13d, %r15d
	cmpq	$623, %rax
	ja	.L306
.L290:
	movq	(%r12,%rax,8), %rbx
	leaq	1(%rax), %rcx
	movq	%rcx, 4992(%r12)
	movq	%rbx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$18, %rax
	xorq	%rax, %rbx
	imulq	%r13, %rbx
	cmpl	%r13d, %ebx
	jnb	.L291
	movl	%r13d, %eax
	xorl	%edx, %edx
	negl	%eax
	divl	%r15d
	movl	%edx, %r14d
	cmpl	%edx, %ebx
	jb	.L293
	jmp	.L291
	.p2align 4,,10
	.p2align 3
.L292:
	movq	(%r12,%rax,8), %rbx
	leaq	1(%rax), %rcx
	movq	%rcx, 4992(%r12)
	movq	%rbx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$18, %rax
	xorq	%rax, %rbx
	imulq	%r13, %rbx
	cmpl	%r14d, %ebx
	jnb	.L291
.L293:
	movq	%rcx, %rax
	cmpq	$623, %rcx
	jbe	.L292
	movq	%r12, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	jmp	.L292
	.p2align 4,,10
	.p2align 3
.L291:
	shrq	$32, %rbx
	jmp	.L294
	.p2align 4,,10
	.p2align 3
.L295:
	movq	4992(%rdi), %rax
	cmpq	$623, %rax
	ja	.L307
.L300:
	movq	(%r12,%rax,8), %rbx
	leaq	1(%rax), %rdx
	movq	%rdx, 4992(%r12)
	movq	%rbx, %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, %rbx
	movq	%rbx, %rax
	shrq	$18, %rax
	xorq	%rax, %rbx
	jmp	.L294
	.p2align 4,,10
	.p2align 3
.L306:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L307:
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	movq	4992(%r12), %rax
	jmp	.L300
	.cfi_endproc
.LFE6779:
	.size	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE.isra.0, .-_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE.isra.0
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC6:
	.string	"rb"
.LC7:
	.string	"File "
.LC8:
	.string	" not found, generating "
.LC9:
	.string	" numbers..."
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC10:
	.string	"cannot create std::vector larger than max_size()"
	.section	.rodata.str1.1
.LC11:
	.string	"wb"
	.section	.rodata.str1.8
	.align 8
.LC12:
	.string	"std::vector<long int> get_or_create_numbers_array(size_t, const char*)"
	.section	.rodata.str1.1
.LC13:
	.string	"experiment_binary_search.cpp"
.LC14:
	.string	"file != nullptr"
.LC15:
	.string	"written == n"
.LC16:
	.string	"Written to "
.LC17:
	.string	"File has only "
.LC18:
	.string	" numbers, need "
.LC19:
	.string	"false"
	.text
	.p2align 4
	.globl	_Z27get_or_create_numbers_arraymPKc
	.type	_Z27get_or_create_numbers_arraymPKc, @function
_Z27get_or_create_numbers_arraymPKc:
.LFB5572:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$4096, %rsp
	.cfi_def_cfa_offset 4152
	orq	$0, (%rsp)
	subq	$952, %rsp
	.cfi_def_cfa_offset 5104
	movq	%fs:40, %rax
	movq	%rax, 5032(%rsp)
	xorl	%eax, %eax
	movq	%rdi, %rbx
	movq	%rsi, %r14
	movq	%rdx, %rdi
	leaq	.LC6(%rip), %rsi
	movq	%rdx, %r12
	call	fopen@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L336
	movq	%r14, %rax
	shrq	$60, %rax
	jne	.L319
	testq	%r14, %r14
	je	.L337
	leaq	0(,%r14,8), %r15
	movq	%r15, %rdi
	call	_Znwm@PLT
	movq	%rax, %r12
	leaq	(%rax,%r15), %rax
	movq	%rax, (%rsp)
	leaq	8(%r12), %r13
	movq	$0, (%r12)
	cmpq	$1, %r14
	je	.L322
	cmpq	%r13, %rax
	je	.L324
	leaq	-8(%r15), %rdx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	memset@PLT
.L324:
	movq	(%rsp), %r13
	.p2align 4,,10
	.p2align 3
.L322:
	movq	%rbp, %rcx
	movq	%r14, %rdx
	movl	$8, %esi
	movq	%r12, %rdi
	call	fread@PLT
	movq	%rax, %r15
	cmpq	%r14, %rax
	jb	.L338
.L321:
	movq	%rbp, %rdi
	call	fclose@PLT
	movq	(%rsp), %rax
	movq	%r12, (%rbx)
	movq	%r13, 8(%rbx)
	movq	%rax, 16(%rbx)
.L308:
	movq	5032(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L339
	addq	$5048, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%rbx, %rax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L337:
	.cfi_restore_state
	movq	%rbp, %rcx
	xorl	%edx, %edx
	movl	$8, %esi
	xorl	%edi, %edi
	call	fread@PLT
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	movq	$0, (%rsp)
	jmp	.L321
.L338:
	leaq	_ZSt4cerr(%rip), %rbx
	movl	$14, %edx
	leaq	.LC17(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	movq	%r15, %rsi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$15, %edx
	leaq	.LC18(%rip), %rsi
	movq	%rax, %rbx
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	%rbp, %rdi
	call	fclose@PLT
	leaq	.LC12(%rip), %rcx
	movl	$251, %edx
	leaq	.LC13(%rip), %rsi
	leaq	.LC19(%rip), %rdi
	call	__assert_fail@PLT
.L339:
	call	__stack_chk_fail@PLT
.L319:
	leaq	.LC10(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L336:
	movl	$5, %edx
	leaq	.LC7(%rip), %rsi
	leaq	32(%rsp), %r15
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movl	$23, %edx
	leaq	.LC8(%rip), %rsi
	movq	%rax, %r13
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rdi
	movq	%r14, %rsi
	call	_ZNSo9_M_insertImEERSoT_@PLT
	movl	$11, %edx
	leaq	.LC9(%rip), %rsi
	movq	%rax, %r13
	movq	%rax, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r13, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	xorl	%esi, %esi
	movl	$1, %edx
	movq	%rsi, 32(%rsp)
	xorl	%esi, %esi
	.p2align 4,,10
	.p2align 3
.L310:
	movq	%rsi, %rax
	shrq	$30, %rax
	xorq	%rsi, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rdx), %esi
	movq	%rsi, (%r15,%rdx,8)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	.L310
	movabsq	$1152921504606846975, %rax
	movq	$624, 5024(%rsp)
	cmpq	%r14, %rax
	jb	.L319
	testq	%r14, %r14
	je	.L326
	leaq	0(,%r14,8), %rdx
	movq	%rdx, %rdi
	movq	%rdx, (%rsp)
	call	_Znwm@PLT
	movq	(%rsp), %rdx
	xorl	%ecx, %ecx
	movq	%rcx, (%rax)
	movq	%rax, %r13
	leaq	8(%rax), %rbp
	leaq	(%rax,%rdx), %r9
	movq	%r9, (%rsp)
	cmpq	$1, %r14
	je	.L313
	cmpq	%r9, %rbp
	je	.L314
	subq	$8, %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	movq	%r9, 8(%rsp)
	call	memset@PLT
	movq	8(%rsp), %r9
.L314:
	movq	%r9, %rbp
.L313:
	movq	%r13, %r10
	xorl	%r11d, %r11d
.L315:
	movl	$10, %edx
	xorl	%esi, %esi
	movq	%r15, %rdi
	movq	%r9, 24(%rsp)
	movq	%r10, 16(%rsp)
	movq	%r11, 8(%rsp)
	call	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE.isra.0
	movq	8(%rsp), %r11
	movq	16(%rsp), %r10
	movq	24(%rsp), %r9
	addq	%rax, %r11
	addq	$8, %r10
	movq	%r11, -8(%r10)
	cmpq	%r10, %r9
	jne	.L315
.L312:
	leaq	.LC11(%rip), %rsi
	movq	%r12, %rdi
	call	fopen@PLT
	movq	%rax, %rcx
	testq	%rax, %rax
	je	.L340
	movq	%r14, %rdx
	movl	$8, %esi
	movq	%r13, %rdi
	movq	%rax, 8(%rsp)
	call	fwrite@PLT
	movq	8(%rsp), %rcx
	cmpq	%rax, %r14
	jne	.L341
	movq	%rcx, %rdi
	call	fclose@PLT
	movl	$11, %edx
	leaq	.LC16(%rip), %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%r12, %rsi
	leaq	_ZSt4cerr(%rip), %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	(%rsp), %rax
	movq	%r13, (%rbx)
	movq	%rbp, 8(%rbx)
	movq	%rax, 16(%rbx)
	jmp	.L308
.L326:
	xorl	%eax, %eax
	xorl	%r13d, %r13d
	movq	%rax, (%rsp)
	jmp	.L312
.L341:
	leaq	.LC12(%rip), %rcx
	movl	$241, %edx
	leaq	.LC13(%rip), %rsi
	leaq	.LC15(%rip), %rdi
	call	__assert_fail@PLT
.L340:
	leaq	.LC12(%rip), %rcx
	movl	$239, %edx
	leaq	.LC13(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE5572:
	.size	_Z27get_or_create_numbers_arraymPKc, .-_Z27get_or_create_numbers_arraymPKc
	.section	.rodata.str1.1
.LC20:
	.string	"int main(int, char**)"
.LC21:
	.string	"argc == 6"
.LC22:
	.string	"stoull"
.LC23:
	.string	"numbers.size() == n"
.LC24:
	.string	"vector::reserve"
.LC25:
	.string	"Input generated"
.LC26:
	.string	"1"
.LC27:
	.string	"vector::_M_realloc_insert"
.LC28:
	.string	"Searcher built"
.LC29:
	.string	"2"
.LC30:
	.string	"stl"
.LC31:
	.string	"btree"
.LC32:
	.string	"Unknown mode: "
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB5584:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$4096, %rsp
	.cfi_def_cfa_offset 4152
	orq	$0, (%rsp)
	subq	$1176, %rsp
	.cfi_def_cfa_offset 5328
	movq	%fs:40, %rax
	movq	%rax, 5256(%rsp)
	xorl	%eax, %eax
	cmpl	$6, %edi
	jne	.L419
	movq	%rsi, %r13
	leaq	160(%rsp), %r15
	movq	8(%rsi), %rsi
	leaq	224(%rsp), %rdi
	movq	%r15, %rdx
	leaq	256(%rsp), %rbp
	movq	%rdi, 8(%rsp)
	leaq	.LC22(%rip), %r14
	movq	%r15, 32(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	movq	16(%r13), %rsi
	movq	%r15, %rdx
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	xorl	%ecx, %ecx
	movl	$10, %r8d
	movq	%r14, %rsi
	movq	__isoc23_strtoull@GOTPCREL(%rip), %rbx
	movq	256(%rsp), %rdx
	movq	%rbx, %rdi
	call	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	movq	%rbp, %rdi
	movq	%rax, %r12
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	24(%r13), %rsi
	movq	%r15, %rdx
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	xorl	%ecx, %ecx
	movl	$10, %r8d
	movq	%r14, %rsi
	movq	256(%rsp), %rdx
	movq	%rbx, %rdi
	call	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	movq	%rbp, %rdi
	movq	%rax, 24(%rsp)
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	32(%r13), %rsi
	movq	%r15, %rdx
	movq	%rbp, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	xorl	%ecx, %ecx
	movq	%r14, %rsi
	movl	$10, %r8d
	movq	256(%rsp), %rdx
	movq	%rbx, %rdi
	leaq	(%r12,%r12,4), %r14
	call	_ZN9__gnu_cxx6__stoaIyycJiEEET0_PFT_PKT1_PPS3_DpT2_EPKcS5_PmS9_
	movq	%rbp, %rdi
	movq	%rax, %rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	40(%r13), %rdx
	leaq	96(%rsp), %rdi
	movq	%r12, %rsi
	movq	%rdi, 40(%rsp)
	call	_Z27get_or_create_numbers_arraymPKc
	movq	96(%rsp), %rdi
	movq	104(%rsp), %rax
	movq	24(%rsp), %r9
	subq	%rdi, %rax
	movq	%rdi, 16(%rsp)
	movq	%rax, 56(%rsp)
	sarq	$3, %rax
	cmpq	%r12, %rax
	movq	%rax, 64(%rsp)
	jne	.L420
	movq	%r9, %rax
	pxor	%xmm0, %xmm0
	movq	$0, 144(%rsp)
	shrq	$60, %rax
	movaps	%xmm0, 128(%rsp)
	jne	.L421
	xorl	%r15d, %r15d
	xorl	%r13d, %r13d
	testq	%r9, %r9
	jne	.L422
.L346:
	movl	%ebx, %eax
	movl	$1, %edx
	movq	%rax, 256(%rsp)
	movq	%rax, %rcx
	.p2align 4,,10
	.p2align 3
.L347:
	movq	%rcx, %rax
	shrq	$30, %rax
	xorq	%rcx, %rax
	imulq	$1812433253, %rax, %rax
	leal	(%rax,%rdx), %ecx
	movq	%rcx, 0(%rbp,%rdx,8)
	addq	$1, %rdx
	cmpq	$624, %rdx
	jne	.L347
	movq	$624, 5248(%rsp)
	leaq	-1(%r14), %rbx
	xorl	%r14d, %r14d
	testq	%r9, %r9
	je	.L362
	movq	%r12, 48(%rsp)
	movq	%r14, %r12
	movq	%r13, %r14
	movq	%r9, %r13
	jmp	.L348
	.p2align 4,,10
	.p2align 3
.L424:
	movq	%rax, (%r14)
	addq	$1, %r12
	addq	$8, %r14
	movq	%r14, 136(%rsp)
	cmpq	%r12, %r13
	je	.L423
.L348:
	movq	%rbx, %rdx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	call	_ZNSt24uniform_int_distributionIlEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEElRT_RKNS0_10param_typeE.isra.0
	movq	%rax, %rdx
	cmpq	%r14, %r15
	jne	.L424
	movq	128(%rsp), %r10
	movq	%r15, %rsi
	movabsq	$1152921504606846975, %rdi
	subq	%r10, %rsi
	movq	%rsi, %rax
	sarq	$3, %rax
	cmpq	%rdi, %rax
	je	.L425
	cmpq	%r10, %r15
	je	.L426
	leaq	(%rax,%rax), %rcx
	cmpq	%rax, %rcx
	jb	.L384
	xorl	%eax, %eax
	xorl	%r9d, %r9d
	movq	%rax, 24(%rsp)
	testq	%rcx, %rcx
	jne	.L427
.L358:
	movq	%rdx, (%r9,%rsi)
	leaq	8(%r9,%rsi), %r14
	testq	%rsi, %rsi
	jg	.L428
	testq	%r10, %r10
	jne	.L360
.L361:
	movq	24(%rsp), %r15
	addq	$1, %r12
	movq	%r9, 128(%rsp)
	movq	%r14, 136(%rsp)
	addq	%r9, %r15
	movq	%r15, 144(%rsp)
	cmpq	%r12, %r13
	jne	.L348
.L423:
	movq	48(%rsp), %r12
.L362:
	leaq	_ZSt4cerr(%rip), %rbx
	leaq	.LC25(%rip), %rsi
	movl	$15, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	8(%rsp), %rdi
	leaq	.LC26(%rip), %rsi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	jne	.L429
	movq	8(%rsp), %rdi
	leaq	.LC29(%rip), %rsi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	jne	.L430
	movq	8(%rsp), %rdi
	leaq	.LC30(%rip), %rsi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	jne	.L431
	movq	8(%rsp), %rdi
	leaq	.LC31(%rip), %rsi
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	testb	%al, %al
	je	.L369
	movq	64(%rsp), %r13
	movq	56(%rsp), %rsi
	movl	$4096, %edi
	andq	$-8, %r13
	subq	%r13, %r12
	movq	%r13, 168(%rsp)
	movq	%r12, 176(%rsp)
	call	aligned_alloc@PLT
	movq	16(%rsp), %r15
	movq	%r13, %rsi
	movq	%r13, 192(%rsp)
	movq	%rax, 184(%rsp)
	movq	%rax, %rbp
	movq	184(%rsp), %rdx
	movq	%rax, 160(%rsp)
	movq	192(%rsp), %rcx
	movq	%r15, %rdi
	leaq	0(,%r13,8), %rax
	addq	%rax, %rbp
	movq	%rax, 24(%rsp)
	movq	%r12, 208(%rsp)
	salq	$3, %r12
	movq	%rbp, 200(%rsp)
	call	_Z11build_btreeIlLm8EEvSt4spanIKT_Lm18446744073709551615EES0_IS1_Lm18446744073709551615EE
	movq	24(%rsp), %rax
	movq	%r12, %rsi
	sarq	$3, %rsi
	leaq	(%r15,%rax), %rdx
	testq	%r12, %r12
	jle	.L374
	leaq	-1(%rsi), %rcx
	cmpq	$2, %rcx
	jbe	.L386
	movq	16(%rsp), %rdi
	leaq	8(%rdi,%rax), %rcx
	xorl	%eax, %eax
	cmpq	%rcx, %rbp
	jne	.L432
	.p2align 4,,10
	.p2align 3
.L376:
	movq	(%rdx,%rax), %rcx
	movq	%rcx, 0(%rbp,%rax)
	addq	$8, %rax
	cmpq	%rax, %r12
	jne	.L376
.L374:
	leaq	.LC28(%rip), %rsi
	movl	$14, %edx
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	32(%rsp), %rdi
	leaq	128(%rsp), %rsi
	call	_Z13run_benchmarkI13BTreeSearcherIlLm8EEEvRT_RKSt6vectorIlSaIlEE
.L364:
	movq	128(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L378
	movq	144(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L378:
	movq	16(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L379
	movq	112(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
.L379:
	movq	8(%rsp), %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv
	movq	5256(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L433
	addq	$5272, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L428:
	.cfi_restore_state
	movq	%rsi, %rdx
	movq	%r9, %rdi
	movq	%r10, %rsi
	movq	%r10, 72(%rsp)
	call	memmove@PLT
	movq	72(%rsp), %r10
	movq	%rax, %r9
.L360:
	movq	%r15, %rsi
	movq	%r10, %rdi
	movq	%r9, 72(%rsp)
	subq	%r10, %rsi
	call	_ZdlPvm@PLT
	movq	72(%rsp), %r9
	jmp	.L361
.L426:
	movabsq	$1152921504606846975, %rcx
	addq	$1, %rax
	jc	.L357
	cmpq	%rcx, %rax
	cmovbe	%rax, %rcx
.L357:
	leaq	0(,%rcx,8), %rax
	movq	%rsi, 88(%rsp)
	movq	%rax, %rdi
	movq	%r10, 80(%rsp)
	movq	%rdx, 72(%rsp)
	movq	%rax, 24(%rsp)
	call	_Znwm@PLT
	movq	88(%rsp), %rsi
	movq	80(%rsp), %r10
	movq	72(%rsp), %rdx
	movq	%rax, %r9
	jmp	.L358
.L429:
	movq	32(%rsp), %r15
	movq	40(%rsp), %rsi
	movq	%r15, %rdi
	call	_ZNSt6vectorIlSaIlEEC1ERKS1_
	movl	$14, %edx
	leaq	.LC28(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	%r15, %rdi
	leaq	128(%rsp), %rsi
	call	_Z13run_benchmarkI15BinarySearcher1EvRT_RKSt6vectorIlSaIlEE
	movq	160(%rsp), %rdi
	testq	%rdi, %rdi
	je	.L364
.L418:
	movq	176(%rsp), %rsi
	subq	%rdi, %rsi
	call	_ZdlPvm@PLT
	jmp	.L364
.L422:
	leaq	0(,%r9,8), %r15
	movq	%r9, 24(%rsp)
	movq	%r15, %rdi
	call	_Znwm@PLT
	movq	24(%rsp), %r9
	movq	%rax, %xmm0
	addq	%rax, %r15
	movq	%rax, %r13
	punpcklqdq	%xmm0, %xmm0
	movq	%r15, 144(%rsp)
	movaps	%xmm0, 128(%rsp)
	jmp	.L346
.L384:
	movabsq	$1152921504606846975, %rcx
	jmp	.L357
.L430:
	movq	32(%rsp), %r15
	movq	40(%rsp), %rsi
	movq	%r15, %rdi
	call	_ZNSt6vectorIlSaIlEEC1ERKS1_
	movl	$14, %edx
	leaq	.LC28(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	%r15, %rdi
	leaq	128(%rsp), %rsi
	call	_Z13run_benchmarkI15BinarySearcher2EvRT_RKSt6vectorIlSaIlEE
	movq	160(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.L418
	jmp	.L364
.L432:
	movq	%rsi, %rcx
	shrq	%rcx
	salq	$4, %rcx
.L372:
	movdqu	(%rdx,%rax), %xmm1
	movaps	%xmm1, 0(%rbp,%rax)
	addq	$16, %rax
	cmpq	%rax, %rcx
	jne	.L372
	movq	%rsi, %rax
	andq	$-2, %rax
	leaq	0(,%rax,8), %rcx
	addq	%rcx, %rdx
	addq	%rbp, %rcx
	cmpq	%rax, %rsi
	je	.L374
	movq	(%rdx), %rax
	movq	%rax, (%rcx)
	jmp	.L374
.L386:
	xorl	%eax, %eax
	jmp	.L376
.L431:
	movq	32(%rsp), %r15
	movq	40(%rsp), %rsi
	movq	%r15, %rdi
	call	_ZNSt6vectorIlSaIlEEC1ERKS1_
	movl	$14, %edx
	leaq	.LC28(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rbx, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	movq	%r15, %rdi
	leaq	128(%rsp), %rsi
	call	_Z13run_benchmarkI11STLSearcherEvRT_RKSt6vectorIlSaIlEE
	movq	160(%rsp), %rdi
	testq	%rdi, %rdi
	jne	.L418
	jmp	.L364
.L419:
	leaq	.LC20(%rip), %rcx
	movl	$280, %edx
	leaq	.LC13(%rip), %rsi
	leaq	.LC21(%rip), %rdi
	call	__assert_fail@PLT
.L427:
	movabsq	$1152921504606846975, %rax
	cmpq	%rax, %rcx
	cmova	%rax, %rcx
	jmp	.L357
.L425:
	leaq	.LC27(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L369:
	movl	$14, %edx
	leaq	.LC32(%rip), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	232(%rsp), %rdx
	movq	224(%rsp), %rsi
	movq	%rbx, %rdi
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	movq	%rax, %rdi
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	leaq	.LC20(%rip), %rcx
	movl	$320, %edx
	leaq	.LC13(%rip), %rsi
	leaq	.LC19(%rip), %rdi
	call	__assert_fail@PLT
.L433:
	call	__stack_chk_fail@PLT
.L421:
	leaq	.LC24(%rip), %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L420:
	leaq	.LC20(%rip), %rcx
	movl	$290, %edx
	leaq	.LC13(%rip), %rsi
	leaq	.LC23(%rip), %rdi
	call	__assert_fail@PLT
	.cfi_endproc
.LFE5584:
	.size	main, .-main
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC2:
	.quad	-2147483648
	.quad	-2147483648
	.align 16
.LC3:
	.quad	2147483647
	.quad	2147483647
	.align 16
.LC4:
	.quad	1
	.quad	1
	.align 16
.LC5:
	.quad	2567483615
	.quad	2567483615
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
