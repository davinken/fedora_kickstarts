###################################################################
# +-+-+-+-+-+-+-+-+-+-+-+-+
# |i|f|2|2|b|a|s|i|c|.|k|s|
# +--++-+-+-+-+-+-+-+-+-+-+
# if22basic.ks
# This is to be inserted into production kickstart for Fedora 22
# via an %include statement. 
# 23sep2015/David Ramirez
###################################################################

# System authorization information
auth --enableshadow --passalgo=sha512

# Use network installation (at this point TAMU yum.tamu.edu lacks F22).
url --url="http://mirrors.cat.pdx.edu/fedora/linux/releases/22/Workstation/x86_64/os/"

# Run the Setup Agent on first boot
firstboot --enable
ignoredisk --only-use=sda
# Keyboard layouts
keyboard --vckeymap=us --xlayouts='us'
# System language
lang en_US.UTF-8
# SELinux disabled:
selinux --disabled

# Network information (--nopiv6 no longer supported).
# Note: enp0s25 for Dell Optiplex 780...
network  --bootproto=dhcp --device=enp3s0 --activate
# Root password
rootpw --iscrypted $6$d1IOhhWJyb8Pk5G1$FOvjMsscxDhFnXwSvPzWYIq/oWJaP2ZhdLqLuoXsYlBt8D9RrT0OkOsT6s8dPI7aiP3nDR2kGAkWNGEoWv10h1


# System services. For servers we prefer to disable NetworkManager (replace
#                  by just network. ntp replaces newer chronyd.
services --disabled iptables, ip6tables
services --enabled NetworkManager
# System timezone
timezone America/Matamoros --ntpservers=ntp1.tamu.edu,ntp2.tamu.edu,ntp3.tamu.edu

group --name=localgroup --gid=27182
user --gid=27182 --groups= --homedir=/home/localuser --name=localuser --password=$6$d1IOhhWJyb8Pk5G1$FOvjMsscxDhFnXwSvPzWYIq/oWJaP2ZhdLqLuoXsYlBt8D9RrT0OkOsT6s8dPI7aiP3nDR2kGAkWNGEoWv10h1
 --iscrypted --uid=31415 --gecos="Local User"
# This will mark the License as agreed, avoids an extra click for it after 1st
# boot.
eula --agreed

# X Window System configuration information
xconfig  --startxonboot

## EOF ##
