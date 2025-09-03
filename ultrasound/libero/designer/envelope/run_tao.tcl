set_device -family {PolarFireSoC} -die {MPFS025T} -speed {-1}
read_verilog -mode system_verilog -lib CORECORDIC_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/work/CORECORDIC_C0/CORECORDIC_C0_0/CORECORDIC_C0_CORECORDIC_C0_0_CordicLUT_par.v}
read_verilog -mode system_verilog -lib CORECORDIC_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/Actel/DirectCore/CORECORDIC/4.1.100/rtl/vlog/core/cordic_kit.v}
read_verilog -mode system_verilog -lib CORECORDIC_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/work/CORECORDIC_C0/CORECORDIC_C0_0/rtl/vlog/core/cordic_par.v}
read_verilog -mode system_verilog -lib CORECORDIC_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/work/CORECORDIC_C0/CORECORDIC_C0_0/rtl/vlog/core/CORECORDIC.v}
read_verilog -mode system_verilog {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/work/CORECORDIC_C0/CORECORDIC_C0.v}
read_verilog -mode system_verilog {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/hdl/delay.v}
read_vhdl -mode vhdl_2008 -lib COREFIR_PF_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/corefir_rtl_pack.vhd}
read_vhdl -mode vhdl_2008 -lib COREFIR_PF_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/corefir_top_kit.vhd}
read_vhdl -mode vhdl_2008 -lib COREFIR_PF_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_rtl_pack.vhd}
read_vhdl -mode vhdl_2008 -lib COREFIR_PF_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_kit.vhd}
read_vhdl -mode vhdl_2008 -lib COREFIR_PF_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_PF/adv_dly_line.vhd}
read_vhdl -mode vhdl_2008 -lib COREFIR_PF_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/work/fir_hilbert/fir_hilbert_0/rtl/vhdl/core/enum_PF/fir_hilbert_fir_hilbert_0_enumFIR_coefs.vhd}
read_vhdl -mode vhdl_2008 -lib COREFIR_PF_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/work/fir_hilbert/fir_hilbert_0/rtl/vhdl/core/enum_PF/enum_fir_adv_g5.vhd}
read_vhdl -mode vhdl_2008 -lib COREFIR_PF_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_PF/enum_pad_g5.vhd}
read_vhdl -mode vhdl_2008 -lib COREFIR_PF_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_PF/enum_macc_lib_g5.vhd}
read_vhdl -mode vhdl_2008 -lib COREFIR_PF_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_PF/enum_tap_g5.vhd}
read_vhdl -mode vhdl_2008 -lib COREFIR_PF_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_PF/enum_undernibble_g5.vhd}
read_vhdl -mode vhdl_2008 -lib COREFIR_PF_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_PF/enum_nibble_g5.vhd}
read_vhdl -mode vhdl_2008 -lib COREFIR_PF_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/Actel/DirectCore/COREFIR_PF/3.0.121/rtl/vhdl/core/enum_PF/enum_row_g5.vhd}
read_vhdl -mode vhdl_2008 -lib COREFIR_PF_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/work/fir_hilbert/fir_hilbert_0/rtl/vhdl/core/enum_PF/fir_hilbert_fir_hilbert_0_enum_params.vhd}
read_vhdl -mode vhdl_2008 -lib COREFIR_PF_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/work/fir_hilbert/fir_hilbert_0/rtl/vhdl/core/enum_PF/enum_fir_g5.vhd}
read_vhdl -mode vhdl_2008 -lib COREFIR_PF_LIB {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/work/fir_hilbert/fir_hilbert_0/rtl/vhdl/core/enum_PF/COREFIR.vhd}
read_vhdl -mode vhdl_2008 {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/work/fir_hilbert/fir_hilbert.vhd}
read_verilog -mode system_verilog {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/component/work/envelope/envelope.v}
set_top_level {envelope}
map_netlist
check_constraints {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/constraint/synthesis_sdc_errors.log}
write_fdc {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/designer/envelope/synthesis.fdc}
