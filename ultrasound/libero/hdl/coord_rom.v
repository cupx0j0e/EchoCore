module coord_rom #(
    parameter NUM_CHANNELS = 16,
    parameter DATA_WIDTH = $clog2(NUM_CHANNELS)
) (
    input clk,
    input [DATA_WIDTH-1:0] addr,
    output reg [15:0] x_out,
    output reg [15:0] z_out
);

reg [15:0] x_rom [0:NUM_CHANNELS-1];
reg [15:0] z_rom [0:NUM_CHANNELS-1];

initial begin
    x_rom[0] = 16'h000B;
    x_rom[1] = 16'h0002;
    x_rom[2] = 16'h0002;
    x_rom[3] = 16'h000B;
    x_rom[4] = 16'h0000;
    x_rom[5] = 16'h0000;
    x_rom[6] = 16'h0000;
    x_rom[7] = 16'h0000;
    x_rom[8] = 16'h0000;
    x_rom[9] = 16'h0000;
    x_rom[10] = 16'h0000;
    x_rom[11] = 16'h0000;
    x_rom[12] = 16'h0000;
    x_rom[13] = 16'h0000;
    x_rom[14] = 16'h0000;
    x_rom[15] = 16'h0000;

    z_rom[0] = 16'h0000;
    z_rom[1] = 16'h0000;
    z_rom[2] = 16'h0000;
    z_rom[3] = 16'h0000;
    z_rom[4] = 16'h0000;
    z_rom[5] = 16'h0000;
    z_rom[6] = 16'h0000;
    z_rom[7] = 16'h0000;
    z_rom[8] = 16'h0000;
    z_rom[9] = 16'h0000;
    z_rom[10] = 16'h0000;
    z_rom[11] = 16'h0000;
    z_rom[12] = 16'h0000;
    z_rom[13] = 16'h0000;
    z_rom[14] = 16'h0000;
    z_rom[15] = 16'h0000;
end 

always @(*) begin
    x_out = x_rom[addr];
    z_out = z_rom[addr];
end

endmodule