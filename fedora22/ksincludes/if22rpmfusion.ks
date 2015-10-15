# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# |i|f|2|2|r|p|m|f|u|s|i|o|n|.|k|s|
# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# if22rpmfusion.ks
# 25sep2015/David Ramirez
echo "# THE AUXILIARY REPOSITORIES ##################################################"
echo "+-+-+-+-+-+-+-+-+-+"
echo "|R|P|M|f|u|s|i|o|n|"
echo "+-+-+-+-+-+-+-+-+-+"
rpm -ivh http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm
echo "###############################################################################"
# Add more external repositories as needed.... (atomic, elrepo etc).
# Reset dnf database again:
dnf clean all

## EOF ##
