	.data
new_line: .asciiz "\n"
asterisco: .asciiz "*"
space: .asciiz " "
	
	.text
main:
	li $v0, 5
	syscall
	
	move $t0, $v0  # copy value in v0 to t0.. t0 is the number of lines
	li $t1, 1  	# t1 is the iterator i
	j loop_main

loop_main:
	bgt $t1, $t0, exit # if i = number of lines, execute exit label
	
	sub $t2, $t0, $t1 # j = n- i , initial values to loop_1	
	jal loop_1	# execute label loop_1, then return here by instruction jr $ra
	
	li $t2, 1 # j = 1, initial values to loop_2
	
	sll $t3, $t1, 1  # temp =2*i
	subi $t3, $t3, 1 # variable temp = 2*i -1
	
	jal loop_2	#exxecute label loop_2 , then return here by instruction jr $ra
		
	li $v0, 4
	la $a0, new_line	# print "\n"
	syscall
	
	addi $t1, $t1, 1
	j loop_main
				
loop_1:
	beq $t2, 0, return_loop_main
	
	li $v0,4
	la $a0, space
	syscall
	
	subi $t2, $t2, 1
	j loop_1
	
loop_2:
	bgt $t2, $t3, return_loop_main
	
	li $v0,4
	la $a0, asterisco
	syscall
	
	addi $t2, $t2, 1
	j loop_2
	
return_loop_main:
	jr $ra	

			
exit: 
	li $v0, 10	# end of program
	syscall
	
