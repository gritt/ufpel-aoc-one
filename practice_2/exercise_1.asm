# Faça um programa que some os números decimais 
# 326, -211, 311, e -684 
# escreva o resultado no registrador $t0, 
# não utilize instrução sub

.text
.globl main

main: 

	#load 326
	ori $t1, $0, 0x146
	
	#load -211
	ori $t2, $0, 0xFFFF
	sll $t2, $t2, 16
	ori $t2, $t2, 0xFF2D
	
	#load 311
	ori $t3, $0, 0x137
		
	#load -684
	ori $t4, $0, 0xFFFF
	sll $t4, $t4, 16
	ori $t4, $t4 0xFD54
	
	#sum (with overflow verifier)
	add $t5, $t1, $t2
	add $t6, $t3, $t4
	add $t0, $t5, $t6
	
	# expected result
	# -258 - 0xFEFE