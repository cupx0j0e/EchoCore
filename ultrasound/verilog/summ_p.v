module summ_p #(
    parameter DATA_WIDTH = 16,
    parameter NUM_CHANNELS = 4
) (
    input clk,
    input reset,
    input [DATA_WIDTH-1:0] din [0:NUM_CHANNELS-1],
    output reg [23:0] sout
);

    reg [23:0] sout_temp;
    reg [31:0] i;

    always @(posedge clk) begin
        if (reset) begin
            sout <= 24'd0;
        end else begin
            sout_temp = 24'd0;
            for (i = 0; i < NUM_CHANNELS; i = i+1) begin
               sout_temp = sout_temp + din[i];
            end
            sout <= sout_temp;
        end
    end
    
endmodule