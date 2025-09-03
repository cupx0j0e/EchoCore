module sqrt (
    input clk,
    input enable,
    input reset,
    input [31:0] din,
    output reg [15:0] dout,
    output [3:0] cstate,
    output reg valid
);

parameter IDLE = 0, COMPUTE = 1, HALT = 2;

reg [31:0] a;
reg [15:0] q;
reg [17:0] left, right, r;
reg [4:0] i;

reg [1:0] state, next_state;

always @(*) begin
    case(state)
    IDLE: next_state = enable ? COMPUTE : IDLE;
    COMPUTE: next_state = (i == 5'd15) ? HALT : COMPUTE;
    HALT: next_state = enable ? IDLE : HALT;
    default: next_state = IDLE;
    endcase
end

always @(posedge clk ) begin
    if (reset) begin
        state <= IDLE;
        valid <= 1'b0;
        left <= 0;
        right <= 0;
        r <= 0;
        q <= 0;
        a <= 0;
        dout <= 0;
        i <= 0;
    end else begin
        case(state)
        IDLE: begin
            valid <= 1'b0;
            left <= 0;
            right <= 0;
            r <= 0;
            q <= 0;
            a <= din;
            i <= 0;
        end

        COMPUTE: begin
            right = {q,r[17], 1'b1};
            left = {r[15:0], a[31:30]};
            a = {a[29:0], 2'b00};

            if (r[17] == 1)
                r = left + right;
            else
                r = left - right;

            q = {q[14:0], !r[17]};      

            i <= i + 1;
        end

        HALT: begin
            dout <= q;
            valid <= 1'b1;
        end
        endcase

        state <= next_state;
    end
end

assign cstate = state;

endmodule