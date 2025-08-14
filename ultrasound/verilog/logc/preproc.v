module preproc #(
    parameter DATA_WIDTH = 16,
    parameter NORM_WIDTH = DATA_WIDTH,
    parameter MIN_THRESHOLD = 1,
    parameter SHIFT_WIDTH = $clog2(DATA_WIDTH)
) (
    input clk,
    input reset,
    input in_valid,
    input out_ready,
    input [DATA_WIDTH-1:0] data_in,
    output reg out_valid,
    output in_ready,
    output reg [NORM_WIDTH-1:0] data_out
);
    reg [DATA_WIDTH-1:0] sample_reg;
    reg [DATA_WIDTH-1:0] zp_reg;
    reg [SHIFT_WIDTH-1:0] msb_index;
    reg [SHIFT_WIDTH-1:0] shift_amt;
    integer i;

    localparam IDLE = 0, PROCESS = 1, SEND = 2;
    reg [1:0] state, next_state;

    always @(*) begin
        case(state)
            IDLE:    next_state = (in_ready && in_valid) ? PROCESS : IDLE;
            PROCESS: next_state = SEND;
            SEND:    next_state = (out_ready) ? IDLE : SEND;
        endcase
    end

    always @(posedge clk) begin
        if (reset) begin
            sample_reg <= 0;
            out_valid <= 0;
            state <= IDLE;
        end else begin
            case(state)
                IDLE: begin
                    sample_reg <= data_in;
                end

                PROCESS: begin
                    zp_reg <= (sample_reg == 0) ? MIN_THRESHOLD : sample_reg;

                    for (i = DATA_WIDTH-1; i >= 0; i = i - 1) begin
                        if ((sample_reg == 0 ? MIN_THRESHOLD : sample_reg)[i]) begin
                            msb_index <= i[SHIFT_WIDTH-1:0];
                            break;
                        end
                    end

                    data_out <= zp_reg << shift_amt;
                    shift_amt <= (DATA_WIDTH - 1) - msb_index;

                    out_valid <= 1'b1;
                end

                SEND: begin
                    // if (out_ready) begin
                    //     data_out <= sample_reg << shift_amt;
                    // end
                    out_valid <= 1'b0;
                end
            endcase

            state <= next_state;
        end
    end

    assign in_ready = !out_valid || out_ready;

endmodule
