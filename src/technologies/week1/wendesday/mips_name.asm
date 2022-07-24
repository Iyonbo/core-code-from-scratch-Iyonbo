.data
	name_input: .asciiz	 "\nHello, what is your name? "
	name_welcome: .asciiz	"\nWelcome  "
	name: .space	20	
	name_meet: .asciiz	"Nice to meet you!"

.text
	main:
	li $v0, 4
	la $a0, name_input
	syscall

	li $v0, 8
	la $a0, name
	li $a1, 40
	syscall

	li $v0, 4
	la $a0, name_welcome
	syscall

	li $v0, 4
	la $a0, name
	syscall

	li $v0, 4
	la $a0, name_meet
	syscall

	li $v0, 10
	syscall