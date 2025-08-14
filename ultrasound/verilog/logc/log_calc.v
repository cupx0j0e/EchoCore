module log_calc #(
    parameter NORM_WIDTH = 16,
    parameter SHIFT_WIDTH = $clog2(NORM_WIDTH),
    parameter FRAC_WIDTH = ,
    parameter FRAC_BITS = NORM_WIDTH - 2,
    parameter LOG_WIDTH = 16
) (
    input clk,
    input reset,
    input in_valid,
    input out_ready,
    input [NORM_WIDTH-1:0] data_in,
    input [SHIFT_WIDTH-1:0] shift_amt,
    output reg out_valid,
    output reg in_ready,
    output reg [LOG_WIDTH-1:0] log_out
);

    localparam IDLE = 0, CALC_FRAC = 1, COMBINE = 2, SEND = 3;
    reg [1:0] state, next_state;

    reg [NORM_WIDTH-1:0] data_reg;
    reg [SHIFT_WIDTH-1:0] shift_reg;
    reg [FRAC_WIDTH-1:0] frac_part;
    reg [LOG_WIDTH-1:0] log_result;
    reg [SHIFT_WIDTH+FRAC_BITS:0] int_part_scaled;

    always @(*) begin
        case (state)
            IDLE: next_state = (in_valid && in_ready) ? CALC_FRAC : IDLE;
            CALC_FRAC: next_state = COMBINE;
            COMBINE: next_state = SEND;
            SEND: next_state = (out_ready && out_valid) ? IDLE : SEND;
        endcase
    end

    always @(posedge clk ) begin
        if (reset) begin
            data_reg <= 0;
            shift_reg <= 0;
            frac_part <= 0;
            log_result <= 0;
        end else begin
            case(state)
                IDLE: begin
                    data_reg <= data_in;
                    shift_reg <= shift_amt;
                    out_valid <= 1'b0;
                end

                CALC_FRAC: begin
                    //calc frac
                end

                COMBINE: begin
                    int_part_scaled <= shift_amt << FRAC_BITS;
                    log_result <= int_part_scaled + frac_part;
                end

                SEND: begin
                    log_out <= log_result;
                    out_valid <= 1'b1;
                end
            endcase

            state <= next_state;
            in_ready <= (state == IDLE);
        end
    end

endmodule