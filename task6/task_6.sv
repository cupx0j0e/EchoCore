module mat_mul (
    input  clk,
    input  rst,
    input  [7:0] A [0:3],
    input  [7:0] B [0:3],
    output [7:0] C [0:3]
);

    assign C[0] = A[0] * B[0] + A[1] * B[2];
    assign C[1] = A[0] * B[1] + A[1] * B[3];
    assign C[2] = A[2] * B[0] + A[3] * B[2];
    assign C[3] = A[2] * B[1] + A[3] * B[3];

endmodule

