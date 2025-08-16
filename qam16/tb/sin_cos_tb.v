module sin_cos_tb();
    reg clk, reset, start;
    wire [15:0] sin;
    wire [15:0] cos;

    initial begin
        #0 clk = 0;
        forever begin
           #5 clk = ~clk; 
        end
    end

    initial begin
        $dumpfile("./sin_cos_tb.vcb");
        $dumpvars(0, sin_cos_tb);

        #0 reset = 1;
        #0 start = 1;
        #10 reset = 0;

        #100000 $finish;
    end

    sin_cos uut(
        .clk(clk),
        .rst(reset),
        .start(start),
        .sin(sin),
        .cos(cos)
    );

endmodule