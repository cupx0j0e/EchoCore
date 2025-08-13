open_project -project {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/designer/envelope/envelope_fp/envelope.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {MPFS025T} \
    -fpga {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/designer/envelope/envelope.map} \
    -header {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/designer/envelope/envelope.hdr} \
    -snvm {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/designer/envelope/envelope_snvm.efc} \
    -spm {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/designer/envelope/envelope.spm} \
    -dca {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/designer/envelope/envelope.dca}
export_single_stapl \
    -name {MPFS025T} \
    -file {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/designer/envelope/export/envelope.stp} \
    -secured

export_single_ppd \
    -name {MPFS025T} \
    -file {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/designer/envelope/export/envelope.ppd}

export_single_dat \
    -name {MPFS025T} \
    -file {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/designer/envelope/export/envelope.dat} \
    -secured

export_spi_master \
    -name {MPFS025T} \
    -file {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/designer/envelope/export/envelope.spi} \
    -secured

save_project
close_project
