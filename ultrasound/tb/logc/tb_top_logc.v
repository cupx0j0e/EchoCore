`timescale 1ps/1ps

module tb_top_logc;

    parameter DATA_WIDTH = 48;
    parameter COMP_WIDTH = DATA_WIDTH / 2;

    reg clk;
    reg reset;
    reg [DATA_WIDTH-1:0] data_in;
    wire [COMP_WIDTH-1:0] comp_out;

    top_logc #(
        .DATA_WIDTH(DATA_WIDTH),
        .COMP_WIDTH(COMP_WIDTH)
    ) dut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .comp_out(comp_out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        data_in = 0;
        #20;
        reset = 0;
        repeat (30) begin
            @(posedge clk);
            data_in = $random;
        end
        #100;
        $finish;
    end

    initial begin
        $dumpfile("top_logc_tb.vcd");
        $dumpvars(0, tb_top_logc);
    end

endmodule
