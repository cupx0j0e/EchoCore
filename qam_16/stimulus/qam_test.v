`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////
// Testbench for my_design module
// This testbench provides a clock and reset signal and instantiates
// the my_design module to allow for simulation and verification.
//////////////////////////////////////////////////////////////////////
module my_design_tb;

    //----------------------------------------------------------------
    // Testbench signals
    // Regs are used for testbench-controlled signals (inputs to DUT)
    // Wires are used for DUT-controlled signals (outputs from DUT)
    //----------------------------------------------------------------
    reg         clk;
    reg         reset;

    wire        DOUT_VALID;
    wire        FIRO_VALID;
    wire        FIRO_VALID_0;
    wire [64:0] combined_output;

    //----------------------------------------------------------------
    // Clock Generation
    // Generates a continuous clock signal with a 10ns period.
    //----------------------------------------------------------------
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 10ns period
    end

    //----------------------------------------------------------------
    // Main Test Sequence
    // Applies a reset pulse and then runs the simulation for a
    // a set number of clock cycles to observe the output.
    //----------------------------------------------------------------
    initial begin
        // Initialize inputs
        reset = 1;
        
        // Apply reset pulse
        #10;
        reset = 0;
        
        // Run simulation for a while
        #50000;
        
        // Stop simulation
        $finish;
    end

    //----------------------------------------------------------------
    // Instantiation of the DUT (Device Under Test)
    // This connects the testbench signals to the module ports.
    //----------------------------------------------------------------
    my_design DUT (
        .clk             (clk),
        .reset           (reset),
        .DOUT_VALID      (DOUT_VALID),
        .FIRO_VALID      (FIRO_VALID),
        .FIRO_VALID_0    (FIRO_VALID_0),
        .combined_output (combined_output)
    );

    //----------------------------------------------------------------
    // Monitoring and Waveform Generation
    // Monitors output signals for changes and prints them to the console.
    // It also creates a .vcd file for waveform viewing in tools like GTKWave.
    //----------------------------------------------------------------
    initial begin
        // Monitor outputs to console
        $monitor("Time: %0t | DOUT_VALID: %b, FIRO_VALID: %b, FIRO_VALID_0: %b, combined_output: %h", 
                 $time, DOUT_VALID, FIRO_VALID, FIRO_VALID_0, combined_output);

        // Dump waveforms for simulation analysis
        $dumpfile("my_design_tb.vcd");
        $dumpvars(0, my_design_tb);
    end

endmodule