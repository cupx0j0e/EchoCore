`timescale 1ps/1ps

module top_ultra_tb ();

parameter SAMPLE_DELAY = 7'd3;
parameter DATA_WIDTH = 16;

reg clk;
reg reset = 1'b1;
wire [DATA_WIDTH-1:0] dout, val;
wire [6:0] delay_v;

initial begin
    #0 clk = 1'b1;
    forever begin
        #5 clk = ~clk;
    end
end

initial begin
    $dumpfile("./top_ultra_tb.vcb");
    $dumpvars(0, top_ultra_tb);

    #5 reset = 1'b0;
    #24500 $finish;
end
    
top_ultra #(SAMPLE_DELAY, DATA_WIDTH) uut(
    .clk(clk),
    .reset(reset),
    .dout(dout),
    .file_v(val),
    .delay_v(delay_v)
);

endmodule