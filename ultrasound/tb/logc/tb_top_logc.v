`timescale 1ps/1ps

module tb_top_logc;
    // reg [DATA_WIDTH-1:0] data_lut [0:2];
    // reg [1:0] i = 0;

    parameter DEPTH = 30;

    localparam DATA_WIDTH = 48;
    localparam FRAC_WIDTH = 16;
    localparam MIN_THRESHOLD = 1;
    localparam NORM_WIDTH = FRAC_WIDTH + 1;
    localparam SHIFT_WIDTH = $clog2(DATA_WIDTH);

    localparam ADDR_WIDTH = $clog2(DEPTH);

    reg clk;
    reg reset;
    reg [DATA_WIDTH-1:0] data_in;
    wire [DATA_WIDTH-1:0] data_out;
    wire [ADDR_WIDTH:0] fifo_count;
    wire [ADDR_WIDTH-1:0] rd_ptr;
    wire [ADDR_WIDTH-1:0] wr_ptr;
    wire [SHIFT_WIDTH-1:0] comp_int;
    wire [NORM_WIDTH-1:0] comp_frac;
    wire pir;
    wire fifo_out_valid;

    fifo # (
        DATA_WIDTH,
    ) fifo_inst (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .rd_en(pir),
        .wr_en(1'b1),
        .data_out(data_out),
        .fifo_count(fifo_count),
        .out_valid(fifo_out_valid)
    );

    top_logc #(
        .DATA_WIDTH(DATA_WIDTH),
        .FRAC_WIDTH(FRAC_WIDTH),
        .MIN_THRESHOLD(MIN_THRESHOLD),
        .NORM_WIDTH(NORM_WIDTH),
        .SHIFT_WIDTH(SHIFT_WIDTH)
    ) top_logc_0 (
        .clk(clk),
        .reset(reset),
        .data_in(data_out),
        .log_in_ready(pir),
        .fifo_out_valid(fifo_out_valid),
        .comp_int(comp_int),
        .comp_frac(comp_frac)
    );

    // initial begin
    //     data_lut[0] = 48'd120362;
    //     data_lut[1] = 48'd65536;
    //     data_lut[2] = 48'd1;
    // end

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        data_in = 0;
        #20;
        reset = 0;
        data_in = 48'd987654321;
        #1000;
        $finish;
    end

    initial begin
        $dumpfile("top_logc_tb.vcd");
        $dumpvars(0, tb_top_logc);
    end

endmodule
