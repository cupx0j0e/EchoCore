module rrc_filter #(
    parameter TAPS = 11,
    parameter signed [7:0] coeffs [0:TAPS-1] = '{4, 6, 8, 10, 12, 14, 12, 10, 8, 6, 4}

)(
    input clk,
    input rst,
    input signed [3:0] din,
    output reg signed [15:0] dout
);

    reg signed [7:0] shift_reg [0:TAPS-1];
    reg signed [15:0] acc;
    integer i;


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
