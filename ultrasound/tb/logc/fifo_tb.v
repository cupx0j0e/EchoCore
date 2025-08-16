`timescale 1ps/1ps

module tb_fifo();

    localparam DATA_WIDTH = 16;
    localparam ADDR_WIDTH = 3;
    localparam DEPTH = 1 << ADDR_WIDTH;

    reg clk;
    reg reset;
    reg [DATA_WIDTH-1:0] data_in;
    wire [DATA_WIDTH-1:0] data_out;
    wire [ADDR_WIDTH:0] fifo_count;
    wire [ADDR_WIDTH-1:0] rd_ptr;
    wire [ADDR_WIDTH-1:0] wr_ptr;

    // Instantiate FIFO
    fifo #(
        .DATA_WIDTH(DATA_WIDTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) dut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .data_out(data_out),
        .fifo_count(fifo_count),
        .rd_ptr(rd_ptr),
        .wr_ptr(wr_ptr)
    );

    // Clock generator
    initial clk = 0;
    always #5 clk = ~clk; // 100 MHz

    integer i;

    initial begin
        // Open VCD file for GTKWave
        $dumpfile("fifo_tb.vcd");
        $dumpvars(0, tb_fifo);

        // Reset
        reset = 1;
        data_in = 0;
        #20;
        reset = 0;

        // Write data into FIFO
        for (i = 0; i < DEPTH; i = i + 1) begin
            data_in = i + 16'h100;
            #10; // one clock cycle per write
        end

        // Keep running to show read behavior
        #100;

        // Write again while reading
        for (i = 0; i < DEPTH; i = i + 1) begin
            data_in = i + 16'h200;
            #10;
        end

        #100;

        $finish;
    end

endmodule
