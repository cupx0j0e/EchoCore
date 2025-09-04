module delay_con #(
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
    output [NUM_CHANNELS-1:0] valid_b,
    output enable,
    output reg ready
);
    reg [NUM_CHANNELS-1:0] enable_buff;
    wire [NUM_CHANNELS-1:0] valid_buff;

    reg [$clog2(NUM_CHANNELS)-1:0] channel_idx = 0;

    wire [7:0] delay_values [0:NUM_CHANNELS-1];

    localparam IDLE = 0, LOAD_COORD = 1, START_CALC = 2,
               WAIT_VALID = 3, STORE = 4, INCREMENT = 5, DONE = 6;

    reg [2:0] state, next_state;

    wire [15:0] x_i, z_i;
    reg [DATA_WIDTH-1:0] x_ic [0:NUM_CHANNELS-1];
    reg [DATA_WIDTH-1:0] z_ic [0:NUM_CHANNELS-1];

    wire [NUM_CHANNELS-1:0] done;
    reg calc_start;

    always @(posedge clk) begin
        if (reset) begin
            state <= IDLE;
            channel_idx <= 0;
            calc_start <= 0;
            ready <= 0;
            enable_buff <= 0;
        end else begin
            state <= next_state;

            case (state)
                START_CALC: calc_start <= 1;
                LOAD_COORD: channel_idx <= channel_idx + 1;
                DONE: begin
                    enable_buff <= {NUM_CHANNELS{1'b1}}; 
                    ready <= &valid_buff;
                end
                default:    calc_start <= 0;
            endcase
        end
    end

    always @(*) begin
        case (state)
            IDLE:        next_state = start ? LOAD_COORD : IDLE;
            LOAD_COORD:  next_state = (channel_idx == NUM_CHANNELS-1) ? START_CALC : LOAD_COORD;
            START_CALC:  next_state = WAIT_VALID;
            WAIT_VALID:  next_state = &done ? DONE : WAIT_VALID;
            DONE:        next_state = DONE;
            default:     next_state = IDLE;
        endcase

        x_ic[channel_idx] = x_i;
        z_ic[channel_idx] = z_i;
    end

    coord_rom #(
        .NUM_CHANNELS(NUM_CHANNELS)
    ) coord_inst (
        .clk(clk),
        .addr(channel_idx),
        .x_out(x_i),
        .z_out(z_i)
    );

    genvar j;
    generate
        for (j = 0; j < NUM_CHANNELS; j=j+1) begin: delay_calc_arr
            delay_calc delay_calc_inst (
                .clk(clk),
                .reset(reset),
                .start(calc_start),
                .x_i(x_ic[j]),
                .z_i(z_ic[j]),
                .x_f(x_f),
                .z_f(z_f),
                .done(done[j]),
                .delay_out(delay_values[j])
            );
        end
    endgenerate

    genvar i;
    generate
        for (i = 0; i < NUM_CHANNELS; i = i + 1) begin : sample_array
            wire [DATA_WIDTH-1:0] dout_i;

            sample_delay #(
                .DATA_WIDTH(DATA_WIDTH),
                .MAX_DELAY(MAX_DELAY)
            ) sd_inst (
                .clk(clk),
                .reset(reset),
                .enable(enable_buff[i]),
                .din(enable_buff[i] ? din_flat[(i+1)*DATA_WIDTH-1 -: DATA_WIDTH] : {DATA_WIDTH{1'b0}}),
                .delay(delay_values[i]),
                .dout(dout_i),
                .valid(valid_buff[i])
            );

            assign delayed_flat[(i+1)*DATA_WIDTH-1 -: DATA_WIDTH] = dout_i;
        end
    endgenerate

    assign valid_b = valid_buff;
    assign enable = &enable_buff;
endmodule
