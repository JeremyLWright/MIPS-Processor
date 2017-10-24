#; Title: 	PrimeRISC.asm
#; Names: 	Jeremy Wright 	50%
#;	  		Kevin Carr	50%
#;
#; Description: Find first n prime numbers
#; 11/17/2007
.data
msg: .asciiz "  "
.text

main:
addi $s7, $0, 1	#; Reference value of 1
addi $s1, $0, 100  	#; Find the first 100 prime numbers
addi $s2, $0, 1		#; This is the value to check for primeness
addi $s3, $0, 0		#; This is the number of primes found
addi $s4, $0, 2		#; Setup the fist prime found

StartPrimeFinding:
beq $s3, $s1, End	#;  We are finished
addi $s2, $s2, 2		#; Increment the value to find
nop
addi $s5, $s4, 0		#; Copy the $s4 into $s5
StartCrazyDivision:
div $s2, $s5		#; Divide value to check by last value found
nop
nop
#;mfhi $s6			#; Remove this line for our processor, and change following register to $s30
beq $30, $0, StartPrimeFinding		#; If the remainder is 0 the value is composite
addi $s5, $s5, -1		#; Decrement the iterative value
bne $s5, $s7, StartCrazyDivision
addi $s3, $s3, 1		#;We found a prime number add it
addi $s4, $s2, 0		#;Save the newly found prime
#; Debugging only
#;move $a0, $s4
#;li $v0, 1
#;syscall
#;li $v0, 4
#;la $a0, msg
#;syscall
#;End debugging
bne $0, $s7, StartPrimeFinding	#; If we want to spare the instruction: j StartPrimeFinding...
End:
addi $0, $0, 0 #; Dummy instruction to end
