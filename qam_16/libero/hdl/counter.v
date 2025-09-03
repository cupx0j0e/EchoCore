module phase_counter (
    input clk,
    input reset,
    output reg [15:0] phase_angle
);

 
    always @(posedge clk) begin
        if (reset) begin
            phase_angle <= 16'd0;
        end else begin
          
            phase_angle <= phase_angle + 16'd1;
        end
    end

endmodule

