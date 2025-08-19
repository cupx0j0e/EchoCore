module combiner (
    input clk,
    input reset,
    input signed [63:0] modulated_i, 
    input signed [63:0] modulated_q, 
    output reg signed [64:0] combined_output 
);

    always @(posedge clk) begin
        if (reset) begin
            combined_output <= 17'd0;
        end else begin
            combined_output <= modulated_i + modulated_q;
        end
    end

endmodule

