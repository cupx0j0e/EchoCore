module summ_sa #(
    parameter DATA_WIDTH = 16,
    parameter NUM_CHANNELS = 4,
    parameter SUM_WIDTH = DATA_WIDTH + $clog2(NUM_CHANNELS)
) (
    input clk,
    input reset,
    input start_sum,
    input sum_en,
    input [NUM_CHANNELS*DATA_WIDTH-1:0] delayed_sample,
    output reg [SUM_WIDTH-1:0] sum_result,
    output reg valid    
);

    integer i;
    reg [SUM_WIDTH-1:0] sum;

    always @(*) begin
        if (sum_en) begin
            sum = 0;
            for (i = 0; i < NUM_CHANNELS; i = i + 1) begin
                sum = sum + delayed_sample[i*DATA_WIDTH +: DATA_WIDTH];
            end
        end else begin
            sum = 0;
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            sum_result <= 0;
            valid <= 0;
        end else begin
            if (sum_en) begin
                sum_result <= sum;
                valid <= 1;
            end else begin
                valid <= 0;
            end
        end
    end

endmodule
