.data
    conc_e: .asciiz "E\n"
    conc_d: .asciiz "D\n"
    conc_c: .asciiz "C\n"
    conc_b: .asciiz "B\n"
    conc_a: .asciiz "A\n"

.text

main:
    li $v0, 5  # read integer
    syscall

    move $a0, $v0  #move value in register v0 to register a0

    beq $a0, $zero, imprime_e  # if a0 value is equal to zero, then execute imprime_e

    li $t0, 35   #load 35 to t0
    ble $a0, $t0, imprime_d  # if a0 value is less or equal to t0, then execute imprime_d

    li $t0, 60 #load 60 to t0
    ble $a0, $t0, imprime_c # if a0 value is less or equal to t0, then execute imprime_c

    li $t0, 85   #load 85 to t0
    ble $a0, $t0, imprime_b  # if a0 value is less or equal to t0, then execute imprime_b

    li $t0, 100   #load 100 to t0
    ble $a0, $t0, imprime_a  # if a0 value is less or equal to t0, then execute imprime_a

    li $v0, 10  #end
    syscall     

    imprime_e:
        li $v0, 4  # print string
        la $a0, conc_e  # load conc_e to a0
        syscall

        li $v0, 10  # close program
        syscall

    imprime_d:
        li $v0, 4  
        la $a0, conc_d
        syscall

        li $v0, 10
        syscall

    imprime_c:
        li $v0, 4
        la $a0, conc_c
        syscall

        li $v0, 10
        syscall

    imprime_b:
        li $v0, 4
        la $a0, conc_b
        syscall

        li $v0, 10
        syscall

    imprime_a:
        li $v0, 4
        la $a0, conc_a
        syscall

        li $v0, 10
        syscall