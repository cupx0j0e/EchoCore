//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Sun Aug 17 15:48:34 2025
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
    FIRO_VALID
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  clk;
input  reset;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output DOUT_VALID;
output FIRO_VALID;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          clk;
wire   [63:0] combiner_0_combined_output_0;
wire   [15:0] CORECORDIC_C0_0_DOUT_X;
wire   [15:0] CORECORDIC_C0_0_DOUT_Y;
wire   [47:0] COREFIR_PF_C0_0_FIRO;
wire   [47:0] COREFIR_PF_C0_1_FIRO;
wire   [31:0] custom_axi_master_0_S_AXI_AWADDR;
wire          custom_axi_master_0_S_AXI_AWVALID;
wire          custom_axi_master_0_S_AXI_BREADY;
wire   [63:0] custom_axi_master_0_S_AXI_WDATA;
wire   [7:0]  custom_axi_master_0_S_AXI_WSTRB;
wire          custom_axi_master_0_S_AXI_WVALID;
wire          DOUT_VALID_net_0;
wire          FIRO_VALID_net_0;
wire          FIRO_VALID_0;
wire   [3:0]  four_pr_0_q;
wire   [63:0] modulator_0_modulated_i_0;
wire   [63:0] modulator_0_modulated_q_0;
wire          PF_SRAM_AHBL_AXI_C0_0_AWREADY;
wire   [1:0]  PF_SRAM_AHBL_AXI_C0_0_BRESP;
wire          PF_SRAM_AHBL_AXI_C0_0_BVALID;
wire          PF_SRAM_AHBL_AXI_C0_0_WREADY;
wire   [15:0] phase_counter_0_phase_angle;
wire          reset;
wire   [3:0]  symmap_0_Iout;
wire   [3:0]  symmap_0_Qout;
wire   [3:0]  upsampler_0_iup;
wire   [3:0]  upsampler_0_qup;
wire          DOUT_VALID_net_1;
wire          FIRO_VALID_net_1;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire          VCC_net;
wire   [7:0]  AWID_const_net_0;
wire   [7:0]  AWLEN_const_net_0;
wire   [2:0]  AWSIZE_const_net_0;
wire   [1:0]  AWBURST_const_net_0;
wire   [1:0]  AWLOCK_const_net_0;
wire   [3:0]  AWCACHE_const_net_0;
wire   [2:0]  AWPROT_const_net_0;
wire   [7:0]  ARID_const_net_0;
wire   [31:0] ARADDR_const_net_0;
wire   [7:0]  ARLEN_const_net_0;
wire   [2:0]  ARSIZE_const_net_0;
wire   [1:0]  ARBURST_const_net_0;
wire   [1:0]  ARLOCK_const_net_0;
wire   [3:0]  ARCACHE_const_net_0;
wire   [2:0]  ARPROT_const_net_0;
//--------------------------------------------------------------------
// Inverted Nets
//--------------------------------------------------------------------
wire          NGRST_IN_POST_INV0_0;
wire          RSTN_IN_POST_INV1_0;
wire          NGRST_IN_POST_INV2_0;
wire          RSTN_IN_POST_INV3_0;
wire          ARESETN_IN_POST_INV4_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net             = 1'b0;
assign VCC_net             = 1'b1;
assign AWID_const_net_0    = 8'h00;
assign AWLEN_const_net_0   = 8'h00;
assign AWSIZE_const_net_0  = 3'h0;
assign AWBURST_const_net_0 = 2'h3;
assign AWLOCK_const_net_0  = 2'h0;
assign AWCACHE_const_net_0 = 4'h0;
assign AWPROT_const_net_0  = 3'h0;
assign ARID_const_net_0    = 8'h00;
assign ARADDR_const_net_0  = 32'h00000000;
assign ARLEN_const_net_0   = 8'h00;
assign ARSIZE_const_net_0  = 3'h0;
assign ARBURST_const_net_0 = 2'h3;
assign ARLOCK_const_net_0  = 2'h0;
assign ARCACHE_const_net_0 = 4'h0;
assign ARPROT_const_net_0  = 3'h0;
//--------------------------------------------------------------------
// Inversions
//--------------------------------------------------------------------
assign NGRST_IN_POST_INV0_0   = ~ reset;
assign RSTN_IN_POST_INV1_0    = ~ reset;
assign NGRST_IN_POST_INV2_0   = ~ reset;
assign RSTN_IN_POST_INV3_0    = ~ reset;
assign ARESETN_IN_POST_INV4_0 = ~ reset;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign DOUT_VALID_net_1 = DOUT_VALID_net_0;
assign DOUT_VALID       = DOUT_VALID_net_1;
assign FIRO_VALID_net_1 = FIRO_VALID_net_0;
assign FIRO_VALID       = FIRO_VALID_net_1;
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
        .combined_output ( combiner_0_combined_output_0 ) 
        );

//--------CORECORDIC_C0
CORECORDIC_C0 CORECORDIC_C0_0(
        // Inputs
        .RST        ( GND_net ), // tied to 1'b0 from definition
        .NGRST      ( VCC_net ), // tied to 1'b1 from definition
        .CLK        ( clk ),
        .DIN_VALID  ( VCC_net ), // tied to 1'b1 from definition
        .DIN_A      ( phase_counter_0_phase_angle ),
        // Outputs
        .DOUT_VALID ( DOUT_VALID_net_0 ),
        .DOUT_X     ( CORECORDIC_C0_0_DOUT_X ),
        .DOUT_Y     ( CORECORDIC_C0_0_DOUT_Y ) 
        );

