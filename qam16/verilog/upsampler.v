module upsampler (
    input clk,
    input reset,
    input [3:0] count,
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
            case (count)
                4'b0000: begin
                    iup <= iout;
                    qup <= qout;
                end 
                default: begin
                    iup <= 4'sd0;
                    qup <= 4'sd0;
                end
            endcase
        end
    end

endmodule