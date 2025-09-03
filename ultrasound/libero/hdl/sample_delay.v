module sample_delay #(
    parameter DATA_WIDTH = 16,
    parameter MAX_DELAY = 256,
    parameter ADDR_WIDTH = $clog2(MAX_DELAY)
) (
    input clk,
    input reset,
    input enable,
    input [DATA_WIDTH-1:0] din,
    input [ADDR_WIDTH-1:0] delay,
    output [DATA_WIDTH-1:0] dout,
    output valid
);
    
    reg [DATA_WIDTH-1:0] buffer [0:MAX_DELAY-1];
    reg [ADDR_WIDTH-1:0] write_ptr;
    wire [ADDR_WIDTH-1:0] read_ptr;

    always @(posedge clk ) begin
        if (reset) begin
            write_ptr <= 0;
        end else begin
            if (enable) begin
                buffer[write_ptr] <= din;
                write_ptr <= write_ptr + 1;
            end
        end
    end

    assign read_ptr = write_ptr - delay;
    assign dout = (delay == 7'd0) ? din : buffer[read_ptr];
    assign valid = (write_ptr >= delay) ? 1'b1 : 1'b0;

endmodule