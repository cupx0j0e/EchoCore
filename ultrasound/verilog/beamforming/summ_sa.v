module summ_sa #(
    parameter DATA_WIDTH = 16,
    parameter NUM_CHANNELS = 4,
    parameter SUM_WIDTH = DATA_WIDTH + $clog2(NUM_CHANNELS)
) (
    input clk,
    input reset,
    input start_sum,
    input sum_en,
    input [DATA_WIDTH-1:0] delayed_sample,
    input done_channel,
    output reg [SUM_WIDTH-1:0] sum_result,
    output reg valid    
);

    reg [SUM_WIDTH-1:0] accumulator;

    always @(posedge clk ) begin
        if (reset) begin
            sum_result <= 0;
            accumulator <= 0;
        end else begin
            if (start_sum) begin
                accumulator <= 0;
            end

            if (sum_en) begin
                accumulator <= accumulator + delayed_sample;
            end

            if (done_channel) begin
                sum_result <= accumulator;
                valid <= 1'b1;
            end else begin
                valid <= 1'b0;
            end
        end
    end
    
endmodule