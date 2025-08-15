module preproc #(
    parameter DATA_WIDTH = 16,
    parameter MIN_THRESHOLD = 1,
    parameter NORM_WIDTH = DATA_WIDTH,
    parameter SHIFT_WIDTH = $clog2(DATA_WIDTH)
) (
    input clk,
    input reset,
    input in_valid,
    input out_ready,
    input [DATA_WIDTH-1:0] data_in,
    output reg out_valid,
    output in_ready,
    output reg [NORM_WIDTH-1:0] data_out,
    output [SHIFT_WIDTH-1:0] shift_amt
);
    reg [DATA_WIDTH-1:0] sample_reg;
    reg [DATA_WIDTH-1:0] zp_reg;
    reg [SHIFT_WIDTH-1:0] msb_index;
    reg [SHIFT_WIDTH-1:0] shift_amt_reg;
    integer i;

    reg found = 0;

    localparam IDLE = 0, CALC_ZP = 1, PROCESS = 2, CALC_SHIFT = 3, LOAD_DOUT = 4, SEND = 5;
    reg [2:0] state, next_state;

    always @(*) begin
        case(state)
            IDLE: next_state = (in_ready && in_valid) ? CALC_ZP : IDLE;
            CALC_ZP: next_state = PROCESS;
            PROCESS: next_state = CALC_SHIFT;
            CALC_SHIFT: next_state = LOAD_DOUT;
            LOAD_DOUT: next_state = SEND;
            SEND: next_state = (out_ready) ? IDLE : SEND;
        endcase
    end

    always @(posedge clk) begin
        if (reset) begin
            sample_reg <= 0;
            out_valid <= 0;
            state <= IDLE;
            found <= 1'b0;
        end else begin
            case(state)
                IDLE: begin
                    sample_reg <= data_in;
                end

                CALC_ZP: begin
                    zp_reg <= (sample_reg == 0) ? MIN_THRESHOLD : sample_reg;
                end

                PROCESS: begin
                    for (i = 0; i <= DATA_WIDTH-1; i = i + 1) begin
                        if (zp_reg[i]) begin
                            if (~found) begin
                                msb_index <= i;
                                found <= 1'b1;
                            end
                        end
                    end
                end

                CALC_SHIFT: begin
                    shift_amt_reg <= (DATA_WIDTH - 1) - msb_index;
                end

                LOAD_DOUT: begin
                    data_out <= zp_reg << shift_amt_reg;                    
                    out_valid <= 1'b1;
                end

                SEND: begin
                    found <= 1'b0;
                    out_valid <= 1'b0;
                end
            endcase

            state <= next_state;
        end
    end

    assign in_ready = !out_valid || out_ready;
    assign shift_amt = shift_amt_reg;

endmodule
