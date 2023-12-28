# a1: address
# a2: number
# a0：max return number 
# a2 must > 1
# addi    t1,     x0,     1
# blt     a2,     t1,     end # if t0 <= t1 then target

lw      a0,     0(a1)       # initialize max number : a0
addi    t1,     x0,     0   # counter : t1

loop:
    lw      t2,     0(a1)   # get new number
    blt     t2,     a0,     gotonextloop    # if new number < a0, do not update
    add     a0,     t2,     x0 # update max value
gotonextloop:
    addi    a1,     a1,     4   # address +4
    addi    t1,     t1,     1   # counter +1
    blt     t1,     a2,     loop
    sret    #   00010	00	00010	00000	000	00000	11100	11

# error:

# end:

# 1w x10 0(x11)     0x0005A503
# addi x6 x0 0      0x00000313
# 1w x7 0(x11)      0x0005A383
# blt x7 x10 8      0x00A3C463
# add x10 x7 x0     0x00038533
# addi x11 x11 4    0x00458593
# addi x6 x6 1      0x00130313
# blt x6 x12 -20    0xFEC346E3
# sret              0x10200073
# 0x00000033
# 0x00000033
# 0x00000033
