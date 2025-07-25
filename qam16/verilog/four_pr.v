module four_pr (
    input clk,
    input reset,
    output reg [3:0] data,
    output [3:0] cnt
);

reg [3:0] count = 4'd0;

always @(posedge clk) begin
    if (reset) begin
        data <= 4'b0001;
    end else begin
        data <= (count == 4'd0) ? {data[0], (data[3] ^ data[0]), data[2], data[1]} : data;
        count <= (count == 4'd10) ? 4'd0 : count + 1;
    end
end

assign cnt = count;

endmodule