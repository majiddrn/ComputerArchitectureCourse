module InstructionMemory(
 input wire [3:0] address,
//  input [7:0] memory [0:9],
 output wire [7:0] instruction
);
 reg [7:0] Memory [0:5];

 initial begin
    Memory[0] = 8'b00001001;
    Memory[1] = 8'b00001110;
    Memory[2] = 8'b00001111;
    Memory[3] = 8'b00101000;
    Memory[4] = 8'b00100101;
    Memory[5] = 8'b01000100;
 end

 assign instruction = Memory[address];

endmodule
