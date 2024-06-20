.section .data

.global current
.global desired

.section .text

.global needed_time # int needed_time(void)

needed_time:
# prologue
pushl %ebp 				# save previous stack frame pointer
movl %esp, %ebp 		# the stack frame pointer for sum function

movl $0, %edx				#copies the value 0 to edx
movsxw current, %ecx		#copies the value of current to ecx and extends the signal
movsxw desired, %eax		#copies the value of desired to eax and extends the signal

cmpl %eax, %ecx				#compares ecx with eax
jg jmp_is_greater
jl jmp_is_less
je jmp_is_equal


jmp_is_greater:				#jumps here if cx is greater then ax
subl %eax, %ecx             #subtract the value of eax to ecx. Result stays ecx
movl %ecx, %eax				#copies the value ecx to eax
movl $0, %edx				#copies the value 0 to edx
movl $180, %ecx				#copies the value of 180 to ecx
imull %ecx					#multiplies ecx with eax. Result stays edx:eax
jmp end

jmp_is_equal:				#jumps here if cx is equals ax
movl $0, %eax				#copies the value 0 to eax
jmp end

jmp_is_less:				#jumps here if cx is less then ax
subl %ecx, %eax             #subtract the value of ecx to eax. Result stays eax
movl $0, %edx				#copies the value 0 to edx
movl $120, %ecx				#copies the value of 120 to ecx
imull %ecx					#multiplies ecx with eax. Result stays edx:eax

end:
# epilogue
movl %ebp, %esp 		# restore the previous stack pointer ("clear" the stack)
popl %ebp 				# restore the previous stack frame pointer
ret
