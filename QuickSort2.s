_QuickSort:
	pushl	%ebp
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	subl	$44, %esp
	movl	64(%esp), %ebx
	movl	72(%esp), %eax
	leal	(%ebx,%eax,4), %eax
	movl	%eax, 28(%esp)
	movl	72(%esp), %eax
	cmpl	%eax, 68(%esp)
	jge	L1
	.p2align 4,,10
L8:
	movl	28(%esp), %eax
	movl	(%eax), %edi
	movl	68(%esp), %eax
	movl	%eax, %esi
	.p2align 4,,10
L4:
	movl	(%ebx,%eax,4), %edx
	cmpl	%edx, %edi
	jle	L3
	leal	(%ebx,%esi,4), %ecx
	addl	$1, %esi
	movl	(%ecx), %ebp
	movl	%edx, (%ecx)
	movl	%ebp, (%ebx,%eax,4)
L3:
	addl	$1, %eax
	cmpl	%eax, 72(%esp)
	jge	L4
	movl	28(%esp), %edi
	leal	(%ebx,%esi,4), %eax
	movl	(%eax), %edx
	movl	(%edi), %ecx
	movl	%ecx, (%eax)
	leal	-1(%esi), %eax
	movl	%edx, (%edi)
	movl	%ebx, (%esp)
	movl	%eax, 8(%esp)
	movl	68(%esp), %eax
	movl	%eax, 4(%esp)
	call	_QuickSort
	leal	1(%esi), %eax
	cmpl	%eax, 72(%esp)
	movl	%eax, 68(%esp)
	jg	L8
L1:
	addl	$44, %esp
	popl	%ebx
	popl	%esi
	popl	%edi
	popl	%ebp
	ret