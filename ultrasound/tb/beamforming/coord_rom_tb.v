`timescale 1ps/1ps

module coord_rom_tb();
    reg clk;
    reg [3:0] addr;
    wire [15:0] xout, zout;

    initial begin
        #0 clk = 1'b0;
        forever begin
            #5 clk = ~clk;
        end
    end

    initial begin
        $dumpfile("./coord_rom_tb.vcb");
        $dumpvars(0, coord_rom_tb);

        #0 addr = 4'd4;
        #10 addr = 4'd10;
        #20 addr = 4'd8;

        #100 $finish;
    end

    coord_rom #(16) uut(
        .clk(clk),
        .addr(addr),
        .x_out(xout),
        .z_out(zout)
    );
endmodule