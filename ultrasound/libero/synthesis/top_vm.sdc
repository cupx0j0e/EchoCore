# Written by Synplify Pro version map202309actp1, Build 008R. Synopsys Run ID: sid1757015703 
# Top Level Design Parameters 

# Clocks 
create_clock -period 10.000 -waveform {0.000 5.000} -name {top|clk} [get_ports {clk}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_728_inferred_clock} [get_pins {top_bf_0/delay_ctrl/coord_inst/un1_channel_idx_15_0_a2/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_725_inferred_clock} [get_pins {top_bf_0/delay_ctrl/coord_inst/un1_channel_idx_14_0_a4/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_726_inferred_clock} [get_pins {top_bf_0/delay_ctrl/coord_inst/un1_channel_idx_13_0_a4/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_727_inferred_clock} [get_pins {top_bf_0/delay_ctrl/coord_inst/un1_channel_idx_12_0_a4/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_732_inferred_clock} [get_pins {top_bf_0/delay_ctrl/coord_inst/un1_channel_idx_11_0_a4/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_729_inferred_clock} [get_pins {top_bf_0/delay_ctrl/coord_inst/un1_channel_idx_10_0_a4/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_730_inferred_clock} [get_pins {top_bf_0/delay_ctrl/coord_inst/un1_channel_idx_9_0_a4/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_731_inferred_clock} [get_pins {top_bf_0/delay_ctrl/coord_inst/un1_channel_idx_8_0_a4/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_736_inferred_clock} [get_pins {top_bf_0/delay_ctrl/coord_inst/un1_channel_idx_7_0_a4/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_733_inferred_clock} [get_pins {top_bf_0/delay_ctrl/coord_inst/un1_channel_idx_6_0_a4/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_734_inferred_clock} [get_pins {top_bf_0/delay_ctrl/coord_inst/un1_channel_idx_5_0_a4/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_735_inferred_clock} [get_pins {top_bf_0/delay_ctrl/coord_inst/un1_channel_idx_4_0_a4/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_740_inferred_clock} [get_pins {top_bf_0/delay_ctrl/coord_inst/un1_channel_idx_3_0_a4/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_737_inferred_clock} [get_pins {top_bf_0/delay_ctrl/coord_inst/un1_channel_idx_2_0_a4/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_738_inferred_clock} [get_pins {top_bf_0/delay_ctrl/coord_inst/un1_channel_idx_1_0_a4/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_739_inferred_clock} [get_pins {top_bf_0/delay_ctrl/coord_inst/un1_channel_idx_0_0_a4/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_calc_0|N_20_inferred_clock} [get_pins {top_bf_0/delay_ctrl/delay_calc_arr[8].delay_calc_inst/un1_state_16/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_calc_1|N_20_inferred_clock} [get_pins {top_bf_0/delay_ctrl/delay_calc_arr[3].delay_calc_inst/un1_state_16/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_calc_2|N_20_inferred_clock} [get_pins {top_bf_0/delay_ctrl/delay_calc_arr[7].delay_calc_inst/un1_state_16/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_calc_3|N_20_inferred_clock} [get_pins {top_bf_0/delay_ctrl/delay_calc_arr[5].delay_calc_inst/un1_state_16/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_calc_4|N_20_inferred_clock} [get_pins {top_bf_0/delay_ctrl/delay_calc_arr[6].delay_calc_inst/un1_state_16/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_calc_5|N_20_inferred_clock} [get_pins {top_bf_0/delay_ctrl/delay_calc_arr[13].delay_calc_inst/un1_state_16/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_calc_6|N_20_inferred_clock} [get_pins {top_bf_0/delay_ctrl/delay_calc_arr[14].delay_calc_inst/un1_state_16/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_calc_7|N_20_inferred_clock} [get_pins {top_bf_0/delay_ctrl/delay_calc_arr[12].delay_calc_inst/un1_state_16/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_calc_8|N_20_inferred_clock} [get_pins {top_bf_0/delay_ctrl/delay_calc_arr[2].delay_calc_inst/un1_state_16/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_calc_9|N_20_inferred_clock} [get_pins {top_bf_0/delay_ctrl/delay_calc_arr[9].delay_calc_inst/un1_state_16/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_calc_10|N_20_inferred_clock} [get_pins {top_bf_0/delay_ctrl/delay_calc_arr[0].delay_calc_inst/un1_state_16/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_calc_11|N_20_inferred_clock} [get_pins {top_bf_0/delay_ctrl/delay_calc_arr[1].delay_calc_inst/un1_state_16/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_calc_12|N_20_inferred_clock} [get_pins {top_bf_0/delay_ctrl/delay_calc_arr[15].delay_calc_inst/un1_state_16/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_calc_13|N_20_inferred_clock} [get_pins {top_bf_0/delay_ctrl/delay_calc_arr[11].delay_calc_inst/un1_state_16/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_calc_14|N_20_inferred_clock} [get_pins {top_bf_0/delay_ctrl/delay_calc_arr[4].delay_calc_inst/un1_state_16/Y}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {delay_calc_15|N_20_inferred_clock} [get_pins {top_bf_0/delay_ctrl/delay_calc_arr[10].delay_calc_inst/un1_state_16/Y}] 

# Virtual Clocks 

# Generated Clocks 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set Inferred_clkgroup_0 [list top|clk]
set Inferred_clkgroup_1 [list delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_728_inferred_clock]
set Inferred_clkgroup_2 [list delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_725_inferred_clock]
set Inferred_clkgroup_3 [list delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_726_inferred_clock]
set Inferred_clkgroup_4 [list delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_727_inferred_clock]
set Inferred_clkgroup_5 [list delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_732_inferred_clock]
set Inferred_clkgroup_6 [list delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_729_inferred_clock]
set Inferred_clkgroup_7 [list delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_730_inferred_clock]
set Inferred_clkgroup_8 [list delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_731_inferred_clock]
set Inferred_clkgroup_9 [list delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_736_inferred_clock]
set Inferred_clkgroup_10 [list delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_733_inferred_clock]
set Inferred_clkgroup_11 [list delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_734_inferred_clock]
set Inferred_clkgroup_12 [list delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_735_inferred_clock]
set Inferred_clkgroup_13 [list delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_740_inferred_clock]
set Inferred_clkgroup_14 [list delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_737_inferred_clock]
set Inferred_clkgroup_15 [list delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_738_inferred_clock]
set Inferred_clkgroup_16 [list delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_739_inferred_clock]
set Inferred_clkgroup_17 [list delay_calc_0|N_20_inferred_clock]
set Inferred_clkgroup_18 [list delay_calc_1|N_20_inferred_clock]
set Inferred_clkgroup_19 [list delay_calc_2|N_20_inferred_clock]
set Inferred_clkgroup_20 [list delay_calc_3|N_20_inferred_clock]
set Inferred_clkgroup_21 [list delay_calc_4|N_20_inferred_clock]
set Inferred_clkgroup_22 [list delay_calc_5|N_20_inferred_clock]
set Inferred_clkgroup_23 [list delay_calc_6|N_20_inferred_clock]
set Inferred_clkgroup_24 [list delay_calc_7|N_20_inferred_clock]
set Inferred_clkgroup_25 [list delay_calc_8|N_20_inferred_clock]
set Inferred_clkgroup_26 [list delay_calc_9|N_20_inferred_clock]
set Inferred_clkgroup_27 [list delay_calc_10|N_20_inferred_clock]
set Inferred_clkgroup_28 [list delay_calc_11|N_20_inferred_clock]
set Inferred_clkgroup_29 [list delay_calc_12|N_20_inferred_clock]
set Inferred_clkgroup_30 [list delay_calc_13|N_20_inferred_clock]
set Inferred_clkgroup_31 [list delay_calc_14|N_20_inferred_clock]
set Inferred_clkgroup_32 [list delay_calc_15|N_20_inferred_clock]
set_clock_groups -asynchronous -group $Inferred_clkgroup_0
set_clock_groups -asynchronous -group $Inferred_clkgroup_1
set_clock_groups -asynchronous -group $Inferred_clkgroup_2
set_clock_groups -asynchronous -group $Inferred_clkgroup_3
set_clock_groups -asynchronous -group $Inferred_clkgroup_4
set_clock_groups -asynchronous -group $Inferred_clkgroup_5
set_clock_groups -asynchronous -group $Inferred_clkgroup_6
set_clock_groups -asynchronous -group $Inferred_clkgroup_7
set_clock_groups -asynchronous -group $Inferred_clkgroup_8
set_clock_groups -asynchronous -group $Inferred_clkgroup_9
set_clock_groups -asynchronous -group $Inferred_clkgroup_10
set_clock_groups -asynchronous -group $Inferred_clkgroup_11
set_clock_groups -asynchronous -group $Inferred_clkgroup_12
set_clock_groups -asynchronous -group $Inferred_clkgroup_13
set_clock_groups -asynchronous -group $Inferred_clkgroup_14
set_clock_groups -asynchronous -group $Inferred_clkgroup_15
set_clock_groups -asynchronous -group $Inferred_clkgroup_16
set_clock_groups -asynchronous -group $Inferred_clkgroup_17
set_clock_groups -asynchronous -group $Inferred_clkgroup_18
set_clock_groups -asynchronous -group $Inferred_clkgroup_19
set_clock_groups -asynchronous -group $Inferred_clkgroup_20
set_clock_groups -asynchronous -group $Inferred_clkgroup_21
set_clock_groups -asynchronous -group $Inferred_clkgroup_22
set_clock_groups -asynchronous -group $Inferred_clkgroup_23
set_clock_groups -asynchronous -group $Inferred_clkgroup_24
set_clock_groups -asynchronous -group $Inferred_clkgroup_25
set_clock_groups -asynchronous -group $Inferred_clkgroup_26
set_clock_groups -asynchronous -group $Inferred_clkgroup_27
set_clock_groups -asynchronous -group $Inferred_clkgroup_28
set_clock_groups -asynchronous -group $Inferred_clkgroup_29
set_clock_groups -asynchronous -group $Inferred_clkgroup_30
set_clock_groups -asynchronous -group $Inferred_clkgroup_31
set_clock_groups -asynchronous -group $Inferred_clkgroup_32

set_clock_groups -asynchronous -group [get_clocks {top|clk}]
set_clock_groups -asynchronous -group [get_clocks {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_728_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_725_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_726_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_727_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_732_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_729_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_730_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_731_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_736_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_733_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_734_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_735_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_740_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_737_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_738_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_con_16s_16s_256s_0s_1s_2s_3s_4s_5s_6s|N_739_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_calc_0|N_20_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_calc_1|N_20_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_calc_2|N_20_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_calc_3|N_20_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_calc_4|N_20_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_calc_5|N_20_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_calc_6|N_20_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_calc_7|N_20_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_calc_8|N_20_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_calc_9|N_20_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_calc_10|N_20_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_calc_11|N_20_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_calc_12|N_20_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_calc_13|N_20_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_calc_14|N_20_inferred_clock}]
set_clock_groups -asynchronous -group [get_clocks {delay_calc_15|N_20_inferred_clock}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 


# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

