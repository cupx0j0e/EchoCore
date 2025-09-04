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
    rf_vals_1[0]  = 16'h0050;
    rf_vals_1[1]  = 16'h0001;
    rf_vals_1[2]  = 16'h0002;
    rf_vals_1[3]  = 16'h0003;
    rf_vals_1[4]  = 16'h0004;
    rf_vals_1[5]  = 16'h0005;
    rf_vals_1[6]  = 16'h0006;
    rf_vals_1[7]  = 16'h0007;
    rf_vals_1[8]  = 16'h0008;
    rf_vals_1[9]  = 16'h0009;
    rf_vals_1[10] = 16'h0010;
    rf_vals_1[11] = 16'h00FF;
    rf_vals_1[12] = 16'h0000;
    rf_vals_1[13] = 16'h0000;
    rf_vals_1[14] = 16'h0000;
    rf_vals_1[15] = 16'h0000;

    rf_vals_2[0]  = 16'h00FF;
    rf_vals_2[1]  = 16'h0000;
    rf_vals_2[2]  = 16'h0000;
    rf_vals_2[3]  = 16'h0000;
    rf_vals_2[4]  = 16'h0000;
    rf_vals_2[5]  = 16'h0000;
    rf_vals_2[6]  = 16'h0000;
    rf_vals_2[7]  = 16'h0000;
    rf_vals_2[8]  = 16'h0000;
    rf_vals_2[9]  = 16'h0000;
    rf_vals_2[10] = 16'h0000;
    rf_vals_2[11] = 16'h0000;
    rf_vals_2[12] = 16'h0000;
    rf_vals_2[13] = 16'h0000;
    rf_vals_2[14] = 16'h0000;
    rf_vals_2[15] = 16'h0000;

    rf_vals_3[0]  = 16'h00FF;
    rf_vals_3[1]  = 16'h0000;
    rf_vals_3[2]  = 16'h0000;
    rf_vals_3[3]  = 16'h0000;
    rf_vals_3[4]  = 16'h0000;
    rf_vals_3[5]  = 16'h0000;
    rf_vals_3[6]  = 16'h0000;
    rf_vals_3[7]  = 16'h0000;
    rf_vals_3[8]  = 16'h0000;
    rf_vals_3[9]  = 16'h0000;
    rf_vals_3[10] = 16'h0000;
    rf_vals_3[11] = 16'h0000;
    rf_vals_3[12] = 16'h0000;
    rf_vals_3[13] = 16'h0000;
    rf_vals_3[14] = 16'h0000;
    rf_vals_3[15] = 16'h0000;

    rf_vals_4[0]  = 16'h0010;
    rf_vals_4[1]  = 16'h0000;
    rf_vals_4[2]  = 16'h0000;
    rf_vals_4[3]  = 16'h0000;
    rf_vals_4[4]  = 16'h0000;
    rf_vals_4[5]  = 16'h0000;
    rf_vals_4[6]  = 16'h0000;
    rf_vals_4[7]  = 16'h0000;
    rf_vals_4[8]  = 16'h0000;
    rf_vals_4[9]  = 16'h0000;
    rf_vals_4[10] = 16'h0000;
    rf_vals_4[11] = 16'h00FF;
    rf_vals_4[12] = 16'h0000;
    rf_vals_4[13] = 16'h0000;
    rf_vals_4[14] = 16'h0000;
    rf_vals_4[15] = 16'h0000;
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