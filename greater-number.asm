    .data


    .text

main:

    li $v0, 5 # read integer
    syscall

    move $t0, $v0 # t0 is the number of tests;  scanf(%d, &t);

    li $v0, 5  # read integer
    syscall

    move $t1, $v0 # t1 is the first input of the test; scanf(%d, &n)

    move $t2, $t1 # copying t1 value to t2, t2 is the major number;  major = n

    li $t3, 1 # t3 is the iterator  i = 1
    
    while:
        beq $t3, $t0, exit  # condition to be break, if i == number of tests, then execute exit label
	
	    li $v0, 5   # read integer  
	    syscall
	
	    move $t1, $v0  

        bgt $t1, $t2, major # if num > major, then execute major label
        addi $t3, $t3, 1  # i++
        j while           # jump to while label
    
    major:
        move $t2, $t1     # copy t1 value to t2, major = n
        addi $t3, $t3, 1  # i++
        j while           # jump to while label    
    
    exit: 
        li $v0, 1         # print integer
        move $a0, $t2     # copy t2 value to a0  
	    syscall