module preproc #(
    parameter DATA_WIDTH = 16,
    parameter NORM_WIDTH = DATA_WIDTH,
    parameter MIN_THRESHOLD = 1
) (
    input clk,
    input reset,
    input in_valid,
    input in_ready,
    input [DATA_WIDTH-1:0] data_in,
    output out_valid,
    output out_ready,
    output [NORM_WIDTH-1:0] data_out
);
    reg [DATA_WIDTH-1:0] sample_reg;
    reg [DATA_WIDTH-1:0] zp_reg;

    always @(posedge clk ) begin
        if (reset) begin
            sample_reg <= 0;
            out_valid <= 0;
        end else begin
            if (in_valid && in_ready) begin
                sample_reg <= data_in;
            end

            zp_reg <= (sample_reg == 0) ? MIN_THRESHOLD : sample_reg;
        end
    end

endmodule