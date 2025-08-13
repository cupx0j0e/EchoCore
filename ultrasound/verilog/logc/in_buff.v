module fifo #(
    parameter DATA_WIDTH = 16,
    parameter ADDR_WIDTH = 3
) (
    input  wire                  clk,
    input  wire                  reset,
    input  wire [DATA_WIDTH-1:0] data_in,
    output wire [DATA_WIDTH-1:0] data_out,
    output reg  [ADDR_WIDTH:0]   fifo_count,
    output reg  [ADDR_WIDTH-1:0] rd_ptr,
    output reg  [ADDR_WIDTH-1:0] wr_ptr
);

    localparam DEPTH = 1 << ADDR_WIDTH;

    reg [DATA_WIDTH-1:0] fifo_mem [0:DEPTH-1];

    // Combinational read — instant update when rd_ptr changes
    assign data_out = fifo_mem[rd_ptr];

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            rd_ptr     <= 0;
            wr_ptr     <= 0;
            fifo_count <= 0;
        end else begin
            // Example: write when FIFO not full
            if (fifo_count < DEPTH) begin
                fifo_mem[wr_ptr] <= data_in;
                wr_ptr <= wr_ptr + 1;
                fifo_count <= fifo_count + 1;
            end

            // Example: read when FIFO not empty
            if (fifo_count > 0) begin
                rd_ptr <= rd_ptr + 1;
                fifo_count <= fifo_count - 1;
            end
        end
    end

endmodule
