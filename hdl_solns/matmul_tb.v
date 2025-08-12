`timescale 1ps/1ps

module matmul_tb;

    // Testbench signals
    reg clk;
    reg rst;
    reg [31:0] A;
    reg [31:0] B;
    wire [31:0] C;

    // Instantiate the DUT (Device Under Test)
    matmul_top uut (
        .clk(clk),
        .rst(rst),
        .A(A),
        .B(B),
        .C(C)
    );

    // Clock generation (10ns period)
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Test procedure
    initial begin
        // Set up GTKWave dump
        $dumpfile("matmul_tb.vcd");
        $dumpvars(0, matmul_tb);

        // Initialize
        rst = 1;
        A = 0;
        B = 0;

        #20; // Hold reset
        rst = 0;

        // Test 1: Multiply identity matrices
        // A = [1 0; 0 1], B = [1 0; 0 1]
        A = {8'd0, 8'd1, 8'd0, 8'd1}; // A11=1, A12=0, A21=0, A22=1
        B = {8'd0, 8'd1, 8'd0, 8'd1}; // B11=1, B12=0, B21=0, B22=1
        #20;

        // Test 2: Simple 2x2 multiply
        // A = [1 2; 3 4], B = [5 6; 7 8]
        A = {8'd4, 8'd3, 8'd2, 8'd1}; // packed as A22,A21,A12,A11
        B = {8'd8, 8'd7, 8'd6, 8'd5};
        #20;

        // Test 3: Another set
        // A = [2 3; 4 5], B = [6 7; 8 9]
        A = {8'd5, 8'd4, 8'd3, 8'd2};
        B = {8'd9, 8'd8, 8'd7, 8'd6};
        #20;

        // Randomized tests
        repeat (5) begin
            A = $random;
            B = $random;
            #20;
        end

        $finish;
    end

endmodule
