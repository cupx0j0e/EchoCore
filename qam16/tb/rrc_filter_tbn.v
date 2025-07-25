`timescale 1ps/1ps

module rrc_filter_tbn ();
    reg clk, reset;
    wire [3:0] data, count;
    wire signed [3:0] i_out;
    wire signed [3:0] q_out;

    wire signed [3:0] i_up;
    wire signed [3:0] q_up;

    wire signed [15:0] i_f;
    wire signed [15:0] q_f;

    parameter TAPS = 11;

    initial begin
        #0 clk = 1'b1;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("./rrc_filter.vcb");
        $dumpvars(0, rrc_filter_tbn);

        #0 reset = 1'b1;
        #10 reset = 1'b0;

        #1000 $finish;
    end

    four_pr inst1(
        .clk(clk),
        .reset(reset),
        .data(data),
        .cnt(count)
    );

    symmap inst2(
        .data(data),
        .Iout(i_out),
        .Qout(q_out)
    );

    upsampler inst3(
        .clk(clk),
        .reset(reset),
        .count(count),
        .iout(i_out),
        .qout(q_out),
        .iup(i_up),
        .qup(q_up)
    );

    rrc_filter #(TAPS) uut1 (
        .clk(clk),
        .rst(reset),
        .din(i_up),
        .dout(i_f)
    );

    rrc_filter #(TAPS) uut2 (
        .clk(clk),
        .rst(reset),
        .din(q_up),
        .dout(q_f)
    );

endmodule