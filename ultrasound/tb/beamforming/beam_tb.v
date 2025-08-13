`timescale 1ps/1ps

module beam_tb();
    reg clk, reset, start;
    wire valid;
    wire [17:0] bfout;
    wire [1:0] debug_state;

    initial begin
        #0 clk = 1'b0;

        forever begin
            #5 clk = ~clk;
        end
    end

    initial begin
        $dumpfile("./beam_tb.vcb");
        $dumpvars(0, beam_tb);

        #0 reset = 1'b1;
        #0 start  = 1'b0;

        #10 reset = 1'b0;
        #10 start = 1'b1;

        #5000 $finish;
    end

    top_bf #(16, 4, 256) top_mod(
        .clk(clk),
        .reset(reset),
        .start(start),
        .x_f(16'b0),
        .z_f(16'b0),
        .beamformed_output(bfout),
        .debug_state(debug_state)
    );

endmodule