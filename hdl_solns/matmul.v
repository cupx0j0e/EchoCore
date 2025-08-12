module matmul (
    input clk,
    input rst,
    input [31:0] A, // A11, A12, A21, A22
    input [31:0] B, // B11, B12, B21, B22
    output reg [31:0] C // C11, C12, C21, C22
);

    // Internal registers for intermediate 16-bit values
  reg [15: 0] temp0, temp1, temp2, temp3;
  reg [15: 0] temp4, temp5, temp6, temp7;
  reg [15: 0] sum0, sum1, sum2, sum3;

  always @(posedge clk) begin
    if (rst) begin
      temp0 <= 16'd0;
      temp1 <= 16'd0;
      temp2 <= 16'd0;
      temp3 <= 16'd0;
      temp4 <= 16'd0;
      temp5 <= 16'd0;
      temp6 <= 16'd0;
      temp7 <= 16'd0;
      C <= 32'd0;
    end else begin
      temp0 <= A[7:0] * B[7:0];
      temp1 <= A[15:8] * B[23:16];
      temp2 <= A[7:0] * B[15:8];
      temp3 <= A[15:8] * B[31:24];
      temp4 <= A[23:16] * B[7:0];
      temp5 <= A[31:24] * B[23:16];
      temp6 <= A[23:16] * B[15:8];
      temp7 <= A[31:24] * B[31:24];
    end
  end
  
  always @(*) begin
      sum0 = (temp0 + temp1);
      sum1 = (temp2 + temp3);
      sum2 = (temp4 + temp5);
      sum3 = (temp6 + temp7);
      
      C[7:0] = sum0[7: 0];
      C[15:8] = sum1[7: 0];
      C[23:16] = sum2[7: 0];
      C[31:24] = sum3[7: 0];
  end

endmodule

