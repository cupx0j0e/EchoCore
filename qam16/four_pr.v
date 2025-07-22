module four_pv (
    input clk,
    input reset,
    output reg [3:0] q
);

always @(posedge clk) begin
    if (reset) begin
        q <= 4'b0001;
    end else begin
        q <= {q[0], (q[3] ^ q[0]), q[2], q[1]};
    end
end

endmodule