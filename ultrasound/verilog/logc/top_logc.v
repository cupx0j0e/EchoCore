module top_logc #(
    parameter DATA_WIDTH = 48,
    parameter COMP_WIDTH = DATA_WIDTH / 2,
    parameter NORM_WIDTH = (DATA_WIDTH + $clog2(DATA_WIDTH)),
    parameter SHIFT_WIDTH = $clog2(NORM_WIDTH),
    parameter FRAC_WIDTH = 8,
    parameter LOG_WIDTH = (SHIFT_WIDTH + FRAC_WIDTH + 1),
    parameter MIN_THRESHOLD = 0
) (
    input  clk,
    input  reset,
    input  [DATA_WIDTH-1:0] data_in,
    output [COMP_WIDTH-1:0] comp_out
);

    wire                    pre_out_valid;
    wire [NORM_WIDTH-1:0]   pre_data_out;
    wire [SHIFT_WIDTH-1:0]  pre_shift_amt;
    wire                    pre_in_ready;
    wire                    pre_out_ready;
    wire                    log_out_valid;
    wire [LOG_WIDTH-1:0]    log_out;
    wire                    log_in_ready;
    wire                    log_out_ready;
    wire pre_in_valid = 1'b1;

    assign pre_out_ready = log_in_ready;
    assign log_out_ready = 1'b1;

    preproc #(
        .DATA_WIDTH(DATA_WIDTH),
        .NORM_WIDTH(NORM_WIDTH),
        .MIN_THRESHOLD(MIN_THRESHOLD)
    ) preproc_inst (
        .clk(clk),
        .reset(reset),
        .in_valid(pre_in_valid),
        .out_ready(pre_out_ready),
        .data_in(data_in),
        .out_valid(pre_out_valid),
        .in_ready(pre_in_ready),
        .data_out(pre_data_out),
        .shift_amt(pre_shift_amt)
    );

    log_calc #(
        .NORM_WIDTH(NORM_WIDTH),
        .SHIFT_WIDTH(SHIFT_WIDTH),
        .FRAC_WIDTH(FRAC_WIDTH),
        .LOG_WIDTH(LOG_WIDTH)
    ) log_calc_inst (
        .clk(clk),
        .reset(reset),
        .in_valid(pre_out_valid),
        .out_ready(log_out_ready),
        .data_in(pre_data_out),
        .shift_amt(pre_shift_amt),
        .out_valid(log_out_valid),
        .in_ready(log_in_ready),
        .log_out(log_out)
    );

    postproc #(
        .LOG_WIDTH(LOG_WIDTH),
        .COMP_WIDTH(COMP_WIDTH)
    ) postproc_inst (
        .clk(clk),
        .reset(reset),
        .in_valid(log_out_valid),
        .out_ready(1'b1),
        .log_in(log_out),
        .out_valid(),
        .in_ready(log_out_ready),
        .comp_out(comp_out)
    );

endmodule
