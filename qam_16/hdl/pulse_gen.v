module pulse_generator (
    input  wire         clk,
    input  wire         rst_n,     
    output reg          pulse_out  
);

    localparam DELAY_COUNT = 50_000_000;

    reg [31:0] counter; 

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 32'd0;
            pulse_out <= 1'b0;
        end else begin
            // Pulse logic
            pulse_out <= 1'b0;
            if (counter >= DELAY_COUNT - 1) begin
                counter <= 32'd0;
                pulse_out <= 1'b1; // Generate the pulse
            end else begin
                counter <= counter + 1;
            end
        end
    end

endmodule

