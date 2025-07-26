module downsampler (
    input clk,
    input [3:0] count,
    input enable,
    input signed [3:0] data_up,
    output reg signed [3:0] data_down
);

always @(posedge clk ) begin
    if (enable) begin
        if (count == 4'd1) begin
            data_down <= data_up;
        end else begin
            data_down <= data_down;
        end
    end else begin
        data_down <= 4'b0000;
    end
end
    
endmodule