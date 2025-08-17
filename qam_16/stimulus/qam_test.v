`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////
// Testbench for the top-level my_design module
//
// This testbench performs the following:
// 1. Instantiates the 'my_design' module (DUT).
// 2. Generates a 100 MHz clock signal.
// 3. Applies a reset pulse at the beginning of the simulation.
// 4. Sets up waveform dumping to a VCD file for analysis.
// 5. Monitors key AXI signals and internal data paths using
//    corrected hierarchical paths.
// 6. Runs the simulation for 500ns before finishing.
//////////////////////////////////////////////////////////////////////
module my_design_tb;

    //----------------------------------------------------------------
    // Testbench Signals
    //----------------------------------------------------------------
    // Inputs to the DUT are declared as 'reg'
    reg clk;
    reg reset;
    
    // Outputs from the DUT are declared as 'wire'
    wire DOUT_VALID_dut;
    wire FIRO_VALID_dut;

    //----------------------------------------------------------------
    // Instantiate the Device Under Test (DUT)
    //----------------------------------------------------------------
    my_design uut (
        // Connect DUT ports to testbench signals
        .clk        (clk),
        .reset      (reset),
        .DOUT_VALID (DOUT_VALID_dut),
        .FIRO_VALID (FIRO_VALID_dut)
    );

    //----------------------------------------------------------------
    // Clock Generator
    // Creates a 100 MHz clock with a 10ns period.
    //----------------------------------------------------------------
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    //----------------------------------------------------------------
    // Stimulus and Monitoring
    //----------------------------------------------------------------
    initial begin
        // Set up waveform dumping for debugging in a viewer like GTKWave
        $dumpfile("my_design.vcd");
        // Dump all signals within the testbench and the DUT
        $dumpvars(0, my_design_tb);

        // 1. Apply reset
        // Hold the design in a reset state for 20ns
        reset = 1'b1;
        #20;
        // De-assert reset and wait for 10ns before monitoring
        reset = 1'b0;
        #10;

        // 2. Monitor key signals throughout the simulation.
        // The hierarchical paths have been corrected based on your 'my_design' file.
        // Note: 'uut.FIRO_VALID_0' is the internal wire connected to the second FIR filter.
        //       'uut.combiner_0_combined_output_0' is the internal wire connected to the combiner's output.
        $monitor("Time=%0t | DUT Outputs: DOUT_VALID=%b, FIRO_VALID=%b | AXI: AWVALID=%b, AWREADY=%b, WVALID=%b, WREADY=%b | Data In: valid=%b, data=0x%h",
            $time,
            // DUT Top-Level Outputs
            DOUT_VALID_dut,
            FIRO_VALID_dut,
            // AXI Master Signals (Write Address Channel)
            uut.custom_axi_master_0.S_AXI_AWVALID,
            // AXI Slave Signals (Write Address Channel)
            uut.PF_SRAM_AHBL_AXI_C0_0.AWREADY,
            // AXI Master Signals (Write Data Channel)
            uut.custom_axi_master_0.S_AXI_WVALID,
            // AXI Slave Signals (Write Data Channel)
            uut.PF_SRAM_AHBL_AXI_C0_0.WREADY,
            // Internal data valid signal going into the AXI Master
            uut.FIRO_VALID_0,
            // Internal combined data signal going into the AXI Master
            uut.combiner_0_combined_output_0
        );

        // 3. Let the simulation run to observe behavior
        #500;

        // 4. End the simulation
        $finish;
    end

endmodule
