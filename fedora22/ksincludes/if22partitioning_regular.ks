############################################################################ 
# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# |i|f|2|2|p|a|r|t|i|t|i|o|n|i|n|g|_|r|e|g|u|l|a|r|.|k|s|
# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# if22partitioning_regular.ks
# 24sep2015/David Ramirez
# This sets up non-RAID LVM disk partitioning for a single disk, with the
# following parameters:
# -----------------------------------------
# /boot     500 MB     ext4
# /         75  GB     ext4
# swap      (automatic/recommended setting)
# /export   The rest of the disk.    ext4
# -----------------------------------------
# All partitions will be formatted.

# System bootloader configuration
bootloader --location=mbr --boot-drive=sda

##########################
# PARTITION DATA
##########################
# Partition clearing information
clearpart --all --initlabel --drives=sda
## Partitions / Logical volumes:
### boot (physical)
part /boot --fstype="ext4" --ondisk=sda --size=476 --label="lab_boot"
### The rest under LVM:
part pv.524 --fstype="lvmpv" --ondisk=sda --size=1 --grow
volgroup lab_fedora_vg --pesize=4096 pv.524
logvol /export  --fstype="ext4" --size=1 --grow --label="lab_export" --name=export --vgname=lab_fedora_vg
logvol /  --fstype="ext4" --size=65320 --label="lab_root" --name=root --vgname=lab_fedora_vg
logvol swap  --fstype="swap" --recommended --name=swap --vgname=lab_fedora_vg

## EOF ##
