module fifo #(
    parameter DATA_WIDTH = 16
) (
    input clk,
    input reset,
    input [DATA_WIDTH-1:0] data_in,
    input wr_en,
    input rd_en,

    output wire [DATA_WIDTH-1:0] data_out,
    output wire [ADDR_WIDTH:0]   fifo_count,
    output wire out_valid
);

    localparam DEPTH = 30;
    localparam ADDR_WIDTH = $clog2(DEPTH);

    reg [DATA_WIDTH-1:0] fifo_mem [0:DEPTH-1];

    reg [ADDR_WIDTH:0] wr_ptr_ext;
    reg [ADDR_WIDTH:0] rd_ptr_ext;

    wire [ADDR_WIDTH-1:0] wr_ptr;
    wire [ADDR_WIDTH-1:0] rd_ptr;
    wire full;
    wire empty;

    assign wr_ptr = wr_ptr_ext[ADDR_WIDTH-1:0];
    assign rd_ptr = rd_ptr_ext[ADDR_WIDTH-1:0];

    assign data_out = fifo_mem[rd_ptr];

    assign empty = (wr_ptr_ext == rd_ptr_ext);

    assign full = ((wr_ptr_ext[ADDR_WIDTH] != rd_ptr_ext[ADDR_WIDTH]) && (wr_ptr == rd_ptr));

    assign out_valid = !empty;

    assign fifo_count = wr_ptr_ext - rd_ptr_ext;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            wr_ptr_ext <= 0;
            rd_ptr_ext <= 0;
        end else begin
            if (wr_en && !full) begin
                fifo_mem[wr_ptr] <= data_in;
                wr_ptr_ext <= wr_ptr_ext + 1;
            end

            if (rd_en && !empty) begin
                rd_ptr_ext <= rd_ptr_ext + 1;
            end
        end
    end

endmodule
