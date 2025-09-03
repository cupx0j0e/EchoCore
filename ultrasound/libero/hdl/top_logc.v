module top_logc #(
    parameter DATA_WIDTH = 48,
    parameter FRAC_WIDTH = 16,
    parameter MIN_THRESHOLD = 1,
    parameter NORM_WIDTH = FRAC_WIDTH + 1,
    parameter SHIFT_WIDTH = $clog2(DATA_WIDTH)
) (
    input clk,
    input reset,
    input [DATA_WIDTH-1:0] data_in,
    input fifo_out_valid,
    output log_in_ready,
    output [SHIFT_WIDTH-1:0] comp_int,
    output [NORM_WIDTH-1:0] comp_frac
);

wire int_in_valid;
wire int_out_ready;
wire int_out_valid;
// wire int_in_ready;
wire [NORM_WIDTH-1:0] int_data_out;

wire frac_in_valid;
wire frac_out_ready;
wire frac_out_valid;
wire frac_in_ready;

assign int_in_valid = fifo_out_valid;
assign int_out_ready = frac_in_ready;
assign frac_in_valid = int_out_valid;
assign frac_out_ready = 1'b1;

int_calc #(
    .DATA_WIDTH(DATA_WIDTH),
    .FRAC_WIDTH(FRAC_WIDTH),
    .MIN_THRESHOLD(MIN_THRESHOLD),
    .NORM_WIDTH(NORM_WIDTH),
    .SHIFT_WIDTH(SHIFT_WIDTH)
) int_calc_0 (
    .clk(clk),
    .reset(reset),
    .in_valid(int_in_valid),
    .out_ready(int_out_ready),
    .data_in(data_in),
    .out_valid(int_out_valid),
    .in_ready(log_in_ready),
    .int_part(comp_int),
    .data_out(int_data_out)
);

log_frac_calc # (
    .DATA_WIDTH(DATA_WIDTH),
    .FRAC_WIDTH(FRAC_WIDTH),
    .NORM_WIDTH(NORM_WIDTH)
) log_frac_calc_0 (
    .clk(clk),
    .reset(reset),
    .in_valid(frac_in_valid),
    .out_ready(frac_out_ready),
    .data_in(int_data_out),
    .out_valid(frac_out_valid),
    .in_ready(frac_in_ready),
    .log_frac_out(comp_frac)
);

endmodule