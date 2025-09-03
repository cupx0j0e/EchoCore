set_device \
    -family  PolarFireSoC \
    -die     PA5SOC025T \
    -package fcvg484 \
    -speed   -1 \
    -tempr   {IND} \
    -voltr   {IND}
set_def {VOLTAGE} {1.0}
set_def {VCCI_1.2_VOLTR} {EXT}
set_def {VCCI_1.5_VOLTR} {EXT}
set_def {VCCI_1.8_VOLTR} {EXT}
set_def {VCCI_2.5_VOLTR} {EXT}
set_def {VCCI_3.3_VOLTR} {EXT}
set_operating_conditions -name {slow_lv_lt}
set_operating_conditions -name {slow_lv_ht}
set_operating_conditions -name {fast_hv_lt}
set_name my_design
set_workdir {/home/jessica/Desktop/final_final_working/qam_16/designer/my_design}
set_filename    {/home/jessica/Desktop/final_final_working/qam_16/designer/my_design/my_design_ba}
set_design_state post_layout
set_language verilog
