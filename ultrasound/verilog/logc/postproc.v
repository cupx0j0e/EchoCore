module postproc #(
    parameter LOG_WIDTH = 16,
    parameter COMP_WIDTH = LOG_WIDTH / 2
) (
    input clk,
    input reset,
    input in_valid,
    input out_ready,
    input [LOG_WIDTH-1:0] log_in,
    output reg out_valid,
    output reg in_ready,
    output reg [COMP_WIDTH-1:0] comp_out
);

    localparam IDLE = 0, COMPRESS = 1, SEND = 2;
    reg [1:0] state, next_state;

    reg [LOG_WIDTH-1:0] log_reg;
    reg [COMP_WIDTH-1:0] comp_result;

    always @(*) begin
        case (state)
            IDLE: next_state = (in_valid && in_ready) ? COMPRESS : IDLE;
            COMPRESS: next_state = SEND;
            SEND: next_state = (out_ready && out_valid) ? IDLE : SEND;
            default: next_state = IDLE;
        endcase
    end

    always @(posedge clk) begin
        if (reset) begin
            log_reg <= 0;
            comp_result <= 0;
            out_valid <= 0;
            in_ready <= 1;
            state <= IDLE;
        end else begin
            case (state)
                IDLE: begin
                    in_ready <= 1;
                    out_valid <= 0;
                    if (in_valid && in_ready) begin
                        log_reg <= log_in;
                        in_ready <= 0;
                    end
                end
                COMPRESS: begin
                    comp_result <= log_reg[LOG_WIDTH-1 -: COMP_WIDTH];
                end
                SEND: begin
                    comp_out <= comp_result;
                    out_valid <= 1;
                    if (out_ready) begin
                        out_valid <= 0;
                        in_ready <= 1;
                    end
                end
            endcase
            state <= next_state;
        end
    end

endmodule
