module top_ultra #(
    parameter SAMPLE_DELAY = 7'd3,
    parameter DATA_WIDTH = 16
) (
    input clk,
    input reset,
    output [DATA_WIDTH-1:0] file_v,
    output [6:0] delay_v,
    output [DATA_WIDTH-1:0] dout
);

wire [15:0] val;

readrf_vals uut(
    .clk(clk),
    .reset(reset),
    .val(val)
);

sample_delay dut(
    .clk(clk),
    .reset(reset),
    .din(val),
    .delay(SAMPLE_DELAY),
    .dout(dout)
);

assign file_v = val; 
assign delay_v = SAMPLE_DELAY;

endmodule