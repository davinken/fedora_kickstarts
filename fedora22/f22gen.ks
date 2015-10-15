# f22gen.ks
#  _____        _                   ____  ____  
# |  ___|__  __| | ___  _ __ __ _  |___ \|___ \ 
# | |_ / _ \/ _` |/ _ \| '__/ _` |   __) | __) |
# |  _|  __/ (_| | (_) | | | (_| |  / __/ / __/ 
# |_|  \___|\__,_|\___/|_|  \__,_| |_____|_____|
#                                               
# 
# Kickstart file for Fedora 22 physical regular to big sizes. 64 bits.
# The OS (/) has 75 GB reserved; swap space is determined automatically.
# The rest is for /export. LVM is used.
# These are typically single-purpose workstations, with
# disks no larger # than 500 GB.
# (For larger disks we prefer to have a /export2 separate partition).
# No RAID considered here.

# 23sep2015/davidr - PARASOL LAB @ TAMU
# NOTE: Possible interruptions:
#           Disk name change from sda to vda (virtual environments)
#           Network device is no longer eth0, or even em1... crazy.
#           This may fail on multi-card systems!!!! The first one reponding
#           gets the rights...

# Refer to the %pre section at the end to see how the /ksincludes is mounted.

#####################
# Commands section:
#####################
%include /ksincludes/if22basic.ks
%include /ksincludes/if22partitioning_regular.ks

#####################
# Packages section:
#####################
%packages --ignoremissing
%include /ksincludes/if22pkgmanifest_base.ks
%include /ksincludes/if22pkgmanifest_adhoc.ks
%include /ksincludes/if22pkgexclusions.ks
%end

##################################
# %post section
##################################
%post --log=/tmp/ks-post-chroot.log
echo "######################################################"
echo "This is the regular (chroot) part of the post-install."
echo "######################################################"
%include /ksincludes/if22configs.ks
%include /ksincludes/if22ntp.ks
%include /ksincludes/if22rpmfusion.ks
%include /ksincludes/if22bru.ks
# Install & affiliate to CF3: (BOOTSTRAP DISABLE FOR NOW)
%include /ksincludes/if22cfengine3.ks
%include /ksincludes/if22anacondatail.ks

# Now dnf takes over old yum:
dnf clean
dnf -y upgrade

echo "  ____________________________________ "
echo " < Kickstart for Fedora 22 finished >"
echo "  ------------------------------------ "
echo "         \   ^__^"
echo "          \  (oo)\_______"
echo "             (__)\       )\/\ "
echo "                 ||----w |"
echo "                 ||     ||"
echo " "
%end

#####################
# %pre section:
#####################
# Makes extra KS configurations available via NFS shares from repo server vega.
%pre
echo "####################################"
echo "    %pre : pre-install component."
echo "####################################"
mkdir /ksincludes
mkdir /ksconfigsrepo
mount -t nfs -o nolock vega:/export/scratch/linux/ks/fedora/ksincludes /ksincludes
mount -t nfs -o nolock vega:/export/scratch/linux/ks/fedora/ksconfigsrepo /ksconfigsrepo
%end

## EOF ##
