!#/bin/bash

apt-get update

#swap file config

swapon --show 
free -h
df -h 
fallocate -l 1G /swapfile

ls -lh /swapfile

chmod 600 /swapfile
ls -lh swapfile

mkswap /swapfile

sudo swapon --show 

free -h 

cp /etc/fstab /etc/fstab.bak

echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
cat /proc/sys/vm/swappiness
sudo systemctl vm.swappiness=10
echo "vm.swappiness=10" >> /etc/sysctl.conf
cat /proc/sys/vm/vfs_cache_pressure

sysctl vm.vfs_cache_pressure=50
echo "vm.vfs_cache_pressure=50" >> /etc/sysctl.conf
