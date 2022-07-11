    .data
char: .byte 'M' # char a ser impresso

    .text

main:

    li $v0, 4 #imprimir char ou string
    la $a0, char
    syscall

    li $v0, 10
    syscall

