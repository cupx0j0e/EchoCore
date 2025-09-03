//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sat Aug  9 00:32:46 2025
// Version: 2024.2 2024.2.0.13
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// my_design
module my_design(
    // Inputs
    clk,
    reset,
    // Outputs
    DOUT_VALID,
    FIRO_VALID,
    FIRO_VALID_0,
    combined_output
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         clk;
input         reset;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        DOUT_VALID;
output        FIRO_VALID;
output        FIRO_VALID_0;
output [64:0] combined_output;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          clk;
wire   [64:0] combined_output_net_0;
wire   [15:0] CORECORDIC_C0_0_DOUT_X;
wire   [15:0] CORECORDIC_C0_0_DOUT_Y;
wire   [47:0] COREFIR_PF_C0_0_FIRO;
wire   [47:0] COREFIR_PF_C0_1_FIRO;
wire          DOUT_VALID_net_0;
wire          FIRO_VALID_net_0;
wire          FIRO_VALID_0_net_0;
wire   [3:0]  four_pr_0_q;
wire   [63:0] modulator_0_modulated_i_0;
wire   [63:0] modulator_0_modulated_q_0;
wire   [15:0] phase_counter_0_phase_angle;
wire          reset;
wire   [3:0]  symmap_0_Iout;
wire   [3:0]  symmap_0_Qout;
wire   [3:0]  upsampler_0_iup;
wire   [3:0]  upsampler_0_qup;
wire          FIRO_VALID_net_1;
wire          FIRO_VALID_0_net_1;
wire          DOUT_VALID_net_1;
wire   [64:0] combined_output_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
//--------------------------------------------------------------------
// Inverted Nets
//--------------------------------------------------------------------
wire          NGRST_IN_POST_INV0_0;
wire          RSTN_IN_POST_INV1_0;
wire          NGRST_IN_POST_INV2_0;
wire          RSTN_IN_POST_INV3_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net = 1'b0;
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Inversions
//--------------------------------------------------------------------
assign NGRST_IN_POST_INV0_0 = ~ reset;
assign RSTN_IN_POST_INV1_0  = ~ reset;
assign NGRST_IN_POST_INV2_0 = ~ reset;
assign RSTN_IN_POST_INV3_0  = ~ reset;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign FIRO_VALID_net_1      = FIRO_VALID_net_0;
assign FIRO_VALID            = FIRO_VALID_net_1;
assign FIRO_VALID_0_net_1    = FIRO_VALID_0_net_0;
assign FIRO_VALID_0          = FIRO_VALID_0_net_1;
assign DOUT_VALID_net_1      = DOUT_VALID_net_0;
assign DOUT_VALID            = DOUT_VALID_net_1;
assign combined_output_net_1 = combined_output_net_0;
assign combined_output[64:0] = combined_output_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------combiner
combiner combiner_0(
        // Inputs
        .clk             ( clk ),
        .reset           ( reset ),
        .modulated_i     ( modulator_0_modulated_i_0 ),
        .modulated_q     ( modulator_0_modulated_q_0 ),
        // Outputs
        .combined_output ( combined_output_net_0 ) 
        );

//--------CORECORDIC_C0
CORECORDIC_C0 CORECORDIC_C0_0(
        // Inputs
        .RST        ( GND_net ), // tied to 1'b0 from definition
        .NGRST      ( VCC_net ), // tied to 1'b1 from definition
        .CLK        ( clk ),
        .DIN_A      ( phase_counter_0_phase_angle ),
        .DIN_VALID  ( VCC_net ), // tied to 1'b1 from definition
        // Outputs
        .DOUT_X     ( CORECORDIC_C0_0_DOUT_X ),
        .DOUT_Y     ( CORECORDIC_C0_0_DOUT_Y ),
        .DOUT_VALID ( DOUT_VALID_net_0 ) 
        );

//--------COREFIR_PF_C0
COREFIR_PF_C0 COREFIR_PF_C0_0(
        // Inputs
        .NGRST       ( NGRST_IN_POST_INV0_0 ),
        .RSTN        ( RSTN_IN_POST_INV1_0 ),
        .CLK         ( clk ),
        .DATAI       ( upsampler_0_qup ),
        .DATAI_VALID ( VCC_net ), // tied to 1'b1 from definition
        // Outputs
        .FIRO_VALID  ( FIRO_VALID_net_0 ),
        .FIRO        ( COREFIR_PF_C0_0_FIRO ) 
        );

//--------COREFIR_PF_C0
COREFIR_PF_C0 COREFIR_PF_C0_1(
        // Inputs
        .NGRST       ( NGRST_IN_POST_INV2_0 ),
        .RSTN        ( RSTN_IN_POST_INV3_0 ),
        .CLK         ( clk ),
        .DATAI       ( upsampler_0_iup ),
        .DATAI_VALID ( VCC_net ), // tied to 1'b1 from definition
        // Outputs
        .FIRO_VALID  ( FIRO_VALID_0_net_0 ),
        .FIRO        ( COREFIR_PF_C0_1_FIRO ) 
        );

//--------four_pr
four_pr four_pr_0(
        // Inputs
        .clk   ( clk ),
        .reset ( reset ),
        // Outputs
        .q     ( four_pr_0_q ) 
        );

//--------modulator
modulator modulator_0(
        // Inputs
        .clk         ( clk ),
        .reset       ( reset ),
        .filtered_i  ( COREFIR_PF_C0_1_FIRO ),
        .filtered_q  ( COREFIR_PF_C0_0_FIRO ),
        .cosine      ( CORECORDIC_C0_0_DOUT_X ),
        .sine        ( CORECORDIC_C0_0_DOUT_Y ),
        // Outputs
        .modulated_i ( modulator_0_modulated_i_0 ),
        .modulated_q ( modulator_0_modulated_q_0 ) 
        );

//--------phase_counter
phase_counter phase_counter_0(
        // Inputs
        .clk         ( clk ),
        .reset       ( reset ),
        // Outputs
        .phase_angle ( phase_counter_0_phase_angle ) 
        );

//--------symmap
symmap symmap_0(
        // Inputs
        .data ( four_pr_0_q ),
        // Outputs
        .Iout ( symmap_0_Iout ),
        .Qout ( symmap_0_Qout ) 
        );

//--------upsampler
upsampler upsampler_0(
        // Inputs
        .clk   ( clk ),
        .reset ( reset ),
        .iout  ( symmap_0_Iout ),
        .qout  ( symmap_0_Qout ),
        // Outputs
        .iup   ( upsampler_0_iup ),
        .qup   ( upsampler_0_qup ) 
        );


endmodule
