.data

numero: .asciiz "Digite o numero: "
resultado: .asciiz "Divisao entre os numeros: "
.text

main:

li $v0,4
la $a0, numero
syscall

li $v0,5 
syscall

move $t0, $v0

li $v0,4
la $a0, numero
syscall

li $v0,5
syscall

move $t1, $v0
div $t2, $t1, $t0


li $v0,4
la $a0, resultado
syscall

li $v0,1
move $a0, $t2
syscall

jr $ra
