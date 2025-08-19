module uart_transmitter_65bit (
    input  wire         clk,
    input  wire [64:0]  full_bus,
    input  wire         tx_start,
    output wire         tx_output_uart
);

    localparam CLOCK_FREQ   = 50_000_000;
    localparam BAUD_RATE    = 9600;
    localparam BAUD_DIVISOR = CLOCK_FREQ / BAUD_RATE;

    localparam IDLE_STATE   = 2'b00;
    localparam TX_STATE     = 2'b01;
    localparam STOP_STATE   = 2'b10;

    reg [1:0]   current_state;
    reg [15:0]  baud_counter;
    reg [2:0]   bit_counter;
    reg [3:0]   byte_counter;
    reg         tx_busy;
    reg         tx_reg_data;
    reg [7:0]   tx_byte_buffer;

    always @(posedge clk) begin
        if (tx_start && !tx_busy) begin
            tx_busy <= 1'b1;
            current_state <= TX_STATE;
            byte_counter <= 4'd0;
            bit_counter <= 3'd0;
            baud_counter <= 16'd0;
        end else if (tx_busy) begin
            if (baud_counter < BAUD_DIVISOR - 1) begin
                baud_counter <= baud_counter + 1;
            end else begin
                baud_counter <= 16'd0;

                case (current_state)
                    IDLE_STATE: begin
                        tx_reg_data <= 1'b1;
                    end
                    TX_STATE: begin
                        if (bit_counter < 8) begin
                            tx_reg_data <= tx_byte_buffer[bit_counter];
                            bit_counter <= bit_counter + 1;
                        end else begin
                            current_state <= STOP_STATE;
                            tx_reg_data <= 1'b1;
                        end
                    end
                    STOP_STATE: begin
                        byte_counter <= byte_counter + 1;
                        bit_counter <= 3'd0;
                        if (byte_counter == 9) begin
                            current_state <= IDLE_STATE;
                            tx_busy <= 1'b0;
                        end else begin
                            current_state <= TX_STATE;
                            tx_reg_data <= 1'b0;
                        end
                    end
                endcase
            end
        end else begin
            tx_reg_data <= 1'b1;
        end
    end

    always @(*) begin
        case (byte_counter)
            4'd0: tx_byte_buffer = full_bus[7:0];
            4'd1: tx_byte_buffer = full_bus[15:8];
            4'd2: tx_byte_buffer = full_bus[23:16];
            4'd3: tx_byte_buffer = full_bus[31:24];
            4'd4: tx_byte_buffer = full_bus[39:32];
            4'd5: tx_byte_buffer = full_bus[47:40];
            4'd6: tx_byte_buffer = full_bus[55:48];
            4'd7: tx_byte_buffer = full_bus[63:56];
            4'd8: tx_byte_buffer = {7'b0, full_bus[64]};
            default: tx_byte_buffer = 8'b0;
        endcase
    end

    assign tx_output_uart = tx_reg_data;

endmodule

