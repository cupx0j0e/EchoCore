`timescale 1ps/1ps

module sample_delay_tb ();

reg clk, reset;
reg [15:0] din;
reg [7:0] delay;

wire valid;
wire [15:0] dout;

initial begin
    #0 clk = 1'b1;
    forever begin
        #5 clk = ~clk;
    end
end

initial begin
    $dumpfile("./sample_delay_tb.vcb");
    $dumpvars(0, sample_delay_tb);

    #0 reset = 1'b1;
    #0 delay = 7'd3;
    #0 din = 15'd200;

    #10 reset = 1'b0;

    #1000 $finish;
end
    
sample_delay #(16, 256) uut(
    .clk(clk),
    .reset(reset),
    .din(din),
    .delay(delay),
    .dout(dout),
    .valid(valid)  
);

endmodule