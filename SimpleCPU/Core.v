module Core (
    input wire clk
);
    reg [3:0] pc;
    initial pc = 0;
    wire [7:0] instruction;
    wire [2:0] summation;
    wire [1:0] loaded_;

    wire sum, load, store;

    Controller controller(instruction , sum, load, store);

    InstructionFetcher ins_f(pc, instruction);

    Sum sum_d(instruction[3:2], instruction[1:0], sum, summation);

    Mem mem_d(instruction[3:2], instruction[1:0], load, loaded_);

    always @(posedge clk) begin
        if (pc == 5)
            pc <= 0;
        else begin
            pc <= pc + 1;
        end
    end

endmodule

module tb (
    
);

    initial begin
        $dumpfile("Core.vcd");
        $dumpvars(0,tb);
    end

    reg clk;
    initial clk = 0;
    Core cr(clk);

    integer i = 0;

    always begin
        #5
        clk = ~clk;
        i = i + 1;
        if (i == 10)
            $finish;

    end
endmodule

