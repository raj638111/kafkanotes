#!/bin/bash

# Do this for each EC2 Kafka instance
# execute commands as root
# **In iterm use Shit Command i to send this command to
# all 3 EC2 instances (in 3 split pane)
sudo su

# Attach the EBS volume in the console, then
# view available disks
# **See all the attached volumes
  # NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
  #xvda    202:0    0   20G  0 disk  (This is our root volume)
  #└─xvda1 202:1    0   20G  0 part /
  #xvdf    202:80   0    2G  0 disk  (This is our disk for kafka data)
lsblk

# we verify the disk is empty - should return "data"
# "data" means empty
file -s /dev/xvdf

# Note on Kafka: it's better to format volumes as xfs:
# https://kafka.apache.org/documentation/#filesystems
# Install packages to mount as xfs
apt-get install -y xfsprogs

# create a partition
fdisk /dev/xvdf

# format as xfs
mkfs.xfs -f /dev/xvdf

# create kafka directory
mkdir /data/kafka

# Validate
ls /data
#   output: kafka  zookeeper


# mount volume
mount -t xfs /dev/xvdf /data/kafka
# add permissions to kafka directory
chown -R ubuntu:ubuntu /data/kafka

# check it's working
# Also use df -h to check all mounted disks and its associated directories
df -h /data/kafka
# Filesystem      Size  Used Avail Use% Mounted on
#/dev/xvdf       2.0G   33M  2.0G   2% /data/kafka
df -h
# Filesystem      Size  Used Avail Use% Mounted on
#udev            2.0G     0  2.0G   0% /dev
#tmpfs           396M  5.7M  390M   2% /run
#/dev/xvda1       20G  1.8G   18G  10% /
#tmpfs           2.0G     0  2.0G   0% /dev/shm
#tmpfs           5.0M     0  5.0M   0% /run/lock
#tmpfs           2.0G     0  2.0G   0% /sys/fs/cgroup
#/dev/loop0       18M   18M     0 100% /snap/amazon-ssm-agent/1566
#/dev/loop1       94M   94M     0 100% /snap/core/9066
#/dev/loop2       94M   94M     0 100% /snap/core/8935
#tmpfs           396M     0  396M   0% /run/user/1000
#/dev/xvdf       2.0G   33M  2.0G   2% /data/kafka

# EBS Automount On Reboot
cp /etc/fstab /etc/fstab.bak # backup
echo '/dev/xvdf /data/kafka xfs defaults 0 0' >> /etc/fstab

# Validate
cat /etc/fstab
# LABEL=cloudimg-rootfs	/	 ext4	defaults,discard	0 0
#/dev/xvdf /data/kafka xfs defaults 0 0

# reboot to test actions
reboot

# Check if the volumes are mounted
df -h
# Filesystem      Size  Used Avail Use% Mounted on
#udev            2.0G     0  2.0G   0% /dev
#tmpfs           396M  5.7M  390M   2% /run
#/dev/xvda1       20G  1.8G   18G  10% /
#tmpfs           2.0G     0  2.0G   0% /dev/shm
#tmpfs           5.0M     0  5.0M   0% /run/lock
#tmpfs           2.0G     0  2.0G   0% /sys/fs/cgroup
#/dev/loop0       94M   94M     0 100% /snap/core/8935
#/dev/loop1       94M   94M     0 100% /snap/core/9066
#/dev/loop2       18M   18M     0 100% /snap/amazon-ssm-agent/1566
#/dev/xvdf       2.0G   33M  2.0G   2% /data/kafka
#tmpfs           396M     0  396M   0% /run/user/1000


sudo service zookeeper start

# Validate
nc -vz zookeeper1 2181
