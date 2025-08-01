`timescale 1ps/1ps

module sqrt_tb ();
    reg clk, reset;
    reg [31:0] din = 32'd999;
    wire [15:0] dout;
    wire [3:0] cstate;

    initial begin
        #0 clk = 1'b1;

        forever begin
            #5 clk = ~clk;
        end
    end

    initial begin
        $dumpfile("./sqrt_tb.vcb");
        $dumpvars(0, sqrt_tb);

        #0 reset = 1'b1;
        #10 reset = 1'b0;

        #1000 $finish;
    end

    sqrt uut(
        .clk(clk),
        .reset(reset),
        .din(din),
        .dout(dout),
        .cstate(cstate)
    );
endmodule