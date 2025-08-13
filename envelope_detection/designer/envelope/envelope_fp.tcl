new_project \
         -name {envelope} \
         -location {/home/jessica/Desktop/lultrasound_ibero/envelope_detection/designer/envelope/envelope_fp} \
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
