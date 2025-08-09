`timescale 1ns / 1ps

module tb_top_tx;

  reg clk = 0;
  reg reset = 1;

  wire signed [15:0] dout_i;
  wire signed [15:0] dout_q;

  top_tx uut (
    .clk(clk),
    .reset(reset),
    .dout_i(dout_i),
    .dout_q(dout_q)
  );

  always #5 clk = ~clk;

initial begin
  $display("Starting simulation...");

  reset = 1;
  #100;
  reset = 0;

  #1000;

  $display("Simulation finished.");
  $stop;
end

endmodule

