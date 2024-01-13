module Mem (
    input [1:0] address,
    input [1:0] val,
    input load,
    output reg [1:0] loaded_stored
);
    reg [7:0] Memory [0:9]; 
    // reg [7:0] Loadeds [0:9];
    reg [1:0] loaded_;

    always @(*) begin
        case (load)
            0: begin
                $display("Address: %d, val: %d", address, val);
                Memory[address] <= val;
                loaded_stored <= 8'bz;
            end

            1: begin
                $display("Loading of Address: %d, val: %d", address, val);
                // Loadeds[address] = val;
                loaded_stored <= Memory[address];
            end
        endcase
    end

    // assign loaded_stored = load == 1'bz ? 2'bz : loaded_;

endmodule