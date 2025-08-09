`timescale 1ps/1ps

module upsamp_tb ();
    reg clk, reset;
    wire [3:0] q, count;
    wire signed [3:0] i_out;
    wire signed [3:0] q_out;

    wire signed [3:0] i_up;
    wire signed [3:0] q_up;

    initial begin
        #0 clk = 1'b1;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("./upsamp.vcb");
        $dumpvars(0, upsamp_tb);

        #0 reset = 1'b1;
        #10 reset = 1'b0;

        #1000 $finish;
    end

    four_pr inst1(
        .clk(clk),
        .reset(reset),
        .q(q),
        .cnt(count)
    );

    symmap inst2(
        .data(q),
        .Iout(i_out),
        .Qout(q_out)
    );

    upsampler uut(
        .clk(clk),
        .count(count),
        .iout(i_out),
        .qout(q_out),
        .iup(i_up),
        .qup(q_up)
    );

endmodule