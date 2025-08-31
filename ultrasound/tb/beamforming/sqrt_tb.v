`timescale 1ps/1ps

module sqrt_tb ();
    reg clk, reset, enable; 
    wire valid, valid_nr;
    reg [31:0] din = 32'd0;
    wire [15:0] dout, dout_nr;
    wire [3:0] cstate, cstate_nr;

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
        #0 enable = 1'b1;
        #10 reset = 1'b0;

        #10000 $finish;
    end

    sqrt_nr sqrt_nr_inst(
        .clk(clk),
        .enable(enable),
        .reset(reset),
        .din(din),
        .dout(dout_nr),
        .cstate(cstate_nr),
        .valid(valid_nr)
    );

    sqrt sqrt_inst(
        .clk(clk),
        .enable(enable),
        .reset(reset),
        .din(din),
        .dout(dout),
        .cstate(cstate),
        .valid(valid)
    );

endmodule