//--------COREFIR_PF_C0
COREFIR_PF_C0 COREFIR_PF_C0_0(
        // Inputs
        .NGRST       ( NGRST_IN_POST_INV0_0 ),
        .RSTN        ( RSTN_IN_POST_INV1_0 ),
        .CLK         ( clk ),
        .DATAI_VALID ( VCC_net ), // tied to 1'b1 from definition
        .DATAI       ( upsampler_0_qup ),
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
        .DATAI_VALID ( VCC_net ), // tied to 1'b1 from definition
        .DATAI       ( upsampler_0_iup ),
        // Outputs
        .FIRO_VALID  ( FIRO_VALID_0 ),
        .FIRO        ( COREFIR_PF_C0_1_FIRO ) 
        );

//--------custom_axi_master
custom_axi_master custom_axi_master_0(
        // Inputs
        .clk             ( clk ),
        .reset           ( reset ),
        .combined_output ( combiner_0_combined_output_0 ),
        .data_valid      ( FIRO_VALID_0 ),
        .S_AXI_AWREADY   ( PF_SRAM_AHBL_AXI_C0_0_AWREADY ),
        .S_AXI_WREADY    ( PF_SRAM_AHBL_AXI_C0_0_WREADY ),
        .S_AXI_BVALID    ( PF_SRAM_AHBL_AXI_C0_0_BVALID ),
        .S_AXI_BRESP     ( PF_SRAM_AHBL_AXI_C0_0_BRESP ),
        // Outputs
        .S_AXI_AWADDR    ( custom_axi_master_0_S_AXI_AWADDR ),
        .S_AXI_AWVALID   ( custom_axi_master_0_S_AXI_AWVALID ),
        .S_AXI_WDATA     ( custom_axi_master_0_S_AXI_WDATA ),
        .S_AXI_WSTRB     ( custom_axi_master_0_S_AXI_WSTRB ),
        .S_AXI_WVALID    ( custom_axi_master_0_S_AXI_WVALID ),
        .S_AXI_BREADY    ( custom_axi_master_0_S_AXI_BREADY ) 
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

//--------PF_SRAM_AHBL_AXI_C0
PF_SRAM_AHBL_AXI_C0 PF_SRAM_AHBL_AXI_C0_0(
        // Inputs
        .ACLK    ( clk ),
        .ARESETN ( ARESETN_IN_POST_INV4_0 ),
        .AWADDR  ( custom_axi_master_0_S_AXI_AWADDR ),
        .AWLEN   ( AWLEN_const_net_0 ), // tied to 8'h00 from definition
        .AWSIZE  ( AWSIZE_const_net_0 ), // tied to 3'h0 from definition
        .AWBURST ( AWBURST_const_net_0 ), // tied to 2'h3 from definition
        .AWLOCK  ( AWLOCK_const_net_0 ), // tied to 2'h0 from definition
        .AWCACHE ( AWCACHE_const_net_0 ), // tied to 4'h0 from definition
        .AWPROT  ( AWPROT_const_net_0 ), // tied to 3'h0 from definition
        .AWVALID ( custom_axi_master_0_S_AXI_AWVALID ),
        .WDATA   ( custom_axi_master_0_S_AXI_WDATA ),
        .WSTRB   ( custom_axi_master_0_S_AXI_WSTRB ),
        .WLAST   ( GND_net ), // tied to 1'b0 from definition
        .WVALID  ( custom_axi_master_0_S_AXI_WVALID ),
        .BREADY  ( custom_axi_master_0_S_AXI_BREADY ),
        .ARADDR  ( ARADDR_const_net_0 ), // tied to 32'h00000000 from definition
        .ARLEN   ( ARLEN_const_net_0 ), // tied to 8'h00 from definition
        .ARSIZE  ( ARSIZE_const_net_0 ), // tied to 3'h0 from definition
        .ARBURST ( ARBURST_const_net_0 ), // tied to 2'h3 from definition
        .ARLOCK  ( ARLOCK_const_net_0 ), // tied to 2'h0 from definition
        .ARCACHE ( ARCACHE_const_net_0 ), // tied to 4'h0 from definition
        .ARPROT  ( ARPROT_const_net_0 ), // tied to 3'h0 from definition
        .ARVALID ( GND_net ), // tied to 1'b0 from definition
        .RREADY  ( GND_net ), // tied to 1'b0 from definition
        .AWID    ( AWID_const_net_0 ), // tied to 8'h00 from definition
        .ARID    ( ARID_const_net_0 ), // tied to 8'h00 from definition
        // Outputs
        .AWREADY ( PF_SRAM_AHBL_AXI_C0_0_AWREADY ),
        .WREADY  ( PF_SRAM_AHBL_AXI_C0_0_WREADY ),
        .BVALID  ( PF_SRAM_AHBL_AXI_C0_0_BVALID ),
        .ARREADY (  ),
        .RDATA   (  ),
        .RRESP   (  ),
        .RLAST   (  ),
        .RVALID  (  ),
        .BRESP   ( PF_SRAM_AHBL_AXI_C0_0_BRESP ),
        .BID     (  ),
        .RID     (  ) 
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
