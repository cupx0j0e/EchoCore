module readrf_vals (
    input clk,
    input reset,
    output reg [15:0] val
);

reg [15:0] rf_vals [0:24099];
reg [15:0] count = 0;

initial begin
    $readmemh("data/RF_DATA_24100.txt", rf_vals, 0, 24099);
end

always @(posedge clk ) begin
    if (reset) begin
        val <= 16'd0;
        count <= 16'd0;
    end else begin
        val <= rf_vals[count];
        if (count == 16'd24099) begin
            count <= 16'd0;
        end else begin
            count <= count + 1;
        end
    end
end
    
endmodule