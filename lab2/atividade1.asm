lw x10, a
lw x11, b
lw x12, m
add x12, x10, x0
bge x12, x11, pula
add x12, x10, x11
pula:
sw x12, m
halt

a: .word 0x6
b: .word 0xf
m: .word 0x0000
