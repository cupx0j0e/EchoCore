module upsampler (
    input clk,
    input reset,
    input [3:0] count,  // 0 to 10
    input signed [3:0] iout,
    input signed [3:0] qout,
    output reg signed [3:0] iup,
    output reg signed [3:0] qup
);

    always @(posedge clk) begin
        if (reset) begin
            iup <= 4'sd0;
            qup <= 4'sd0;
        end else begin
            if (count == 4'd0) begin
                iup <= iout;
                qup <= qout;
            end else begin
                iup <= 4'sd0;
                qup <= 4'sd0;
            end
        end
    end

endmodule

