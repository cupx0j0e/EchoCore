module delay_line_signext #(
    parameter IN_WIDTH  = 18,   
    parameter OUT_WIDTH = 48,   
    parameter LATENCY   = 9     
)(
    input              clk,   
    input              rstn,   
    input  signed [IN_WIDTH-1:0] din,  
    output signed [OUT_WIDTH-1:0] dout  
);

    wire signed [OUT_WIDTH-1:0] din_ext = {{OUT_WIDTH - IN_WIDTH{din[IN_WIDTH-1]}}, din};

    reg signed [OUT_WIDTH-1:0] shift_reg [0:LATENCY-1];
    integer i;

    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
           
            for (i = 0; i < LATENCY; i = i + 1)
                shift_reg[i] <= {OUT_WIDTH{1'b0}};
        end else begin
            shift_reg[0] <= din_ext;
            for (i = 1; i < LATENCY; i = i + 1)
                shift_reg[i] <= shift_reg[i-1];
        end
    end

    assign dout = shift_reg[LATENCY-1];

endmodule
