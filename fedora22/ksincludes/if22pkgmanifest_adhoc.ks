# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# |i|f|2|2|p|k|g|m|a|n|i|f|e|s|t|_|a|d|h|o|c|.|k|s|
# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# if22pkgmanifest_adhoc.ks
# 25sep2015/ David Ramirez

# Declare cherry-picked packages that we want. This already may be overlapping
# the package groups defined in if22pkgmanifest_base.ks
# The packages are expected to be available from the official Fedora repos.
# So, for now, no exotic or home-grown packages.
#######################################
# Ad-hoc packages
#######################################
autofs
# No boost - We have our own:
# boost
# boost-devel
bzip2
bzip2-devel
cups
cups-devel
dbus-python
emacs
evince
foomatic
foomatic-db
foomatic-db-filesystem
foomatic-db-ppds
freeglut-devel
gcc-c++
gdm
ghostscript
git
glibc-headers
gnuplot
hdparm
ipa-client
ksh
keyutils
libjpeg-devel
libreoffice
libreoffice-opensymbol-fonts
libtool
libusb-devel
make
mc
mtools
net-snmp-devel
ntp
openmpi
openmpi-devel
openssl-devel
pax
pcsc-lite
perl-DBD-SQLite
perl-CGI
policycoreutils-gui
poppler-utils
portreserve
python
python-devel
qt-devel
qt3
redhat-lsb
redhat-lsb-compat
redhat-lsb-core
redhat-lsb-printing
rpm-build
rpmdevtools
sane-backends
sane-backends-devel
sane-frontends
screen
sendmail
sgpio
subversion
system-config-printer
system-config-printer-libs
systemtap-client
texlive
texlive-latex
valgrind
vim
vorbis-tools
xfsprogs
xorg-x11-apps
xorg-x11-server-Xnest
# Yum plug-ins that are desirable - but soon to be forgotten due to yum
# deprecation (replaced by dnf et all).
yum-protectbase
yum-priorities
xsane

## EOF ##
