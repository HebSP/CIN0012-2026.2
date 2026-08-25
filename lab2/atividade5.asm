addi x9, x0, 42
loop:
lb x10, 1025(x0) 
sb x10, 1024(x0)
bne x10, x9, loop

