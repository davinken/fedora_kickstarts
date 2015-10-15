# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# |i|f|2|2|a|n|a|c|o|n|d|a|t|a|i|l|.|k|s|
# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# if22anacondatail.ks
# 14oct2015/David Ramirez
# This sets policies for the passwords. Optional module.

%anaconda
pwpolicy root --minlen=8 --minquality=90 --strict --notempty
pwpolicy user --minlen=8 --minquality=90 --strict --notempty
pwpolicy luks --minlen=8 --minquality=90 --strict --notempty
%end
