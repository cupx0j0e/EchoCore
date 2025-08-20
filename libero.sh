cd ~/Downloads/Linux_Licensing_Daemon_11.19.6.0_64-bit
./lmgrd -c ~/flexlm/License.dat
./lmutil lmstat -a -c ~/flexlm/License.dat
export LM_LICENSE_FILE=1702@veduntu
cd /home/ved/microchip/Libero_SoC_v2024.2/Libero/bin
./libero &
