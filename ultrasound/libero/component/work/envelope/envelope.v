//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Wed Aug 13 16:09:30 2025
// Version: 2024.2 2024.2.0.13
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// envelope
module envelope(
    // Inputs
    CLK,
    DATAI,
    reset,
    // Outputs
    DOUT_VALID,
    DOUT_X
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         CLK;
input  [17:0] DATAI;
input         reset;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output        DOUT_VALID;
output [47:0] DOUT_X;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          CLK;
wire   [17:0] DATAI;
wire   [47:0] delay_line_signext_0_dout;
wire          DOUT_VALID_net_0;
wire   [47:0] DOUT_X_net_0;
wire   [47:0] fir_hilbert_0_FIRO;
wire          fir_hilbert_0_FIRO_VALID;
wire          reset;
wire          DOUT_VALID_net_1;
wire   [47:0] DOUT_X_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          VCC_net;
//--------------------------------------------------------------------
// Inverted Nets
//--------------------------------------------------------------------
wire          NGRST_IN_POST_INV0_0;
wire          rstn_IN_POST_INV1_0;
wire          NGRST_IN_POST_INV2_0;
wire          RSTN_IN_POST_INV3_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign VCC_net = 1'b1;
//--------------------------------------------------------------------
// Inversions
//--------------------------------------------------------------------
assign NGRST_IN_POST_INV0_0 = ~ reset;
assign rstn_IN_POST_INV1_0  = ~ reset;
assign NGRST_IN_POST_INV2_0 = ~ reset;
assign RSTN_IN_POST_INV3_0  = ~ reset;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign DOUT_VALID_net_1 = DOUT_VALID_net_0;
assign DOUT_VALID       = DOUT_VALID_net_1;
assign DOUT_X_net_1     = DOUT_X_net_0;
assign DOUT_X[47:0]     = DOUT_X_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CORECORDIC_C0
CORECORDIC_C0 CORECORDIC_C0_0(
        // Inputs
        .RST        ( reset ),
        .NGRST      ( NGRST_IN_POST_INV0_0 ),
        .CLK        ( CLK ),
        .DIN_VALID  ( fir_hilbert_0_FIRO_VALID ),
        .DIN_X      ( delay_line_signext_0_dout ),
        .DIN_Y      ( fir_hilbert_0_FIRO ),
        // Outputs
        .DOUT_VALID ( DOUT_VALID_net_0 ),
        .DOUT_X     ( DOUT_X_net_0 ),
        .DOUT_A     (  ) 
        );

//--------delay_line_signext
delay_line_signext delay_line_signext_0(
        // Inputs
        .clk  ( CLK ),
        .rstn ( rstn_IN_POST_INV1_0 ),
        .din  ( DATAI ),
        // Outputs
        .dout ( delay_line_signext_0_dout ) 
        );

//--------fir_hilbert
fir_hilbert fir_hilbert_0(
        // Inputs
        .NGRST       ( NGRST_IN_POST_INV2_0 ),
        .RSTN        ( RSTN_IN_POST_INV3_0 ),
        .CLK         ( CLK ),
        .DATAI_VALID ( VCC_net ), // tied to 1'b1 from definition
        .DATAI       ( DATAI ),
        // Outputs
        .FIRO_VALID  ( fir_hilbert_0_FIRO_VALID ),
        .FIRO        ( fir_hilbert_0_FIRO ) 
        );


endmodule
