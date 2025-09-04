open_project -project {/home/jessica/GITHUB/EchoCore/ultrasound/libero/designer/top/top_fp/top.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {MPFS025T} \
    -fpga {/home/jessica/GITHUB/EchoCore/ultrasound/libero/designer/top/top.map} \
    -header {/home/jessica/GITHUB/EchoCore/ultrasound/libero/designer/top/top.hdr} \
    -snvm {/home/jessica/GITHUB/EchoCore/ultrasound/libero/designer/top/top_snvm.efc} \
    -spm {/home/jessica/GITHUB/EchoCore/ultrasound/libero/designer/top/top.spm} \
    -dca {/home/jessica/GITHUB/EchoCore/ultrasound/libero/designer/top/top.dca}
export_single_stapl \
    -name {MPFS025T} \
    -file {/home/jessica/GITHUB/EchoCore/ultrasound/libero/designer/top/export/top.stp} \
    -secured

export_single_ppd \
    -name {MPFS025T} \
    -file {/home/jessica/GITHUB/EchoCore/ultrasound/libero/designer/top/export/top.ppd}

export_single_dat \
    -name {MPFS025T} \
    -file {/home/jessica/GITHUB/EchoCore/ultrasound/libero/designer/top/export/top.dat} \
    -secured

export_spi_master \
    -name {MPFS025T} \
    -file {/home/jessica/GITHUB/EchoCore/ultrasound/libero/designer/top/export/top.spi} \
    -secured

save_project
close_project
