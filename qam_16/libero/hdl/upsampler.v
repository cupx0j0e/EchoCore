module upsampler (
    input clk,
    input reset,
    input signed [3:0] iout,
    output reg signed [3:0] iup,  
    input signed [3:0] qout,
    output reg signed [3:0] qup
);
    reg [3:0] count = 4'd0;
    
    always @(posedge clk) begin
        if (reset) begin
            count <= 4'd0;         
            iup <= iout;          
            qup <= qout;  
        end else begin
            if (count == 4'd0) begin   
                iup <= iout;      
                qup <= qout; 
            end else begin
                iup <= 4'sd0;    
                qup <= 4'sd0;  
            end
            count <= (count == 4'd10) ? 4'd0 : count + 1;
        end
    end
endmodule
