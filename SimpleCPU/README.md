This code gives students the idea of how to implement their assignment which is a signle cycle MIPS processor with the help of Verilog HDL.

This simplified processor has only 3 types of instructions which each has 8 bits.

In instructions, the first four bits express the opcode and the next 4 bits represent the data.

Instructions are as follow.

| Type | Opcode - Bits 7:4 | Bits 3:2 | Bits 1:0 |
| ---- | ----------------- | -------- | -------- |
| Summation | 0000 | Operand 1 | Operand 2 |
| Storation | 0010 | Data | Precise address |
| Loading | 0100 | Data | Precise address |

In addition, result of loading will be stored in a register called `loaded_`. Moreover, the result of summation will be kept in a register called `summation`.