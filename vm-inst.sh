sudo virt-install --name testbench --ram 2048 --disk path=./testbench,size=60 --vcpus 2 --os-type linux --os-variant generic --network bridge=br0 --graphics none --console pty,target_type=serial --location 'http://10.0.0.100/inst' --extra-args 'console=ttyS0,115200n8 serial' -x ks=ftp://10.0.0.100/pub/ks.cfg

