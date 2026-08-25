lw x19, a
lw x20, b
lw x21, m

blt x19, x20, bmnqm
sub x21, x20, x19
beq x0, x0, fimse
bmnqm:
add x21, x20, x19
fimse:
sw x21, m
halt

a: .word 6
b: .word 15
m: .word 0
