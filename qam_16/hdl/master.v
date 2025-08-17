module custom_axi_master (
    // System signals
    input wire clk,
    input wire reset,

    // Data from the user's design
    input wire [63:0] combined_output,
    input wire data_valid, // A signal to indicate new data is ready

    // AXI4-Lite Write Master Interface
    output reg  [31:0]  S_AXI_AWADDR,
    output reg          S_AXI_AWVALID,
    input wire          S_AXI_AWREADY,

    output reg  [63:0]  S_AXI_WDATA,
    output reg  [7:0]   S_AXI_WSTRB, // 65-bit data requires 9 bytes
    output reg          S_AXI_WVALID,
    input wire          S_AXI_WREADY,

    input wire          S_AXI_BVALID,
    input wire  [1:0]   S_AXI_BRESP,
    output reg          S_AXI_BREADY
);

    // State machine definition
    localparam [2:0]
        IDLE                = 3'b000,
        WRITE_ADDRESS       = 3'b001,
        WRITE_DATA          = 3'b010,
        WAIT_FOR_RESPONSE   = 3'b011;

    // State register
    reg [2:0]   state;

    // Address counter
    reg [31:0]  axi_address_counter;

    // AXI signal default assignments to prevent latch creation
    initial begin
        S_AXI_AWADDR  = 32'h0000_0000;
        S_AXI_AWVALID = 1'b0;
        S_AXI_WDATA   = 65'h0000_0000_0000_0000_0;
        S_AXI_WSTRB   = 8'h00;
        S_AXI_WVALID  = 1'b0;
        S_AXI_BREADY  = 1'b0;
    end

    // Main state machine logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= IDLE;
            axi_address_counter <= 32'h0000_0000;
            S_AXI_AWVALID <= 1'b0;
            S_AXI_WVALID  <= 1'b0;
            S_AXI_BREADY  <= 1'b0;
        end else begin
            case (state)
                IDLE: begin
                    S_AXI_AWVALID <= 1'b0;
                    S_AXI_WVALID  <= 1'b0;
                    S_AXI_BREADY  <= 1'b0;
                    // Check if new data is available to write
                    if (data_valid) begin
                        state <= WRITE_ADDRESS;
                        S_AXI_AWADDR <= axi_address_counter;
                        S_AXI_AWVALID <= 1'b1;
                    end
                end

                WRITE_ADDRESS: begin
                    S_AXI_WDATA <= combined_output;
                    S_AXI_WSTRB <= 8'hff; // All bytes are written, change this if needed
                    S_AXI_WVALID <= 1'b1;
                    S_AXI_AWVALID <= 1'b0;
                    if (S_AXI_AWREADY && S_AXI_WREADY) begin
                        state <= WAIT_FOR_RESPONSE;
                    end
                end

                WAIT_FOR_RESPONSE: begin
                    S_AXI_WVALID <= 1'b0;
                    S_AXI_BREADY <= 1'b1;
                    if (S_AXI_BVALID) begin
                        state <= IDLE;
                        S_AXI_BREADY <= 1'b0;
                        // Increment address for the next write
                        axi_address_counter <= axi_address_counter + 32'd8; // 65 bits is 9 bytes
                    end
                end

                default: begin
                    state <= IDLE;
                end
            endcase
        end
    end

endmodule

