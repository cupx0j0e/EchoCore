module delay_controller #(
    parameter DATA_WIDTH = 16,
    parameter NUM_CHANNELS = 16,
    parameter MAX_DELAY = 256
)(
    input clk,
    input reset,
    input start,
    input [15:0] x_f,
    input [15:0] z_f,
    input [NUM_CHANNELS*DATA_WIDTH-1:0] din_flat,
    output [NUM_CHANNELS*DATA_WIDTH-1:0] delayed_flat,
    output reg ready
);

    // Channel index
    reg [$clog2(NUM_CHANNELS)-1:0] channel_idx;

    // Delay values storage
    reg [7:0] delay_values [0:NUM_CHANNELS-1];

    // FSM states
    localparam IDLE = 0, LOAD_COORD = 1, START_CALC = 2,
               WAIT_VALID = 3, STORE = 4, INCREMENT = 5, DONE = 6;

    reg [2:0] state, next_state;

    // Coord ROM outputs
    wire [15:0] x_i, z_i;

    // Delay Calc signals
    wire [7:0] delay_out;
    wire valid;
    reg calc_start;

    // FSM sequential logic
    always @(posedge clk) begin
        if (reset) begin
            state <= IDLE;
            channel_idx <= 0;
            calc_start <= 0;
            ready <= 0;
        end else begin
            state <= next_state;

            case (state)
                START_CALC: calc_start <= 1;
                default:    calc_start <= 0;
            endcase

            if (state == STORE) begin
                delay_values[channel_idx] <= delay_out;
            end

            if (state == INCREMENT) begin
                channel_idx <= channel_idx + 1;
            end

            if (state == DONE) begin
                ready <= 1;
            end
        end
    end

    // FSM next-state logic
    always @(*) begin
        case (state)
            IDLE:        next_state = start ? LOAD_COORD : IDLE;
            LOAD_COORD:  next_state = START_CALC;
            START_CALC:  next_state = WAIT_VALID;
            WAIT_VALID:  next_state = valid ? STORE : WAIT_VALID;
            STORE:       next_state = INCREMENT;
            INCREMENT:   next_state = (channel_idx == NUM_CHANNELS-1) ? DONE : LOAD_COORD;
            DONE:        next_state = DONE;
            default:     next_state = IDLE;
        endcase
    end

    // Instantiate coord ROM
    coord_rom #(
        .NUM_CHANNELS(NUM_CHANNELS)
    ) coord_inst (
        .clk(clk),
        .addr(channel_idx),
        .x_out(x_i),
        .z_out(z_i)
    );

    // Instantiate delay calculator
    delay_calc delay_calc_inst (
        .clk(clk),
        .reset(reset),
        .start(calc_start),
        .x_i(x_i),
        .z_i(z_i),
        .x_f(x_f),
        .z_f(z_f),
        .done(valid),
        .delay_out(delay_out)
    );

    // Sample delay module instantiations
    genvar i;
    generate
        for (i = 0; i < NUM_CHANNELS; i = i + 1) begin : sample_array
            wire [DATA_WIDTH-1:0] din_i = din_flat[(i+1)*DATA_WIDTH-1 -: DATA_WIDTH];
            wire [DATA_WIDTH-1:0] dout_i;

            sample_delay #(
                .DATA_WIDTH(DATA_WIDTH),
                .MAX_DELAY(MAX_DELAY)
            ) sd_inst (
                .clk(clk),
                .reset(reset),
                .din(din_i),
                .delay(delay_values[i]),
                .dout(dout_i)
            );

            assign delayed_flat[(i+1)*DATA_WIDTH-1 -: DATA_WIDTH] = dout_i;
        end
    endgenerate

endmodule
