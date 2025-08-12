module matmul_top(
    input clk,
    input rst,
    input [31:0] A,
    input [31:0] B, 
    output [31:0] C
);

matmul uut(
    .clk(clk),
    .rst(rst),
    .A(A),
    .B(B),
    .C(C)
); 

endmodule