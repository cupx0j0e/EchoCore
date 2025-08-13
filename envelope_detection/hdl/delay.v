   // =========================================================================================
// This module provides a sign-extending delay line.
// It takes a signed input of a specified width, sign-extends it to a wider output width,
// and then delays the data by a specified number of clock cycles using a shift register.
// This is useful for synchronizing data paths with different latencies, like aligning
// the input signal with the output of a FIR filter.
// =========================================================================================
module delay_line_signext #(
    parameter IN_WIDTH  = 18,   // Input data width (e.g., from DATAI)
    parameter OUT_WIDTH = 48,   // Output data width (e.g., for CORDIC input)
    parameter LATENCY   = 9     // Number of delay cycles to match the FIR latency
)(
    input              clk,    // Clock signal
    input              rstn,   // Active-low reset
    input  signed [IN_WIDTH-1:0] din,    // Signed input data
    output signed [OUT_WIDTH-1:0] dout   // Signed delayed and sign-extended output
);

    // Wire for the sign-extended input.
    // The most significant bit (MSB) of the input 'din' is replicated
    // to fill the higher bits of the 'din_ext' wire.
    wire signed [OUT_WIDTH-1:0] din_ext = {{OUT_WIDTH - IN_WIDTH{din[IN_WIDTH-1]}}, din};

    // A shift register array to create the delay pipeline.
    // The size of the array is determined by the 'LATENCY' parameter.
    reg signed [OUT_WIDTH-1:0] shift_reg [0:LATENCY-1];
    integer i;

    // Sequential logic to implement the shift register.
    // The 'always' block is triggered by the positive edge of the clock or
    // the negative edge of the reset signal.
    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            // On reset, all registers in the pipeline are cleared to zero.
            for (i = 0; i < LATENCY; i = i + 1)
                shift_reg[i] <= {OUT_WIDTH{1'b0}};
        end else begin
            // On the positive clock edge, data shifts through the pipeline.
            // The new sign-extended input data enters the first register.
            shift_reg[0] <= din_ext;
            // The data from each register is shifted to the next one.
            for (i = 1; i < LATENCY; i = i + 1)
                shift_reg[i] <= shift_reg[i-1];
        end
    end

    // The output 'dout' is assigned the value from the last register in the pipeline.
    assign dout = shift_reg[LATENCY-1];

endmodule
