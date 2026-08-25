addi x20, x0, 12
add x21, x0, x0
loop:
lb x10, 24(x21) 
sb x10, 1024(x0)
addi x21, x21, 1
bne x21, x20, loop

halt
str1: .string "Hello World"

