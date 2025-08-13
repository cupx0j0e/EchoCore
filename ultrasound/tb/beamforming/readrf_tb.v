`timescale 1ps/1ps

module readrf_tb ();
    reg clk, reset;
    reg inc_count;

    wire [15:0] val1;
    wire [15:0] val2;
    wire [15:0] val3;
    wire [15:0] val4;
    
    initial begin
        #0 clk = 1'b0;
        
        forever begin
            #5 clk = ~clk;
        end
    end

    initial begin
        $dumpfile("./readrf_vals.vcb");
        $dumpvars(0, readrf_tb);

        #0 inc_count = 1'b0;
        #0 reset = 1'b1;

        #10 reset = 1'b0;
        #15 inc_count = 1'b1;
        #10 inc_count = 1'b0;
        #20 inc_count = 1'b1;
        #10 inc_count = 1'b0;

        #100 $finish;
    end

    readrf_vals uut (
        .clk(clk),
        .reset(reset),
        .inc_count(inc_count),
        .val1(val1),
        .val2(val2),
        .val3(val3),
        .val4(val4),
    );
    
endmodule