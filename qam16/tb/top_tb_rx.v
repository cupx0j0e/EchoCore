`timescale 1ps/1ps

module top_tb_rx ();
    reg clk, reset;
    wire [3:0] data;
    wire signed [3:0] i_up_v, q_up_v;
    wire [3:0] counter_v;

    initial begin
        #0 clk = 1'b1;
        
        forever begin
            #5 clk = ~clk;
        end
    end

    initial begin
        $dumpfile("./top_tb_rx.vcb");
        $dumpvars(0, top_tb_rx);

        #0 reset = 1'b1;
        #10 reset = 1'b0;

        #1000 $finish;
    end

    top_rx uut(
        .clk(clk),
        .reset(reset),
        .i_up_v(i_up_v),
        .q_up_v(q_up_v),
        .og_data(data),
        .counter_v(counter_v)
    );

endmodule