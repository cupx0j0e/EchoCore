module modulator (
    input clk,
    input reset,
   
    input signed [47:0] filtered_i,
    input signed [47:0] filtered_q, 
    
    input signed [15:0] cosine,    
    input signed [15:0] sine,     
    
    output reg signed [63:0] modulated_i, 
    output reg signed [63:0] modulated_q  
);

    always @(posedge clk) begin
        if (reset) begin
         
            modulated_i <= 32'd0;
            modulated_q <= 32'd0;
        end else begin
          
            modulated_i <= filtered_i * cosine;
            modulated_q <= filtered_q * sine;
        end
    end

endmodule

