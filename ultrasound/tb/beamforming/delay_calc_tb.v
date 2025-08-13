`timescale 1ps/1ps

module delay_calc_tb();
    reg clk, reset, start;
    reg [15:0] xi, zi, xf, zf;
    wire [7:0] delay_out;
    wire [3:0] debug;
    wire done;

    initial begin
        #0 clk = 1'b0;

        forever begin
            #5 clk = ~clk;
        end
    end

    initial begin
        $dumpfile("./delay_calc_tb.vcb");
        $dumpvars(0, delay_calc_tb);

        #0 begin
            xi = 16'd12;
            xf = 16'd6;
            zi = 16'd12;
            zf = 16'd4;

            reset = 1'b1;
            start = 1'b0;
        end

        #10 reset = 1'b0;
        #10 start = 1'b1;

        #3000 $finish;
    end

    delay_calc uut(
        .clk(clk),
        .reset(reset),
        .start(start),
        .x_i(xi),
        .x_f(xf),
        .z_i(zi),
        .z_f(zf),
        .delay_out(delay_out),
        .done(done),
        .debug_state(debug)
    );

endmodule

