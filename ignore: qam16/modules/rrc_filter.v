module rrc_filter #(
    parameter TAPS = 11
)(
    input clk,
    input rst,
    input signed [3:0] din,
    output reg signed [15:0] dout
);

    reg signed [7:0] shift_reg [0:TAPS-1];
    reg signed [7:0] coeffs [0:TAPS-1];
    reg signed [15:0] acc;
    integer i;

    // Initialize coefficients 
    initial begin
        coeffs[0]  = 4;
        coeffs[1]  = 6;
        coeffs[2]  = 8;
        coeffs[3]  = 10;
        coeffs[4]  = 12;
        coeffs[5]  = 14;
        coeffs[6]  = 12;
        coeffs[7]  = 10;
        coeffs[8]  = 8;
        coeffs[9]  = 6;
        coeffs[10] = 4;
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            dout <= 0;
            for (i = 0; i < TAPS; i = i + 1)
                shift_reg[i] <= 0;
        end else begin
            // Shift register update
            for (i = TAPS - 1; i > 0; i = i - 1)
                shift_reg[i] <= shift_reg[i - 1];
            shift_reg[0] <= din;

            // Multiply-accumulate
            acc = 0;
            for (i = 0; i < TAPS; i = i + 1)
                acc = acc + shift_reg[i] * coeffs[i];

            dout <= acc;
        end
    end

endmodule
