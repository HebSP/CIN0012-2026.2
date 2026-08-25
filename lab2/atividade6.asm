loop:
	lb x10, 1026(x0)
	andi x10, x10, 0x1
	beq x10, x0, off
on:
	lb x10, 36(x0)
	sb x10, 1029(x0)
	jal x0, loop
off:
	lb x10, 37(x0)
	sb x10, 1029(x0)
	jal x0, loop

HIGH: .byte 1
LOW:  .byte 0

