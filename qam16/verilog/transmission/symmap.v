module symmap (
    input [3:0] data,
    output reg signed [3:0] Iout,
    output reg signed [3:0] Qout
);
    
    always @(*) begin
        case (data[3:2])
            2'b00: Iout = -4'sd3;
            2'b01: Iout = -4'sd1;
            2'b11: Iout = 4'sd3;
            2'b10: Iout = 4'sd1;
        endcase

        case (data[1:0])
            2'b00: Qout = -4'sd3;
            2'b01: Qout = -4'sd1;
            2'b11: Qout = 4'sd3;
            2'b10: Qout = 4'sd1;
        endcase
    end

endmodule