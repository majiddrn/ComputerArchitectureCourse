module Controller (
    input wire [7:0] instruction,
    output reg sum_,
    output reg load_,
    output reg store_
);
    // reg sum_;
    // reg load_;
    // reg store_;

    always @(instruction) begin
    case (instruction[7:4])
        4'b0000: begin
        // Summation
        sum_ <= 1;
        load_ <= 1'bz;
        store_ <= 1'bz;
        
        end
        4'b0010: begin
        // Store
        sum_ <= 1'bz;
        load_ <= 1'b0;
        store_ <= 1'b1;
        
        end
        4'b0100: begin
        // Load
        sum_ <= 1'bz;
        load_ <= 1'b1;
        store_ <= 1'b0;

        end
    endcase
    end

    // assign sum = sum_;
    // assign load = load_;
    // assign store = store_;

endmodule