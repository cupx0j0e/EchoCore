module desymmap (
    input signed [3:0] i_down,
    input signed [3:0] q_down,
    output reg [3:0] data
);

    always @(*) begin
        case (i_down)
            -4'sd3: data[3:2] = 2'b00;
            -4'sd1: data[3:2] = 2'b01;
            4'sd3: data[3:2] = 2'b11;
            4'sd1: data[3:2] = 2'b10;
            default: data[3:2] = 2'b00;
        endcase

        case (q_down)
            -4'sd3: data[1:0] = 2'b00;
            -4'sd1: data[1:0] = 2'b01;
            4'sd3: data[1:0] = 2'b11;
            4'sd1: data[1:0] = 2'b10;
            default: data[1:0] = 2'b00;
        endcase
    end
    
endmodule