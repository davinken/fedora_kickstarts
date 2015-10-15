# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# |i|f|2|2|c|o|n|f|i|g|s|.|k|s|
# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+
# if22configs.ks
# In charge of copying over parametrized configuration files residing in
# the kickstart server (vega) under ./ksconfigsrepo

# Full path: vega:/export/scratch/linux/ks/fedora/ksconfigsrepo

# 24sep2015/David Ramirez

/usr/bin/wget https://vega.cse.tamu.edu/linux/ks/fedora/ksconfigsrepo/cfif22_bashrc -O /root/.bashrc
/usr/bin/wget https://vega.cse.tamu.edu/linux/ks/fedora/ksconfigsrepo/cfif22_nsswitchconf -O /etc/nsswitch.conf
# This breaks graphical desktop so leave out:
# /usr/bin/wget https://vega.cse.tamu.edu/linux/ks/fedora/ksconfigsrepo/cfif22_pamd_systemauthac -O /etc/pam.d/system-auth-ac
/usr/bin/wget https://vega.cse.tamu.edu/linux/ks/fedora/ksconfigsrepo/cfif22_yum_localfedorarepo -O /etc/yum.repos.d/local-fedora.repo
/usr/bin/wget https://vega.cse.tamu.edu/linux/ks/fedora/ksconfigsrepo/cfif22_yum_parasolrepo -O /etc/yum.repos.d/parasol.repo
/usr/bin/wget https://vega.cse.tamu.edu/linux/ks/fedora/ksconfigsrepo/cfif22_yum_cfenginerepo -O /etc/yum.repos.d/cfengine-community.repo
/usr/bin/wget https://vega.cse.tamu.edu/linux/ks/fedora/ksconfigsrepo/cfif22_dotforward_localuser -O /home/localuser/.forward
/usr/bin/wget https://vega.cse.tamu.edu/linux/ks/fedora/ksconfigsrepo/cfif22_localuser_bashrc -O /home/localuser/.bashrc


## EOF ##
