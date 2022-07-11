    .data


    .text
main:
    li $v0, 5  # read integer
    syscall
    
    move $t0, $v0  #move value in register v0 to register t0

    li $v0, 5 # read integer
    syscall  

    move $t1, $v0   #move value in register v0 to register t0

    sub $a0, $t0, $t1 #subtract values in registers t0 and t1, then store the value in register a0 

    li $v0, 1  # print integer
    syscall

    li $v0, 10 # end
    syscall