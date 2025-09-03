module four_pr (
    input clk,
    input reset,
    output reg [3:0] q
);

reg [3:0] count;

always @(posedge clk) begin
    if (reset) begin
        q     <= 4'b0001;
        count <= 4'd0;
    end else begin
        if (count == 4'd0)
            q <= {q[0], (q[3] ^ q[0]), q[2], q[1]}; 
        count <= (count == 4'd10) ? 4'd0 : count + 1;
    end
end

endmodule 
