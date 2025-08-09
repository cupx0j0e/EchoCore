`timescale 1ns / 1ps

module rrc_filter_tb;

    // Parameters
    parameter TAPS = 11;

    // Testbench signals
    reg clk;
    reg rst;
    reg signed [3:0] din;
    wire signed [15:0] dout;

    // Instantiate the filter
    rrc_filter #(TAPS) uut (
        .clk(clk),
        .rst(rst),
        .din(din),
        .dout(dout)
    );

    // Clock generation: 10ns period (100 MHz)
    always #5 clk = ~clk;

    integer i;

    initial begin
        // Initialize
        clk = 0;
        rst = 1;
        din = 0;

        // Hold reset for a few cycles
        #20;
        rst = 0;

        // Apply impulse input (1 followed by 0s)
        din = 4'sd8;  // impulse at t=0
        #10;
        for (i = 0; i < 10; i = i + 1) begin
            din = 4'sd0;
            #10;
        end

        // Apply impulse input (1 followed by 0s)
        din = 4'sd2;  // impulse at t=0
        #10;
        for (i = 0; i < 10; i = i + 1) begin
            din = 4'sd0;
            #10;
        end

        // Random data
        
        din = $random % 8;  // signed 4-bit value range
        #10;
        
        for (i = 0; i < 10; i = i + 1) begin
            din = 4'sd0;
            #10;
        end
        

        // Finish
        $finish;
    end

    // Monitor output
    initial begin
        $display("Time\tclk\tdin\tdout");
        $monitor("%0dns\t%b\t%d\t%d", $time, clk, din, dout);
        $dumpfile("./filter.vcb");
        $dumpvars(0, rrc_filter_tb);
    end

endmodule
