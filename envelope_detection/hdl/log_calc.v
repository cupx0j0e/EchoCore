module log_calc #(
    parameter NORM_WIDTH = 16,
    parameter LOG_WIDTH = 16,
    parameter FRAC_WIDTH = 8,
    parameter SHIFT_WIDTH = $clog2(NORM_WIDTH)
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
    reg [SHIFT_WIDTH+FRAC_WIDTH:0] int_part_scaled;

    wire [FRAC_WIDTH-1:0] frac_out;
    wire frac_valid;
    reg frac_in_valid = 0;

    calc_frac #(
        .DATA_WIDTH(NORM_WIDTH),
        .FRAC_WIDTH(FRAC_WIDTH)
    ) frac_inst (
        .clk(clk),
        .reset(reset),
        .in_valid(frac_in_valid),
        .in_data(data_reg),
        .out_valid(frac_valid),
        .out_frac(frac_out)
    );

    always @(*) begin
        case (state)
            IDLE: next_state = (in_valid && in_ready) ? CALC_FRAC : IDLE;
            CALC_FRAC: next_state = (frac_valid) ? COMBINE : CALC_FRAC;
            COMBINE: next_state = SEND;
            SEND: next_state = (out_ready && out_valid) ? IDLE : SEND;
        endcase
    end

    always @(posedge clk ) begin
        if (reset) begin
            state <= IDLE;
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
                    frac_in_valid <= 1'b1;
                    if (frac_valid) begin
                        frac_part <= frac_out;
                        frac_in_valid <= 1'b0;
                    end
                end

                COMBINE: begin
                    int_part_scaled <= shift_reg << FRAC_WIDTH;
                end

                SEND: begin
                    // log_result <= int_part_scaled + frac_part;
                    log_out <= int_part_scaled + frac_part;
                    out_valid <= 1'b1;
                end
            endcase

            state <= next_state;
            in_ready <= (state == IDLE);
        end
    end

endmodule