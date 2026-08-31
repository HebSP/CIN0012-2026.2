	addi x11, x0, 64
	addi x10, x0, 1

loop:

    sb x10, 1029(x0)

trava_seguranca:
    lb x12, 1026(x0)
    andi x12, x12, 0x1
    bne x12, x0, trava_seguranca

espera_botao:
    lb x12, 1026(x0)
    andi x12, x12, 0x1
    beq x12, x0, espera_botao

	sb x10, 1029(x0)
	slli x10, x10, 1
	bge x10, x11, fim
	jal x0, loop

fim:
    sb x0, 1029(x0)
    halt

