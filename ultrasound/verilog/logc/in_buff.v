module in_buff # (
  parameter DATA_WIDTH=16,
  parameter DEPTH=64,
  parameter ADDR_WIDTH=$clog2(DEPTH)
  )(
  input clk,
  input reset,
  input in_valid,
  input [DATA_WIDTH-1:0] data_in,
  input ready_out,
  output in_ready,
  output out_valid,
  output [DATA_WIDTH-1:0] data_out,
  output reg [ADDR_WIDTH-1:0] fifo_count,
  output almost_full,
  output almost_empty,
  output overflow,
  output underflow
);

  reg [ADDR_WIDTH-1:0] wr_ptr = 0;
  reg [ADDR_WIDTH-1:0] rd_ptr = 0;
  reg overflow_flag = 0;
  reg underflow_flag = 0;

  reg [DATA_WIDTH:0] mem [0:DEPTH-1] = 0;

  always @(posedge clk) begin
    if (reset) begin
      fifo_count <= 0;
      wr_ptr <= 0;
      rd_ptr <= 0;
      mem <= 0;
    end else begin
      if (in_valid && in_ready) begin
        mem[wr_ptr] <= data_in; 
      end
    end
  end
endmodule
