`timescale 1ps/1ps

module tb_top_logc;

    parameter DATA_WIDTH = 48;
    parameter DEPTH = 30;
    localparam ADDR_WIDTH = $clog2(DEPTH);
    parameter COMP_WIDTH = DATA_WIDTH / 2;

    reg clk;
    reg reset;
    reg [DATA_WIDTH-1:0] data_in;
    wire [DATA_WIDTH-1:0] data_out;
    wire [ADDR_WIDTH:0] fifo_count;
    wire [ADDR_WIDTH-1:0] rd_ptr;
    wire [ADDR_WIDTH-1:0] wr_ptr;
    wire [COMP_WIDTH-1:0] comp_out;
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
        .COMP_WIDTH(COMP_WIDTH)
    ) dut (
        .clk(clk),
        .reset(reset),
        .data_in(data_out),
        .pre_in_ready(pir),
        .fifo_out_valid(fifo_out_valid),
        .comp_out(comp_out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        data_in = 0;
        #20;
        reset = 0;
        repeat (30) begin
            @(posedge clk);
            data_in = $random;
        end
        #100;
        $finish;
    end

    initial begin
        $dumpfile("top_logc_tb.vcd");
        $dumpvars(0, tb_top_logc);
    end

endmodule
