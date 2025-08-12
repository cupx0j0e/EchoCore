set_device -family {PolarFireSoC} -die {MPFS025T} -speed {-1}
read_verilog -mode system_verilog {/home/jessica/Desktop/new_libero/mat/hdl/matmul.v}
read_verilog -mode system_verilog {/home/jessica/Desktop/new_libero/mat/component/work/mat/mat.v}
set_top_level {mat}
map_netlist
check_constraints {/home/jessica/Desktop/new_libero/mat/constraint/synthesis_sdc_errors.log}
write_fdc {/home/jessica/Desktop/new_libero/mat/designer/mat/synthesis.fdc}
