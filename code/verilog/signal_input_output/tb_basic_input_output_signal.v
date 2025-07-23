module tb_basic_input_output_signal;
reg in_sig;
wire out_sig;

// Instantiate the module
basic_input_output_signal uut 
(
.in_sig(in_sig),
.out_sig(out_sig)
);

initial begin

$monitor("Time = %0t | in_sig = %b | out_sig = %b", $time, in_sig, out_sig);

// Test patterns
in_sig = 0; 
#10;
in_sig = 1; 
#10;
in_sig = 0; 
#10;
in_sig = 1; 
#10;
in_sig = 0; 
#10;

$finish;
end
endmodule

