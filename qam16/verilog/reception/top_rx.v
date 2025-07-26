module top_rx (
    input clk,
    input reset,
    output signed [3:0] i_up_v,
    output signed [3:0] q_up_v,
    output [3:0] counter_v,
    output [3:0] og_data
);

    wire [3:0] data, count;
    wire signed [3:0] i_out;
    wire signed [3:0] q_out;

    wire signed [3:0] i_up;
    wire signed [3:0] q_up;

    wire signed [3:0] i_down;
    wire signed [3:0] q_down;

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

    downsampler inst4(
        .clk(clk),
        .count(count),
        .enable(~reset),
        .data_up(i_up),
        .data_down(i_down)
    );

    downsampler inst5(
        .clk(clk),
        .count(count),
        .enable(~reset),
        .data_up(q_up),
        .data_down(q_down)
    );

    desymmap uut(
        .i_down(i_down),
        .q_down(q_down),
        .data(og_data)
    );

    assign i_up_v = i_up;
    assign q_up_v = q_up;
    assign counter_v = count;

endmodule