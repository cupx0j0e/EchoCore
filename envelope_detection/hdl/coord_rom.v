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
    $readmemh("data/X_4.txt", x_rom);
    $readmemh("data/Z_4.txt", z_rom);
end

always @(*) begin
    x_out = x_rom[addr];
    z_out = z_rom[addr];
end

endmodule