	addi x11, x0, 64
reset:
	addi x10, x0, 1
loop:
	sb x10, 1029(x0)
	slli x10, x10, 1
	bge x10, x11, reset
	jal x0, loop

HIGH: .byte 1
LOW:  .byte 0
