module log_frac_calc #(
    parameter DATA_WIDTH = 48,
    parameter FRAC_WIDTH = 16,
    parameter NORM_WIDTH = FRAC_WIDTH + 1
) (
    input clk,
    input reset,
    input in_valid,
    input out_ready,
    input [NORM_WIDTH-1:0] data_in,      
    output reg out_valid,
    output in_ready,
    output reg [NORM_WIDTH-1:0] log_frac_out
);

    assign in_ready = (state == IDLE);

    localparam [NORM_WIDTH-1:0] ONE = {1'b1, {FRAC_WIDTH{1'b0}}};

    reg [NORM_WIDTH-1:0] x, y;
    reg [4:0] iter;
    reg [4:0] cycle_count;

    localparam IDLE    = 0,
               LOAD    = 1,
               ITERATE = 2,
               DONE    = 3;
    reg [1:0] state, next_state;

    reg [NORM_WIDTH-1:0] log_p_table [1:FRAC_WIDTH];
    initial begin
        log_p_table[1]  = 17'h095C0; log_p_table[2]  = 17'h05269;
        log_p_table[3]  = 17'h02B80; log_p_table[4]  = 17'h01663;
        log_p_table[5]  = 17'h00B5D; log_p_table[6]  = 17'h005B9;
        log_p_table[7]  = 17'h002E0; log_p_table[8]  = 17'h00171;
        log_p_table[9]  = 17'h000B9; log_p_table[10] = 17'h0005C;
        log_p_table[11] = 17'h0002E; log_p_table[12] = 17'h00017;
        log_p_table[13] = 17'h0000B; log_p_table[14] = 17'h00006;
        log_p_table[15] = 17'h00003; log_p_table[16] = 17'h00001;
    end
    
    reg [NORM_WIDTH-1:0] log_m_table [1:FRAC_WIDTH];
    initial begin
        log_m_table[1]  = 17'h10000; log_m_table[2]  = 17'h06A0A;
        log_m_table[3]  = 17'h03144; log_m_table[4]  = 17'h0174F;
        log_m_table[5]  = 17'h00B89; log_m_table[6]  = 17'h005C1;
        log_m_table[7]  = 17'h002E2; log_m_table[8]  = 17'h00171;
        log_m_table[9]  = 17'h000B9; log_m_table[10] = 17'h0005C;
        log_m_table[11] = 17'h0002E; log_m_table[12] = 17'h00017;
        log_m_table[13] = 17'h0000B; log_m_table[14] = 17'h00006;
        log_m_table[15] = 17'h00003; log_m_table[16] = 17'h00001;
    end

    localparam TOTAL_CYCLES = FRAC_WIDTH + 1;

    always @(*) begin
        case(state)
            IDLE:    next_state = (in_valid) ? LOAD : IDLE;
            LOAD:    next_state = ITERATE;
            ITERATE: next_state = (cycle_count == TOTAL_CYCLES) ? DONE : ITERATE;
            DONE:    next_state = (out_ready) ? IDLE : DONE;
            default: next_state = IDLE;
        endcase
    end

    always @(posedge clk) begin
        if (reset) begin
            state <= IDLE;
            out_valid <= 1'b0;
            iter <= 0;
            cycle_count <= 0;
            x <= 0;
            y <= 0;
            log_frac_out <= 0;
        end else begin
            state <= next_state;

            case(state)
                IDLE: begin
                    out_valid <= 1'b0;
                end

                LOAD: begin
                    x <= data_in;
                    y <= 0;
                    iter <= 1;
                    cycle_count <= 1;
                    out_valid <= 1'b0;
                end

                ITERATE: begin
                    if (cycle_count <= TOTAL_CYCLES) begin
                        if (x >= ONE) begin
                            x <= x - (x >>> iter);
                            y <= y + log_m_table[iter];
                        end else begin
                            x <= x + (x >>> iter);
                            y <= y - log_p_table[iter];
                        end
                        
                        cycle_count <= cycle_count + 1;
                        if (iter == 4 && cycle_count == 4) begin
                            iter <= 4; 
                        end else begin
                            iter <= iter + 1;
                        end
                    end
                end

                DONE: begin
                    log_frac_out <= y;
                    out_valid <= 1'b1;
                end
            endcase
        end
    end

endmodule