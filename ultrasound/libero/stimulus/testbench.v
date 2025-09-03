`timescale 1ns / 100ps

module tb_envelope;

    // Define constants for the testbench
    localparam CLK_PERIOD = 10; // 10ns period, 100 MHz clock

    // Declare signals for the DUT (Device Under Test)
    reg                CLK;
    reg                reset;
    reg  [17:0]        DATAI;
    wire [47:0]        DOUT_A;
    wire               DOUT_VALID;
    wire [47:0]        DOUT_X;

    // Instantiate the Unit Under Test (DUT)
    // The `envelope` module is a wrapper for a FIR filter, a delay line, and a CORDIC.
    // The delay line will align the `DATAI` with the `fir_hilbert` output.
    envelope uut (
        .CLK        (CLK),
        .DATAI      (DATAI),
        .reset      (reset),
        .DOUT_VALID (DOUT_VALID),
        .DOUT_X     (DOUT_X)
    );

    // Clock generation process
    // Creates a continuous clock signal with a 50% duty cycle.
    initial begin
        CLK = 1'b0;
        forever #(CLK_PERIOD / 2) CLK = ~CLK;
    end

    // Stimulus generation process
    // This block applies reset and test data to the DUT.
    initial begin
        // Initialize inputs
        reset = 1'b1; // Assert reset
        DATAI = 18'b0;

        // Apply reset for a few clock cycles
        repeat (5) @(posedge CLK);
        reset = 1'b0; // De-assert reset

        // Wait for the pipeline to clear (based on FIR latency)
        repeat (10) @(posedge CLK);

        // Apply a simple signed data ramp
        // The loop provides a series of inputs to test the FIR and CORDIC.
        for (integer i = -131072; i < 131072; i = i + 1024) begin
            DATAI = i;
            @(posedge CLK);
        end

        // Wait for all data to propagate through the pipelines
        repeat (20) @(posedge CLK);

        // End the simulation
        $display("Simulation finished.");
        $finish;
    end

    // Monitor outputs
    // Displays the state of key signals at every positive clock edge.
    // This helps in debugging and verifying the logic.
    initial begin
        $monitor("Time=%0t | CLK=%b | reset=%b | DATAI=%0d | DOUT_X=%0d | DOUT_VALID=%b",
                 $time, CLK, reset, $signed(DATAI), $signed(DOUT_X),DOUT_VALID);
    end

endmodule
