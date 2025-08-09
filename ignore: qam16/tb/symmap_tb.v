`timescale 1ps/1ps

module symmap_tb ();
    reg clk, reset;
    wire [3:0] q;
    wire signed [3:0] i_out;
    wire signed [3:0] q_out;

    initial begin
        #0 clk = 1'b1;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("./symmap.vcb");
        $dumpvars(0, symmap_tb);

        #0 reset = 1'b1;
        #10 reset = 1'b0;

        #90 $finish;
    end

    four_pr puut(
        .clk(clk),
        .reset(reset),
        .q(q)
    );

    symmap uut(
        .data(q),
        .I_out(i_out),
        .Q_out(q_out)
    );

endmodule