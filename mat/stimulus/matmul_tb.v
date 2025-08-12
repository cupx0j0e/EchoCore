`timescale 1ns / 100ps

//--------------------------------------------------------------------
// Testbench for the 'mul' module
//--------------------------------------------------------------------
module mul_tb;

    // Testbench signals, declared as 'reg' for inputs
    reg clk;
    reg rst;
    reg [31:0] A;
    reg [31:0] B;

    // Output signal, declared as 'wire'
    wire [31:0] C;

    // Instantiate the DUT (Device Under Test)
    // The name of the module being tested is 'mul'
    mat uut (
        .A(A),
        .B(B),
        .clk(clk),
        .rst(rst),
        .C(C)
    );

    //--------------------------------------------------------------------
    // Clock generation
    // Creates a clock with a 10ns period (5ns high, 5ns low)
    //--------------------------------------------------------------------
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    //--------------------------------------------------------------------
    // Test procedure
    // Initializes signals, applies a reset, and provides test vectors.
    //--------------------------------------------------------------------
    initial begin
        // Dump signals to a VCD file for waveform viewing with a tool like GTKWave
        $dumpfile("mul_tb.vcd");
        $dumpvars(0, mul_tb);

        // Initialize all inputs
        rst = 1;
        A = 32'd0;
        B = 32'd0;

        // Apply reset for 20ns
        #20;
        rst = 0;

        //--------------------------------------------------------------------
        // Test 1: Simple multiplication
        // Input A = 5, Input B = 10, Expected C = 50
        //--------------------------------------------------------------------
        #10;
        A = 32'd5;
        B = 32'd10;
        #10;
        // The result will be available a clock cycle or more later, depending on the
        // internal design of the 'matmul' module. This simple test just sends the
        // data and waits.

        //--------------------------------------------------------------------
        // Test 2: Another simple multiplication
        // Input A = 15, Input B = 2, Expected C = 30
        //--------------------------------------------------------------------
        #10;
        A = 32'd15;
        B = 32'd2;
        #10;

        //--------------------------------------------------------------------
        // Test 3: Large numbers
        // A = 10000, B = 50000
        //--------------------------------------------------------------------
        #10;
        A = 32'd10000;
        B = 32'd50000;
        #10;

        //--------------------------------------------------------------------
        // Test 4: Randomized tests
        // Repeat the test with random values to increase coverage
        //--------------------------------------------------------------------
        repeat (5) begin
            #10;
            A = $random;
            B = $random;
            #10;
        end

        // Finish the simulation
        #20;
        $finish;
    end

endmodule