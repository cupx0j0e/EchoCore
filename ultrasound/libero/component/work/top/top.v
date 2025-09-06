//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Fri Sep  5 00:16:45 2025
// Version: 2024.2 2024.2.0.13
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// top
module top(
    // Inputs
    clk,
    reset,
    // Outputs
    comp_frac,
    comp_int,
    log_in_ready
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input         clk;
input         reset;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [16:0] comp_frac;
output [5:0]  comp_int;
output        log_in_ready;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire          clk;
wire   [16:0] comp_frac_net_0;
wire   [5:0]  comp_int_net_0;
wire          envelope_0_DOUT_VALID;
wire   [47:0] envelope_0_DOUT_X;
wire          log_in_ready_net_0;
wire          reset;
wire          start_pulse_generator_0_start_pulse;
wire   [17:0] top_bf_0_beamformed_output;
wire   [16:0] comp_frac_net_1;
wire   [5:0]  comp_int_net_1;
wire          log_in_ready_net_1;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign comp_frac_net_1    = comp_frac_net_0;
assign comp_frac[16:0]    = comp_frac_net_1;
assign comp_int_net_1     = comp_int_net_0;
assign comp_int[5:0]      = comp_int_net_1;
assign log_in_ready_net_1 = log_in_ready_net_0;
assign log_in_ready       = log_in_ready_net_1;
//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------envelope
envelope envelope_0(
        // Inputs
        .CLK        ( clk ),
        .reset      ( reset ),
        .DATAI      ( top_bf_0_beamformed_output ),
        // Outputs
        .DOUT_VALID ( envelope_0_DOUT_VALID ),
        .DOUT_X     ( envelope_0_DOUT_X ) 
        );

//--------start_pulse_generator
start_pulse_generator start_pulse_generator_0(
        // Inputs
        .clk         ( clk ),
        .reset       ( reset ),
        // Outputs
        .start_pulse ( start_pulse_generator_0_start_pulse ) 
        );

//--------top_bf
top_bf top_bf_0(
        // Inputs
        .clk               ( clk ),
        .reset             ( reset ),
        .start             ( start_pulse_generator_0_start_pulse ),
        // Outputs
        .beamformed_output ( top_bf_0_beamformed_output ) 
        );

//--------top_logc
top_logc top_logc_0(
        // Inputs
        .clk            ( clk ),
        .reset          ( reset ),
        .fifo_out_valid ( envelope_0_DOUT_VALID ),
        .data_in        ( envelope_0_DOUT_X ),
        // Outputs
        .log_in_ready   ( log_in_ready_net_0 ),
        .comp_int       ( comp_int_net_0 ),
        .comp_frac      ( comp_frac_net_0 ) 
        );


endmodule
