`timescale 1ps/1ps

module summ_sa_tb;

    // Parameters
    parameter DATA_WIDTH = 16;
    parameter NUM_CHANNELS = 4;
    parameter SUM_WIDTH = DATA_WIDTH + $clog2(NUM_CHANNELS);

    // Inputs
    reg clk;
    reg reset;
    reg start_sum;
    reg sum_en;
    reg [DATA_WIDTH-1:0] delayed_sample;
    reg done_channel;

    // Outputs
    wire [SUM_WIDTH-1:0] sum_result;
    wire valid;

    // Instantiate the module
    summ_sa #(
        .DATA_WIDTH(DATA_WIDTH),
        .NUM_CHANNELS(NUM_CHANNELS)
    ) uut (
        .clk(clk),
        .reset(reset),
        .start_sum(start_sum),
        .sum_en(sum_en),
        .delayed_sample(delayed_sample),
        .done_channel(done_channel),
        .sum_result(sum_result),
        .valid(valid)
    );

    // Clock generation
    always #5 clk = ~clk;  // 100 MHz

    // Stimulus
    initial begin
        $dumpfile("./summ_sa_tb.vcb");
        $dumpvars(0, summ_sa_tb);

        // Initialize signals
        clk = 0;
        reset = 1;
        start_sum = 0;
        sum_en = 0;
        delayed_sample = 0;
        done_channel = 0;

        // Hold reset for some time
        #10;
        reset = 0;

        // Start accumulation
        #10;
        start_sum = 1;
        #10;
        start_sum = 0;

        // Apply samples
        sum_en = 1;
        delayed_sample = 237; #10;
        delayed_sample = 20; #10;
        delayed_sample = 125; #10;
        delayed_sample = 5230; #10;
        sum_en = 0;

        // Assert done_channel to latch result
        done_channel = 1; #10;
        done_channel = 0;

        // Wait and check result
        #10 $finish;
    end

endmodule
