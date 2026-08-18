lw x19, f
lw x20, g
lw x21, h
lw x22, i
lw x23, j

beq, x22,x23, iigualj
sub x19, x20, x21
iigualj:
add x19, x20, x21
sw x19, f
halt

f: .word 0x0000
g: .word 0x0000
h: .word 0x0000
i: .word 0x0000
j: .word 0x0000