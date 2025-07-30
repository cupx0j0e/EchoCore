module sample_delay #(
    parameter DATA_WIDTH = 16,
    parameter MAX_DELAY = 256
) (
    input clk,
    input reset,
    input [DATA_WIDTH-1:0] din,
    input [$clog2(MAX_DELAY)-1:0] delay,
    output reg [DATA_WIDTH-1:0] dout
);

reg [DATA_WIDTH-1:0] buffer [0:MAX_DELAY-1];
reg [$clog2(MAX_DELAY)-1:0] write_ptr = 0;
reg [$clog2(MAX_DELAY)-1:0] delayed_read_ptr;
reg [$clog2(MAX_DELAY)-1:0] read_ptr = 0;

always @(posedge clk ) begin
    if (reset) begin
        write_ptr <= 0;
        read_ptr <= 0;
    end else begin
        buffer[write_ptr] <= din;
        write_ptr <= write_ptr + 1;

        read_ptr <= write_ptr - delay + 1;  
        delayed_read_ptr <= read_ptr;
        dout <= buffer[delayed_read_ptr];
    end
end

always @(*) begin
    if (delay == 0) begin
        dout = din;
    end else begin
        dout = buffer[read_ptr];
    end
end
    
endmodule