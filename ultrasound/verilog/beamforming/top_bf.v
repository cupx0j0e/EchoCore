module top_beamformer #(
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
    output reg valid
);

    // Internal wires
    wire [NUM_CHANNELS*DATA_WIDTH-1:0] delayed_flat;
    wire ready;
    wire [SUM_WIDTH-1:0] sum_result;

    // Serial summation control
    reg start_sum, sum_en;
    reg [$clog2(NUM_CHANNELS):0] channel_counter;
    reg [1:0] state, next_state;

    localparam IDLE = 0, SUMMING = 1, DONE = 2;

    // Extract current delayed sample from flattened array
    wire [DATA_WIDTH-1:0] current_sample;
    assign current_sample = delayed_flat[(channel_counter+1)*DATA_WIDTH-1 -: DATA_WIDTH];

    // Delay Controller Instance
    delay_controller #(
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

    // Serial Summation Instance
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
        .valid() // We control valid manually
    );

    // FSM: Sequential logic
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

    // FSM: Combinational next state & control
    always @(*) begin
        start_sum = 0;
        sum_en = 0;
        next_state = state;

        case (state)
            IDLE: begin
                if (ready) begin
                    next_state = SUMMING;
                    start_sum = 1;
                end
            end

            SUMMING: begin
                sum_en = 1;
                if (channel_counter == NUM_CHANNELS)
                    next_state = DONE;
            end

            DONE: begin
                next_state = DONE; // Hold
            end
        endcase
    end

endmodule
