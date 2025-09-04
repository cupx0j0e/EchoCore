module log_frac_calc #(
    parameter DATA_WIDTH = 48,
    parameter FRAC_WIDTH = 16,
    parameter NORM_WIDTH = FRAC_WIDTH + 1
) (
    input  clk,
    input  reset,
    input  in_valid,
    input  out_ready,
    input  [NORM_WIDTH-1:0] data_in,
    output reg out_valid,
    output in_ready,
    output reg [NORM_WIDTH-1:0] log_frac_out
);

    reg [FRAC_WIDTH-1:0] log2_constants [FRAC_WIDTH-1:0];
    reg [NORM_WIDTH-1:0] cordic_x_constants [FRAC_WIDTH-1:0];

    initial begin
        log2_constants[0]  = 16'h8000;
        log2_constants[1]  = 16'h95d3;
        log2_constants[2]  = 16'h515a;
        log2_constants[3]  = 16'h2c71;
        log2_constants[4]  = 16'h166b;
        log2_constants[5]  = 16'h0b6f;
        log2_constants[6]  = 16'h05c0;
        log2_constants[7]  = 16'h02e8;
        log2_constants[8]  = 16'h0175;
        log2_constants[9]  = 16'h00ba;
        log2_constants[10] = 16'h005d;
        log2_constants[11] = 16'h002f;
        log2_constants[12] = 16'h0018;
        log2_constants[13] = 16'h000c;
        log2_constants[14] = 16'h0006;
        log2_constants[15] = 16'h0003;
    end

    initial begin
        cordic_x_constants[0]  = 17'h18000;
        cordic_x_constants[1]  = 17'h1C000;
        cordic_x_constants[2]  = 17'h1A000;
        cordic_x_constants[3]  = 17'h19000;
        cordic_x_constants[4]  = 17'h18800;
        cordic_x_constants[5]  = 17'h18400;
        cordic_x_constants[6]  = 17'h18200;
        cordic_x_constants[7]  = 17'h18100;
        cordic_x_constants[8]  = 17'h18080;
        cordic_x_constants[9]  = 17'h18040;
        cordic_x_constants[10] = 17'h18020;
        cordic_x_constants[11] = 17'h18010;
        cordic_x_constants[12] = 17'h18008;
        cordic_x_constants[13] = 17'h18004;
        cordic_x_constants[14] = 17'h18002;
        cordic_x_constants[15] = 17'h18001;
    end

    reg [NORM_WIDTH-1:0] x_reg;
    reg [NORM_WIDTH-1:0] z_reg;
    reg [4:0] i; 

    localparam IDLE = 0, CALC = 1, DONE = 2;
    reg [1:0] state, next_state;

    always @(*) begin
        case (state)
            IDLE: next_state = (in_valid && in_ready) ? CALC : IDLE;
            CALC: next_state = (i == FRAC_WIDTH) ? DONE : CALC;
            DONE: next_state = (out_ready) ? IDLE : DONE;
            default: next_state = IDLE;
        endcase
    end

    always @(posedge clk) begin
        if (reset) begin
            state        <= IDLE;
            out_valid    <= 0;
            log_frac_out <= 0;
            x_reg        <= 0;
            z_reg        <= 0;
            i            <= 0;
        end else begin
            case (state)
                IDLE: begin
                    if (in_valid && in_ready) begin
                        x_reg     <= data_in;
                        z_reg     <= 0;
                        i         <= 0;
                        out_valid <= 0;
                    end
                end

                CALC: begin
                    if (x_reg >= cordic_x_constants[i]) begin
                        x_reg <= x_reg - (x_reg >> i);
                        z_reg <= z_reg + log2_constants[i];
                    end
                    i <= i + 1;
                end

                DONE: begin
                    log_frac_out <= z_reg;
                    out_valid    <= 1'b1;
                end
            endcase

            state <= next_state;
        end
    end

    assign in_ready = (state == IDLE);

endmodule
