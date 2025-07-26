module top_tx (
    input clk,
    input reset,
    output signed [15:0] dout_i,
    output signed [15:0] dout_q
);

    wire [3:0] data, count;
    wire signed [3:0] i_out;
    wire signed [3:0] q_out;

    wire signed [3:0] i_up;
    wire signed [3:0] q_up;

    parameter TAPS = 11;

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
        .dout(dout_i)
    );

    rrc_filter #(TAPS) uut2 (
        .clk(clk),
        .rst(reset),
        .din(q_up),
        .dout(dout_q)
    );

endmodule