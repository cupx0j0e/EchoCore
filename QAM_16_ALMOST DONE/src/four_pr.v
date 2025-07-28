module four_pr (
    input clk,
    input reset,
    output reg [3:0] q,
    output [3:0] cnt
);

reg [3:0] count = 4'd0;

always @(posedge clk) begin
    if (reset) begin
        q <= 4'b0001;
    end else begin
        q <= (count == 4'd0) ? {q[0], (q[3] ^ q[0]), q[2], q[1]} : q;
        count <= (count == 4'd10) ? 4'd0 : count + 1;
    end
end

assign cnt = count;

endmodule
