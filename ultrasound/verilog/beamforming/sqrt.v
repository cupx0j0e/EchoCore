module sqrt (
    input clk,
    input reset,
    input [31:0] din,
    output reg [15:0] dout,
    output [3:0] cstate
);

reg [31:0] x;
reg [15:0] y_curr, y_next, quotient;
reg [16:0] sum;
reg [3:0] iter, state, next_state;

parameter IDLE = 0, DIVIDE = 1, ADD = 2, SHIFT = 3, UPDATE = 4, CHECK = 5, HALT = 6;

always @(*) begin
    case (state)
        IDLE: next_state = DIVIDE;

        DIVIDE: next_state = ADD;

        ADD: next_state = SHIFT;

        SHIFT: next_state = UPDATE;

        UPDATE: next_state = CHECK;

        CHECK: begin
            if (iter <= 4) begin
                next_state = DIVIDE;
            end else begin
                next_state = HALT;
            end
        end

        HALT: next_state = IDLE;
    endcase
end

always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= IDLE;
        x <= 0;
        y_curr <= 16'd0;
        quotient <= 16'd0;
        sum <= 17'd0;
        iter <= 4'd0;
    end else begin
        case (state)
            IDLE: begin
                x <= din;
                y_curr <= x >> 1;
                iter <= 0;
            end

            DIVIDE: begin
                quotient <= x / y_curr;
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
            end
        endcase

        state <= next_state;
    end
end

assign cstate = state;
    
endmodule