`timescale 1ps/1ps

module top_tb_tx ();
    reg clk, reset;

    wire signed [15:0] i_f;
    wire signed [15:0] q_f;

    parameter TAPS = 11;

    initial begin
        #0 clk = 1'b1;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("./top_tb_tx.vcb");
        $dumpvars(0, top_tb_tx);

        #0 reset = 1'b1;
        #10 reset = 1'b0;

        #1000 $finish;
    end

    top_tx uut(
        .clk(clk),
        .reset(reset),
        .dout_i(i_f),
        .dout_q(q_f)
    );

endmodule