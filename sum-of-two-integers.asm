.data 

.text

main:	
	li $v0, 5  # ler int
	syscall

    move $t0, $v0 # move o int para t0 que esta em v0
	
	li $v0, 5
	syscall
	
	move $t1, $v0 # move o int para t1 que esta em v0
	
	add $a0, $t0, $t1 # a0 = t0 + t1
	
	li	$v0, 1
	syscall

	li $v0, 10
	syscall