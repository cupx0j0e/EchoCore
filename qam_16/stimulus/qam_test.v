`timescale 1ns / 100ps

module my_design_tb;

    localparam CLOCK_PERIOD = 20;
    localparam RST_DELAY    = 100;

    reg  clk;
    reg  reset;
    wire DOUT_VALID;
    wire FIRO_VALID;
    wire FIRO_VALID_0;
    wire tx_output_uart;

    my_design DUT (
        .clk              ( clk ),
        .reset            ( reset ),
        .DOUT_VALID       ( DOUT_VALID ),
        .FIRO_VALID       ( FIRO_VALID ),
        .FIRO_VALID_0     ( FIRO_VALID_0 ),
        .tx_output_uart   ( tx_output_uart ),
        .combined_output  ( combined_output )
    );

    initial begin
        clk = 0;
        forever #(CLOCK_PERIOD / 2) clk = ~clk;
    end

    initial begin
        reset = 1;
        #RST_DELAY;
        reset = 0;
    end

    initial begin
        @(negedge reset);

        #100;

        $display("----------------------------------------------");
        $display("Starting Simulation for my_design");
        $display("----------------------------------------------");

        $monitor("Time=%0t, clk=%b, reset=%b, combined_output=%d, tx_output_uart=%d", $time, clk, reset,combined_output, tx_output_uart);

        #10_000_000;

        $finish;
    end

endmodule
