module delay_calc (
    input clk,
    input reset,
    input start,
    input [15:0] x_i,
    input [15:0] x_f,
    input [15:0] z_i,
    input [15:0] z_f,
    output reg [7:0] delay_out,
    output [3:0] debug_state,
    output reg done
);

reg [15:0] dx, dz;
reg [31:0] dx2, dz2;
reg [31:0] sum_sq;
wire [15:0] sqrt_out;

reg enable;
wire [3:0] csv;
wire valid;

reg [3:0] state, next_state;
parameter IDLE = 0, SUB = 1, SQUARE = 2, SUM = 3, SQRT_START = 4, WAIT_SQRT = 5, DONE = 6;

sqrt_nr uut(
    .clk(clk),
    .enable(enable),
    .reset(reset),
    .din(sum_sq),
    .dout(sqrt_out),
    .cstate(csv),
    .valid(valid)
);

always @(*) begin
    case (state)
        IDLE: begin
            next_state = (start == 1) ? SUB : IDLE;
        end

        SUB: begin
            next_state = SQUARE;
        end

        SQUARE: begin
            next_state = SUM;
        end

        SUM: begin
            next_state = SQRT_START;
        end
        
        SQRT_START: begin
            next_state = WAIT_SQRT;
        end

        WAIT_SQRT: begin
            next_state = (valid == 1) ? DONE : WAIT_SQRT;
        end

        DONE: begin
            next_state = IDLE;
        end
    endcase 
end

always @(posedge clk ) begin
    if (reset) begin
        state <= IDLE;
        dx <= 16'b0;
        dz <= 16'b0;
        sum_sq <= 32'b0;
        delay_out <= 8'b0;
        done <= 1'b0;
        enable <= 1'b0;
    end else begin
        case (state)
            IDLE: begin
                done <= 1'b0;
                enable <= 1'b0;
            end

            SUB: begin
                dx <= x_i - x_f;
                dz <= z_i - z_f;
            end

            SQUARE: begin
                dx2 <= dx * dx;
                dz2 <= dz * dz;
            end

            SUM: begin
                sum_sq <= dx2 + dz2;
            end
            
            SQRT_START: begin
                enable <= 1'b1;
            end

            WAIT_SQRT: begin
            end

            DONE: begin
                delay_out <= sqrt_out;
                done <= 1'b1;
            end
        endcase

        state <= next_state;
    end
end

   assign debug_state = state;

endmodule