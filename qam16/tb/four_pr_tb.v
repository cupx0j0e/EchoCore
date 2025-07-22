`timescale 1ps/1ps

module four_pr_tb();
    reg clk, reset;
    wire [3:0] q;

    initial begin
        #0 clk = 1'b1;
        forever begin
            #5 clk = ~clk;
        end
    end

    initial begin
        $dumpfile("./four_pr.vcb");
        $dumpvars(0, four_pr_tb);

        #0 reset = 1'b1;
        #10 reset = 1'b0;

        #90 $finish;
    end

    four_pv uut(
        .clk(clk),
        .reset(reset),
        .q(q)
    );

endmodule