`timescale 1ns / 100ps

module tb_my_design;

    localparam CLK_PERIOD = 10;

    reg clk;
    reg reset;

    wire DOUT_VALID;
    wire FIRO_VALID;
    wire FIRO_VALID_0;
    wire [64:0] combined_output;

    my_design uut (
        .clk             (clk),
        .reset           (reset),
        .DOUT_VALID      (DOUT_VALID),
        .FIRO_VALID      (FIRO_VALID),
        .FIRO_VALID_0    (FIRO_VALID_0),
        .combined_output (combined_output)
    );

    always #((CLK_PERIOD)/2) clk = ~clk;

    initial begin

        clk = 1'b0;
        reset = 1'b1;

        #(CLK_PERIOD * 5);
        reset = 1'b0;

        #(CLK_PERIOD * 500);

        $finish;
    end

    initial begin
        $monitor("Time=%0t | rst=%b | four_pr=%b | symmap_i=%d | symmap_q=%d | up_i=%d | up_q=%d | fir_i=%d | fir_q=%d | cordic_x=%d | cordic_y=%d | mod_i=%d | mod_q=%d | combined=%d",
                 $time,
                 reset,
                 uut.four_pr_0.q,
                 uut.symmap_0.Iout,
                 uut.symmap_0.Qout,
                 uut.upsampler_0.iup,
                 uut.upsampler_0.qup,
                 uut.COREFIR_PF_C0_1.FIRO,
                 uut.COREFIR_PF_C0_0.FIRO,
                 uut.CORECORDIC_C0_0.DOUT_X,
                 uut.CORECORDIC_C0_0.DOUT_Y,
                 uut.modulator_0.modulated_i,
                 uut.modulator_0.modulated_q,
                 uut.combined_output);
    end

endmodule
