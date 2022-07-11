    .data  # area para dados da memoria principal

msg: .asciiz "Olá mundo!\n"  # mensagem a ser exibida ao usuario    
    
    .text  # area para instruções do programa

main:

    li $v0, 4  # instrução para impressão de string
    la $a0, msg # indicar o endereço que está amensagem
    syscall # faça instruçao 

    li	$v0, 10
	syscall