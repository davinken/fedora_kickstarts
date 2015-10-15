# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# |i|f|2|2|p|k|g|e|x|c|l|u|s|i|o|n|s|.|k|s|
# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# if22pkgexclusions.ks
# 25sep2015/David Ramirez
# List the individual packages to be excluded from installation (overriding
# any default settings).
# This list is based on older versions so it may contain already non-existent
# packages.
# This is based on the similar file for CentOS 7. 

# Use:
#     rpm -qa --queryformat "%{NAME}\n"
# in order to list packages w/o version nor architecture.
# Still pending of a revision before releasing to production...

################################################################
# W A R N I N G    B U G     -  AS OF SEP 2015
# MOST PROBABLY, THIS COMPONENT WON'T WORK. THERE IS AN UNRESOLVED
# BUG IN F22 THAT PREVENTS KICKSTART FROM DESELECTING THE PACKAGES
# LISTED BELOW.
# NO ERROR IS FLAGGED, BUT THE LISTINGS ARE IGNORED.
################################################################

######################################
# E X C L U S I O N S
######################################
# Some findings from prototype - we don't want this stuff
# Exclude this stupid package that causes significant delays every time
# the user mistypes a command:
-PackageKit-command-not-found
# Apt collides with our needs/cfengine. It doesn't come by default but better
# prevent...
-apt 
# Chronyd new invention but we prefer to maintain ntp.
-chronyd
# mtools  MS-DOS tools deprecated @ Parasol.
# Wanted to remove this but it has many dependencies.
# -mtools
# festival does voice synthesis may be interesting... (not in the default)
-festival
-festival-lib
-festival-speechtools-libs
-festival-freebsoft-utils
-festvox-slt-arctic-hts
-orca
-speech-dispatcher

# Next entries freely added after examining a default F22 install and
# considered as not-needed (mostly exotic fonts).
-aajohan-comfortaa-fonts
-abattis-cantarell-fonts
-adobe-source-han-sans-cn-fonts
-adobe-source-han-sans-twhk-fonts
-google-android-emoji-fonts
-google-crosextra-caladea-fonts
-google-crosextra-carlito-fonts
-google-noto-fonts-common
-google-noto-sans-lisu-fonts
-google-noto-sans-mandaic-fonts
-google-noto-sans-tagalog-fonts
-google-noto-sans-tai-tham-fonts
-google-noto-sans-tai-viet-fonts
-jomolhari-fonts
-khmeros-base-fonts
-khmeros-fonts-common
-lklug-fonts
-lohit-assamese-fonts
-lohit-bengali-fonts
-lohit-devanagari-fonts
-lohit-gujarati-fonts
-lohit-gurmukhi-fonts
-lohit-kannada-fonts
-lohit-odia-fonts
-lohit-tamil-fonts
-lohit-telugu-fonts
-naver-nanum-fonts-common
-naver-nanum-gothic-fonts
-paktype-naskh-basic-fonts
-paratype-pt-sans-fonts
-sil-abyssinica-fonts
-sil-mingzat-fonts
-sil-nuosu-fonts
-sil-padauk-fonts
-smc-fonts-common
-smc-meera-fonts
-stix-fonts
-tabish-eeyek-fonts
-thai-scalable-fonts-common
-thai-scalable-waree-fonts
-urw-fonts
-vlgothic-fonts
