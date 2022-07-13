	.data
new_line: .asciiz "\n"
asterisco: .asciiz "*"
	
	.text
main:
	li $v0, 5
	syscall
	
	move $t0, $v0  # copy value in v0 to t0.. t0 is the number of lines
	li $t1, 1  	# t1 is the iterator i
	li $t2, 0	#t2 is the iterator j
	j loop_1
	
loop_1:
	bgt $t1, $t0, exit	#if i > number of lines, execute label exit
	
	jal loop_2	# jump to loop_2, after executed return here
	li $t2, 0      # return to 0, the iterator j
	
	li $v0, 4      
	la $a0, new_line  # print break line
	syscall
	
	addi $t1,$t1,1  # i++
	j loop_1	# execute loop_1
	
loop_2:
	beq $t2, $t1, return_loop_1	# if i = j, return to first loop
	
	li $v0, 4
	la $a0, asterisco	# print *
	syscall
	
	addi $t2, $t2, 1	# j++
	j loop_2		# execute label loop_2

return_loop_1:
	jr $ra	

			
exit: 
	li $v0, 10	# end of program
	syscall
	
	
		
	
	
	