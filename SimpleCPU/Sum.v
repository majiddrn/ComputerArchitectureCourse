module Sum (
    input [1:0] a,
    input [1:0] b,
    input sum,
    output reg [2:0] summation
);
    reg [7:0] Summations [0:9]; 
    reg [3:0] index;

    reg [1:0] sum_;

    initial index = 0;

    always @(*) begin
        case (sum)
        1'b1: begin
            // Summations[index] <= a + b;
            summation <= a + b;
            // index <= index + 1;
            $display("%d, %d, sum_:%d", a, b, summation);

            // if (index == 10)
            //     index = 0;
        end
        1'bz: begin
            summation = 2'bz;
        end
        endcase 
    end

    // assign summation = sum_;

    // assign summation = sum == 1 ? a + b : 2'bz;

endmodule