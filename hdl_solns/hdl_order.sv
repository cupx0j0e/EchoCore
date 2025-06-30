module mat_mul (
    input clk,
    input rst,
    input  [7:0] A [0:3], // A11, A12, A21, A22
    input  [7:0] B [0:3], // B11, B12, B21, B22
    output reg [7:0] C [0:3] // C11, C12, C21, C22
);

    // Internal registers for intermediate 16-bit values
  reg [15: 0] temp0, temp1, temp2, temp3;
  reg [15: 0] temp4, temp5, temp6, temp7;
  reg [15: 0] sum0, sum1, sum2, sum3;

  always @(posedge clk) begin
    if (rst) begin
      temp0 <= 0;
      temp1 <= 0;
      temp2 <= 0;
      temp3 <= 0;
      temp4 <= 0;
      temp5 <= 0;
      temp6 <= 0;
      temp7 <= 0;
    end else begin
      temp0 = A[0] * B[0];
      temp1 = A[1] * B[2];
      temp2 = A[0] * B[1];
      temp3 = A[1] * B[3];
      temp4 = A[2] * B[0];
      temp5 = A[3] * B[2];
      temp6 = A[2] * B[1];
      temp7 = A[3] * B[3];
    end
  end
  
  always @(posedge clk) begin
    if (rst) begin
      C[0] <= 0;
      C[1] <= 0;
      C[2] <= 0;
      C[3] <= 0;
    end else begin
      sum0 <= (temp0 + temp1);
      sum1 <= (temp2 + temp3);
      sum2 <= (temp4 + temp5);
      sum3 <= (temp6 + temp7);
      
      C[0] <= sum0[7: 0];
      C[1] <= sum1[7: 0];
      C[2] <= sum2[7: 0];
      C[3] <= sum3[7: 0];
    end
  end

endmodule

