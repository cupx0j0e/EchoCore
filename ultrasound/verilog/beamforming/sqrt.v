module sqrt (
    input clk,
    input enable,
    input reset,
    input [31:0] din,
    output reg [15:0] dout,
    output [3:0] cstate,
    output reg valid
);

reg [15:0] y_curr, y_next, quotient;
reg [16:0] sum;
reg [3:0] iter, state, next_state;

parameter IDLE = 0, DIVIDE = 1, ADD = 2, SHIFT = 3, UPDATE = 4, CHECK = 5, HALT = 6;

always @(*) begin
    case (state)
        IDLE: begin
            next_state = DIVIDE;
        end

        DIVIDE: begin
            next_state = ADD;
        end

        ADD: begin
            next_state = SHIFT;
        end

        SHIFT: begin
            next_state = UPDATE;
        end

        UPDATE: begin
            next_state = CHECK;
        end

        CHECK: begin
            if (iter <= 10) begin
                next_state = DIVIDE;
            end else begin
                next_state = HALT;
            end
        end

        HALT: begin
        end
    endcase
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= IDLE;
        y_curr <= 16'd0;
        quotient <= 16'd0;
        sum <= 17'd0;
        iter <= 4'd0;
        valid <= 1'b0;
    end else if (enable) begin
        case (state)
            IDLE: begin
                valid <= 1'b0;
                y_curr <= din >> 1;
                iter <= 0;
            end

            DIVIDE: begin
                quotient <= din / y_curr;
            end

            ADD: begin
                sum <= y_curr + quotient;
            end

            SHIFT: begin
                y_next <= sum >> 1;
            end

            UPDATE: begin
                y_curr <= y_next;
                iter <= iter + 1;
            end

            HALT: begin
                dout <= y_curr;
                valid <= 1'b1;
            end
        endcase

        state <= next_state;
    end
end

assign cstate = state;
    
endmodule