set_device -fam PolarFireSoC
read_verilog -top_module_name {my_design} \
    -file {/home/jessica/Desktop/final_final_working/qam_16/synthesis/my_design.vm}
write_verilog -file {/home/jessica/Desktop/final_final_working/qam_16/synthesis/my_design.v}
