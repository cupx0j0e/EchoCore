module top_bf #(
    parameter DATA_WIDTH = 16,
    parameter NUM_CHANNELS = 16,
    parameter MAX_DELAY = 256,
    parameter SUM_WIDTH = DATA_WIDTH + $clog2(NUM_CHANNELS)
)(
    input clk,
    input reset,
    input start,
    input [15:0] x_f,
    input [15:0] z_f,
    input [NUM_CHANNELS*DATA_WIDTH-1:0] rf_data_flat,
    output [SUM_WIDTH-1:0] beamformed_output,
    output reg valid,
    output [1:0] debug_state
);

    // FSM states
    localparam IDLE = 2'd0,
               WAIT_DELAY = 2'd1,
               SUMMING = 2'd2,
               DONE = 2'd3;

    reg [1:0] state, next_state;
    assign debug_state = state;

    // Control signals
    reg start_sum, sum_en;
    reg [$clog2(NUM_CHANNELS):0] channel_counter;

    // Delayed samples from delay controller
    wire [NUM_CHANNELS*DATA_WIDTH-1:0] delayed_flat;
    wire [DATA_WIDTH-1:0] current_sample;
    assign current_sample = delayed_flat[(NUM_CHANNELS - 1 - channel_counter)*DATA_WIDTH +: DATA_WIDTH];

    // Beamformed output wire from summ_sa
    wire [SUM_WIDTH-1:0] sum_result;

    // Ready signal from delay controller
    wire ready;

    // === Delay Controller ===
    delay_con #(
        .DATA_WIDTH(DATA_WIDTH),
        .NUM_CHANNELS(NUM_CHANNELS),
        .MAX_DELAY(MAX_DELAY)
    ) delay_ctrl (
        .clk(clk),
        .reset(reset),
        .start(start),
        .x_f(x_f),
        .z_f(z_f),
        .din_flat(rf_data_flat),
        .delayed_flat(delayed_flat),
        .ready(ready)
    );

    // === Serial Adder ===
    summ_sa #(
        .DATA_WIDTH(DATA_WIDTH),
        .NUM_CHANNELS(NUM_CHANNELS),
        .SUM_WIDTH(SUM_WIDTH)
    ) summation_unit (
        .clk(clk),
        .reset(reset),
        .start_sum(start_sum),
        .sum_en(sum_en),
        .delayed_sample(current_sample),
        .done_channel(channel_counter == NUM_CHANNELS),
        .sum_result(beamformed_output),
        .valid() // unused here
    );

    // === FSM: Sequential ===
    always @(posedge clk) begin
        if (reset) begin
            state <= IDLE;
            channel_counter <= 0;
            valid <= 0;
        end else begin
            state <= next_state;

            case (state)
                SUMMING: begin
                    if (channel_counter < NUM_CHANNELS)
                        channel_counter <= channel_counter + 1;
                end
                DONE: begin
                    valid <= 1'b1;
                end
                default: begin
                    valid <= 1'b0;
                end
            endcase
        end
    end

    // === FSM: Combinational ===
    always @(*) begin
        // Default signal values
        start_sum = 0;
        sum_en = 0;
        next_state = state;

        case (state)
            IDLE: begin
                if (start)
                    next_state = WAIT_DELAY;
            end

            WAIT_DELAY: begin
                if (ready)
                    next_state = SUMMING;
            end

            SUMMING: begin
                sum_en = 1;
                if (channel_counter == 0)
                    start_sum = 1;
                if (channel_counter == NUM_CHANNELS)
                    next_state = DONE;
            end

            DONE: begin
                next_state = DONE; // Hold result
            end
        endcase
    end

endmodule
