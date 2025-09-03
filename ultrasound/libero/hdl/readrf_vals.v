module readrf_vals (
    input clk,
    input reset,
    input inc_count,
    output reg [15:0] val1,
    output reg [15:0] val2,
    output reg [15:0] val3,
    output reg [15:0] val4
);

reg [15:0] rf_vals_1 [0:15];
reg [15:0] rf_vals_2 [0:15];
reg [15:0] rf_vals_3 [0:15];
reg [15:0] rf_vals_4 [0:15];
reg [15:0] count = 0;

initial begin
    $readmemh("data/RF_DATA_4.txt", rf_vals_1, 0, 15);
    $readmemh("data/RF_DATA_3.txt", rf_vals_2, 0, 15);
    $readmemh("data/RF_DATA_2.txt", rf_vals_3, 0, 15);
    $readmemh("data/RF_DATA_1.txt", rf_vals_4, 0, 15);
end

always @(posedge clk ) begin
    if (reset) begin
        val1 <= 16'd0;
        val2 <= 16'd0;
        val3 <= 16'd0;
        val4 <= 16'd0;
        count <= 16'd0;
    end else begin
        val1 <= rf_vals_1[count];
        val2 <= rf_vals_2[count];
        val3 <= rf_vals_3[count];
        val4 <= rf_vals_4[count];

        if (count == 16'd24099) begin
            count <= 16'd0;
        end else begin
            if (inc_count) begin
                count <= count + 1;
            end else begin
                count <= count;
            end
        end
    end
end
endmodule