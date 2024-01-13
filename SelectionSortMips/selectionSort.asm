.data
array: .word 2,10,6,8,4,5,1,4,10,9

.text
init:
  la $a0, array
  addi $a1, $zero, 10
loop_i:
    beq $t0, $a1, out_loop_i
    add $t1, $zero, 1000       # $t1 = min = 1000
    add $t2, $zero, $t0         # $t2 = minIndex = i
    add $t3, $zero, $t0         # $t3 = j = i
    loop_j:
        beq $t3, $a1, out_loop_j
        sll $t4, $t3, 2
        add $t4, $a0, $t4       # $t4 = &array[j]
        lw $t5, 0($t4)          # $t5 = array[j]
        bgt $t5, $t1, out_if
        beq $t5, $t1, out_if
        if:
            add $t1, $zero, $t5  # min = array[j]
            add $t2, $zero, $t3  # minIndex = j
        out_if:

        addi $t3, $t3, 1

        j loop_j
    out_loop_j:
    sll $t6, $t2, 2
    add $t6, $a0, $t6       # $t6 = &array[minIndex]
    lw $s0, 0($t6)          # $s0 = array[minIndex]

    sll $t7, $t0, 2
    add $t7, $a0, $t7       # $t7 = &array[i]
    lw $s1, 0($t7)          # $s1 = array[i]

    sw $s0, 0($t7)          # array[i] = array[minIndex];
    sw $s1, 0($t6)          # array[minIndex] = array[i];

    addi $t0, $t0, 1

    j loop_i
out_loop_i:

lw $t0, 8($a0)
