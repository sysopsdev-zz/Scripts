sudo virt-install --name fileserv --ram 8192 --disk path=./fileserv,size=250 --vcpus 4 --os-type windows --os-variant generic --network bridge=br0 --graphics none --console pty,target_type=serial --location '/home/Isos/en_windows_server_2012_r2_x64_dvd_2707946.iso' --extra-args 'console=ttyS0,115200n8 serial'

