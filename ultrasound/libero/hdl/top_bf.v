module top_bf #(
    parameter DATA_WIDTH = 16,
    parameter NUM_CHANNELS = 16,
    parameter MAX_DELAY = 256,
    parameter SUM_WIDTH = 18
)(
    input clk,
    input reset,
    input start,
    output [SUM_WIDTH-1:0] beamformed_output
);

    reg [15:0] x_f_reg, z_f_reg;

    localparam IDLE = 2'd0,
               WAIT_DELAY = 2'd1,
               SUMMING = 2'd2,
               DONE = 2'd3;

    reg [1:0] state, next_state;
    
    reg start_sum_reg;
    reg sum_en_reg;

    wire [NUM_CHANNELS*DATA_WIDTH-1:0] delayed_flat;
    wire [NUM_CHANNELS-1:0] valid_b;
    wire ready;
    wire enable;

    wire [15:0] val1, val2, val3, val4;
    wire inc_count;

    wire [NUM_CHANNELS*DATA_WIDTH-1:0] rf_data;
    assign rf_data = {
        {NUM_CHANNELS*DATA_WIDTH - 64{1'b0}},
        val4, val3, val2, val1
    };

    always @(posedge clk) begin
        if (reset) begin
            state <= IDLE;
            start_sum_reg <= 1'b0;
            sum_en_reg <= 1'b0;
        end else begin
            state <= next_state;

            case (next_state)
                IDLE: begin
                    start_sum_reg <= 1'b0;
                    sum_en_reg <= 1'b0;
                end
                WAIT_DELAY: begin
                    start_sum_reg <= 1'b0;
                    sum_en_reg <= 1'b0;
                end
                SUMMING: begin
                    start_sum_reg <= 1'b1;
                    sum_en_reg <= 1'b1;
                end
                DONE: begin
                    start_sum_reg <= 1'b0;
                    sum_en_reg <= 1'b0;
                end
            endcase
        end
    end

    always @(*) begin
        next_state = state;
        case (state)
            IDLE:        if (start) next_state = WAIT_DELAY;
            WAIT_DELAY:  if (ready) next_state = SUMMING;
            SUMMING:     if (&valid_b) next_state = DONE;
            DONE:        next_state = IDLE;
        endcase
    end
    
    assign inc_count = enable;
    
    readrf_vals read_vals (
        .clk(clk),
        .reset(reset),
        .inc_count(inc_count),
        .val1(val1),
        .val2(val2),
        .val3(val3),
        .val4(val4)
    );

    delay_con #(
        .DATA_WIDTH(DATA_WIDTH),
        .NUM_CHANNELS(NUM_CHANNELS),
        .MAX_DELAY(MAX_DELAY)
    ) delay_ctrl (
        .clk(clk),
        .reset(reset),
        .start(start),
        .x_f(x_f_reg),
        .z_f(z_f_reg),
        .din_flat(rf_data),
        .delayed_flat(delayed_flat),
        .valid_b(valid_b),
        .enable(enable),
        .ready(ready)
    );
    
    summ_sa #(
        .DATA_WIDTH(DATA_WIDTH),
        .NUM_CHANNELS(NUM_CHANNELS),
        .SUM_WIDTH(SUM_WIDTH)
    ) summation_unit (
        .clk(clk),
        .reset(reset),
        .start_sum(start_sum_reg),
        .sum_en(sum_en_reg),
        .delayed_sample(delayed_flat),
        .sum_result(beamformed_output),
        .valid()
    );

endmodule