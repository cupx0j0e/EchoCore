module calc_frac #(
    parameter DATA_WIDTH = 16,
    parameter FRAC_WIDTH = 8
)(
    input clk,
    input reset,
    input in_valid,
    input [DATA_WIDTH-1:0] in_data,
    output reg out_valid,
    output reg [FRAC_WIDTH-1:0] out_frac
);

    // Internal registers
    reg [DATA_WIDTH-1:0] rem;  // remainder
    reg [FRAC_WIDTH-1:0] frac;
    reg [4:0] cycle_cnt;       // for multi-cycle shifts
    reg busy;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            out_valid <= 0;
            out_frac <= 0;
            rem <= 0;
            frac <= 0;
            cycle_cnt <= 0;
            busy <= 0;
        end else begin
            if (in_valid && !busy) begin
                // start calculation
                rem <= in_data;
                frac <= 0;
                cycle_cnt <= FRAC_WIDTH;
                busy <= 1;
                out_valid <= 0;
            end else if (busy) begin
                if (cycle_cnt != 0) begin
                    rem <= rem << 1;               // shift remainder
                    frac <= {frac[FRAC_WIDTH-2:0], rem[DATA_WIDTH-1]}; // extract MSB
                    cycle_cnt <= cycle_cnt - 1;
                end else begin
                    out_frac <= frac;
                    out_valid <= 1;
                    busy <= 0;
                end
            end else begin
                out_valid <= 0;
            end
        end
    end
endmodule
