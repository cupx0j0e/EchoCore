new_project \
         -name {top} \
         -location {/home/jessica/GITHUB/EchoCore/ultrasound/libero/designer/top/top_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPFS025T} \
         -name {MPFS025T}
enable_device \
         -name {MPFS025T} \
         -enable {TRUE}
save_project
close_project
