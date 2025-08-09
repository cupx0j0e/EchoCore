module top_tx (
    input clk,
    input reset,
    output signed [15:0] dout_i,
    output signed [15:0] dout_q
);

    wire [3:0] data, count;

    wire signed [3:0] i_out;
    wire signed [3:0] q_out;

    wire signed [3:0] i_up;
    wire signed [3:0] q_up;

    wire signed [11:0] fir_i_datai;
    wire               fir_i_datai_valid;
    wire signed [47:0] fir_i_pout;
    wire               fir_i_valid;

    wire signed [11:0] fir_q_datai;
    wire               fir_q_datai_valid;
    wire signed [47:0] fir_q_pout;
    wire               fir_q_valid;

    four_pr inst1 (
        .clk(clk),
        .reset(reset),
        .q(data),
        .cnt(count)
    );

    symmap inst2 (
        .data(data),
        .Iout(i_out),
        .Qout(q_out)
    );

    upsampler inst3 (
        .clk(clk),
        .reset(reset),
        .count(count),
        .iout(i_out),
        .qout(q_out),
        .iup(i_up),
        .qup(q_up)
    );
    
    assign fir_i_datai = { {8{i_up[3]}}, i_up };
    assign fir_q_datai = { {8{q_up[3]}}, q_up };

    assign fir_i_datai_valid = (count == 4'd0);
    assign fir_q_datai_valid = (count == 4'd0);

    COREFIR_PF_C0_COREFIR_PF_C0_0_enum_fir_g5 fir_i (
        .clk(clk),
        .nGrst(~reset),
        .rstn(~reset),
        .datai(fir_i_datai),
        .datai_valid(fir_i_datai_valid),
        .pout(fir_i_pout),
        .coefi(12'b0),
        .coef_sel(4'b0),
        .coef_on(1'b0),
        .coefi_valid(1'b0),
        .firo_valid(fir_i_valid)
    );

    COREFIR_PF_C0_COREFIR_PF_C0_0_enum_fir_g5 fir_q (
        .clk(clk),
        .nGrst(~reset),
        .rstn(~reset),
        .datai(fir_q_datai),
        .datai_valid(fir_q_datai_valid),
        .pout(fir_q_pout),
        .coefi(12'b0),
        .coef_sel(4'b0),
        .coef_on(1'b0),
        .coefi_valid(1'b0),
        .firo_valid(fir_q_valid)
    );

    assign dout_i = { {12{i_up[3]}}, i_up };  
    assign dout_q = { {12{q_up[3]}}, q_up };


endmodule

