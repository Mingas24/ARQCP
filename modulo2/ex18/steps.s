.section .data
	.global i
	.global limite
	
	.equ B, 4
	.equ A, 2
	soma:
		.int 0
	
.section .text
	.global summatory
	
summatory:
	# prologue
	pushl %ebp
	movl %esp, %ebp
	pushl %ebx
	
	movl i,%ecx #Passa i para ecx
	movl limite,%ebx #passa limite para ebx
	
	loop:
		movl i,%ecx
		cmp %ebx,%ecx #compara ebx, ecx
		jg fim_loop # se i> limite salta para o fim
		imul %ecx,%ecx
		imul $A,%ecx,%ecx # multiplica A pelo valor em ecx e guarda em ecx
		imul $A,%ecx,%eax # A²*i²
		movl $B,%ecx
		cdq
		idiv %ecx
		addl %eax, soma
		movl i, %ecx
		inc %ecx
		movl %ecx, i
		jmp loop
		
	fim_loop:
	movl soma, %eax
	# epilogue
	pop %ebx
	movl %ebp, %esp  		#  restore the previous stack pointer ("clear" the stack)
	popl %ebp     			#  restore the previous stack frame pointer
	ret
