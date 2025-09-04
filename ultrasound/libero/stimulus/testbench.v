`timescale 1ns / 100ps

module tb_top_logc;

    // Clock and reset
    reg clk;
    reg reset;

    // Outputs from DUT
    wire [16:0] comp_frac;
    wire [5:0]  comp_int;
    wire        log_in_ready;

    top dut (
        .clk          (clk),
        .reset        (reset),
        .comp_frac    (comp_frac),
        .comp_int     (comp_int),
        .log_in_ready (log_in_ready)
    );

    // Clock generation: 100 MHz
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Reset sequence
    initial begin
        reset = 1;
        #50;
        reset = 0;
    end

    // Monitor outputs when log_in_ready is high
    always @(posedge clk) begin
        if (!reset && log_in_ready) begin
            $display("%t ns | comp_int=%0d | comp_frac=%0h | log_in_ready=%b",
                     $time, comp_int, comp_frac, log_in_ready);
        end
    end

    // Simulation end
    initial begin
        #1000; // run enough cycles
        $display("Simulation finished at %t ns", $time);
        $finish;
    end

endmodule
